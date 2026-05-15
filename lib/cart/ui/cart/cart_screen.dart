import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:voucher_hub/cart/domain/model/cart.dart';
import 'package:voucher_hub/cart/ui/widget/cart_item_box.dart';
import 'package:voucher_hub/error_handling/domain/model/error_data.dart';
import 'package:voucher_hub/l10n/extension.dart';
import 'package:voucher_hub/navigation/route_paths.dart';
import 'package:voucher_hub/ui/screen_padding.dart';
import 'package:voucher_hub/ui/scrollable_sized_box.dart';
import 'package:voucher_hub/ui/voucher_hub_button.dart';

import 'cart_bloc.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(context.localizations.cart)),
      body: BlocConsumer<CartBloc, CartState>(
        listener: (context, state) {
          state.whenOrNull(
            cartItemFailure: (_, error) {
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text(error.message)));
            },
          );
        },
        builder: (context, state) {
          return RefreshIndicator.adaptive(
            onRefresh: () async {
              context.read<CartBloc>().add(const CartEvent.refreshCart());
            },
            notificationPredicate: (_) =>
                state.maybeMap(initial: (_) => false, orElse: () => true),
            child: state.maybeMap(
              loading: (_) => _loadingCartPage(),
              updating: (state) =>
                  _successCartPage(context, state.cart, isUpdating: true),
              success: (state) =>
                  _successCartPage(context, state.cart, isUpdating: false),
              empty: (_) => _emptyCartPage(),
              failure: (state) => _errorCartPage(state.error),
              cartItemFailure: (state) => state.cart != null
                  ? _successCartPage(context, state.cart!, isUpdating: false)
                  : _errorCartPage(state.error),
              orElse: () => _defaultCartPage(context),
            ),
          );
        },
      ),
    );
  }

  Widget _loadingCartPage() {
    return const ScreenPadding(
      child: Center(child: CircularProgressIndicator.adaptive()),
    );
  }

  Widget _successCartPage(
    BuildContext context,
    Cart cart, {
    required bool isUpdating,
  }) {
    return Column(
      spacing: 16,
      children: [
        if (isUpdating) const LinearProgressIndicator(),
        Expanded(
          child: ListView.separated(
            padding: ScreenPaddingDefaults.padding,
            separatorBuilder: (context, index) => const SizedBox(height: 16),
            itemCount: cart.items.length,
            itemBuilder: (context, index) {
              CartBloc bloc = context.read();
              final item = cart.items[index];

              return CartItemBox(
                item: item,
                loading: isUpdating,
                onDecrease: () {
                  if (isUpdating) return;
                  final quantity = item.quantity - 1;

                  if (quantity < 0) return;

                  bloc.add(
                    CartEvent.updateItem(
                      id: item.id,
                      amount: item.subtotal,
                      quantity: quantity,
                    ),
                  );
                },
                onIncrease: () {
                  if (isUpdating) return;
                  bloc.add(
                    CartEvent.updateItem(
                      id: item.id,
                      amount: item.subtotal,
                      quantity: item.quantity + 1,
                    ),
                  );
                },
                onRemove: () {
                  if (isUpdating) return;
                  bloc.add(CartEvent.removeItem(item.id));
                },
              );
            },
          ),
        ),
        Padding(
          padding: EdgeInsetsGeometry.only(
            left: ScreenPaddingDefaults.padding.horizontal,
            right: ScreenPaddingDefaults.padding.horizontal,
            bottom: ScreenPaddingDefaults.padding.vertical,
          ),
          child: _checkoutButton(
            onCheckout: isUpdating
                ? null
                : () => context.push(RoutePaths.checkout),
            text: context.localizations.checkout,
          ),
        ),
      ],
    );
  }

  Widget _checkoutButton({
    required VoidCallback? onCheckout,
    required String text,
  }) {
    return VoucherHubButton(
      onPressed: onCheckout,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 12,
        children: [const Icon(Icons.shopping_cart_checkout), Text(text)],
      ),
    );
  }

  Widget _emptyCartPage() {
    return ScrollableSizedBox(
      builder: (context) {
        return ScreenPadding(
          child: Center(child: Text(context.localizations.noCartItems)),
        );
      },
    );
  }

  Widget _errorCartPage(ErrorData data) {
    return ScrollableSizedBox(
      builder: (context) {
        return ScreenPadding(child: Center(child: Text(data.message)));
      },
    );
  }

  Widget _defaultCartPage(BuildContext context) {
    return ScrollableSizedBox(
      builder: (context) {
        return ScreenPadding(
          child: Center(child: Text(context.localizations.cart)),
        );
      },
    );
  }
}
