import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:voucher_hub/cart/domain/model/cart_total.dart';
import 'package:voucher_hub/cart/ui/cart/cart_bloc.dart';
import 'package:voucher_hub/cart/ui/checkout/checkout_bloc.dart';
import 'package:voucher_hub/cart/ui/total/cart_total_bloc.dart';
import 'package:voucher_hub/cart/ui/widget/checkout_receipt.dart';
import 'package:voucher_hub/cart/ui/widget/checkout_review.dart';
import 'package:voucher_hub/error_handling/domain/model/error_data.dart';
import 'package:voucher_hub/l10n/extension.dart';
import 'package:voucher_hub/ui/screen_padding.dart';
import 'package:voucher_hub/ui/scrollable_sized_box.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(context.localizations.checkout)),
      body: BlocListener<CheckoutBloc, CheckoutState>(
        listener: (context, state) {
          state.whenOrNull(
            success: (_) {
              CartBloc bloc = context.read();
              bloc.add(const CartEvent.refreshCart());
            },
            failure: (error) {
              _showMaterialBanner(context, error.message);
            },
          );
        },
        child: BlocBuilder<CartTotalBloc, CartTotalState>(
          builder: (context, state) {
            return RefreshIndicator.adaptive(
              onRefresh: () async {
                CartTotalBloc bloc = context.read();
                bloc.add(const CartTotalEvent.refreshTotal());
              },
              notificationPredicate: (_) => state.maybeMap(
                success: (_) => true,
                failure: (_) => true,
                orElse: () => false,
              ),
              child: state.maybeMap(
                loading: (_) => _loadingCartTotalPage(),
                success: (state) => _successCartTotalPage(state.total),
                failure: (state) => _errorCartTotalPage(state.error),
                orElse: () => _defaultCartTotalPage(context),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _loadingCartTotalPage() {
    return const ScreenPadding(
      child: Center(child: CircularProgressIndicator.adaptive()),
    );
  }

  Widget _successCartTotalPage(CartTotal total) {
    return ScrollableSizedBox(
      builder: (context) {
        return ScreenPadding(
          child: Center(
            child: BlocBuilder<CheckoutBloc, CheckoutState>(
              builder: (context, state) {
                return state.maybeMap(
                  success: (state) {
                    return CheckoutReceipt(
                      onDone: () => context.pop(),
                      checkout: state.checkout,
                    );
                  },
                  orElse: () {
                    return CheckoutReview(
                      onConfirm: () {
                        CheckoutBloc bloc = context.read();
                        bloc.add(const CheckoutEvent.confirmCheckout());
                      },
                      total: total,
                      loading: state.maybeMap(
                        loading: (_) => true,
                        orElse: () => false,
                      ),
                    );
                  },
                );
              },
            ),
          ),
        );
      },
    );
  }

  void _showMaterialBanner(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showMaterialBanner(
      MaterialBanner(
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () => _hideMaterialBanner(context),
            child: Text(context.localizations.dismiss),
          ),
        ],
      ),
    );
  }

  void _hideMaterialBanner(BuildContext context) {
    ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
  }

  Widget _errorCartTotalPage(ErrorData data) {
    return ScrollableSizedBox(
      builder: (context) {
        return ScreenPadding(child: Center(child: Text(data.message)));
      },
    );
  }

  Widget _defaultCartTotalPage(BuildContext context) {
    return ScrollableSizedBox(
      builder: (context) {
        return ScreenPadding(
          child: Center(child: Text(context.localizations.checkout)),
        );
      },
    );
  }
}
