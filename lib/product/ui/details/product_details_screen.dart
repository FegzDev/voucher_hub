import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:voucher_hub/cart/ui/add_item/add_cart_item_bloc.dart';
import 'package:voucher_hub/error_handling/domain/model/error_data.dart';
import 'package:voucher_hub/l10n/extension.dart';
import 'package:voucher_hub/product/domain/model/product.dart';
import 'package:voucher_hub/product/ui/details/product_details_bloc.dart';
import 'package:voucher_hub/product/ui/widget/product_image.dart';
import 'package:voucher_hub/ui/button_progress_indicator.dart';
import 'package:voucher_hub/ui/screen_padding.dart';
import 'package:voucher_hub/ui/scrollable_sized_box.dart';
import 'package:voucher_hub/ui/voucher_hub_button.dart';
import 'package:voucher_hub/ui/voucher_hub_text_form_field.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  late final GlobalKey<FormState> _formKey;
  double? _amount;
  late final TextEditingController _quantityController;
  late final TextEditingController _amountController;
  late final Function() _amountListener;

  @override
  void initState() {
    super.initState();
    _formKey = GlobalKey<FormState>();
    _quantityController = TextEditingController();
    _amountController = TextEditingController();
    _amountListener = () {
      setState(() {
        _amount = double.tryParse(_amountController.text);
      });
    };
    _amountController.addListener(_amountListener);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(context.localizations.product)),
      body: BlocListener<AddCartItemBloc, AddCartItemState>(
        listener: (context, state) {
          state.maybeWhen(
            success: (data) =>
                _showMaterialBanner(context.localizations.addedToCart),
            failure: (data) => _showMaterialBanner(data.message),
            orElse: () {},
          );
        },
        child: BlocBuilder<ProductDetailsBloc, ProductDetailsState>(
          builder: (context, state) {
            return RefreshIndicator.adaptive(
              onRefresh: () async {
                ProductDetailsBloc bloc = context.read();
                bloc.add(const ProductDetailsEvent.refreshProduct());
              },
              notificationPredicate: (_) => state.maybeMap(
                success: (_) => true,
                failure: (_) => true,
                orElse: () => false,
              ),
              child: state.maybeMap(
                loading: (_) => _loadingProductDetailsPage(),
                success: (state) =>
                    _successProductDetailsPage(context, state.product),
                failure: (state) => _errorProductDetailsPage(state.error),
                orElse: () => _defaultProductDetailsPage(context),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _loadingProductDetailsPage() {
    return const ScreenPadding(
      child: Center(child: CircularProgressIndicator.adaptive()),
    );
  }

  Widget _successProductDetailsPage(BuildContext context, Product product) {
    return ScrollableSizedBox(
      infiniteHeight: true,
      builder: (context) {
        return ScreenPadding(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _productImage(
                url: product.imageUrl,
                price: product.getPriceRangeAsString(),
              ),
              const SizedBox(height: 16),
              _nameText(product.name),
              const SizedBox(height: 12),
              _descriptionText(product.description),
              const SizedBox(height: 24),
              if (product.denominations.isNotEmpty) ...[
                _denominationsWrap(product.denominations),
                const SizedBox(height: 24),
              ],
              if (product.redemptionDetails.isNotEmpty) ...[
                _redemptionDetails(
                  context.localizations.redemptionDetails,
                  product.redemptionDetails,
                ),
                const SizedBox(height: 24),
              ],
              _addToCartForm(product.code, product.denominations.isEmpty),
            ],
          ),
        );
      },
    );
  }

  Widget _productImage({required String url, required String price}) {
    return AspectRatio(
      aspectRatio: 1.5,
      child: ProductImage(url: url, price: price),
    );
  }

  Widget _nameText(String name) {
    return Text(
      name,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
    );
  }

  Widget _descriptionText(String description) {
    return Text(
      description,
      style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
    );
  }

  Widget _denominationsWrap(List<double> denominations) {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: denominations.map((denomination) {
        return ChoiceChip(
          selected: _amount == denomination,
          onSelected: (selected) {
            setState(() {
              if (selected) {
                _amount = denomination;
              } else {
                _amount = null;
              }
            });
          },
          label: Text(denomination.toString()),
        );
      }).toList(),
    );
  }

  Widget _redemptionDetails(String title, List<String> details) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
        ),
        const SizedBox(height: 4),
        ...details.map(
          (detail) => Text(
            detail,
            style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
          ),
        ),
      ],
    );
  }

  Widget _addToCartForm(String productCode, bool showAmountTextField) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          if (showAmountTextField) ...[
            VoucherHubTextFormField(
              controller: _amountController,
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              hintText: context.localizations.amount,
            ),
            const SizedBox(height: 16),
          ],
          VoucherHubTextFormField(
            controller: _quantityController,
            keyboardType: TextInputType.number,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            hintText: context.localizations.quantity,
          ),
          const SizedBox(height: 16),
          _addToCartButton(
            onPressed: () {
              _hideMaterialBanner();
              _submitForm(productCode);
            },
          ),
        ],
      ),
    );
  }

  Widget _addToCartButton({required VoidCallback onPressed}) {
    return ListenableBuilder(
      listenable: Listenable.merge([_amountController, _quantityController]),
      builder: (context, _) {
        AddCartItemBloc bloc = context.watch();

        final canAddToCart = bloc.state.maybeMap(
          loading: (_) => false,
          orElse: () {
            final amount = _amount ?? 0;
            final quantity = int.tryParse(_quantityController.text.trim()) ?? 0;
            return amount > 0 && quantity > 0;
          },
        );

        return VoucherHubButton(
          onPressed: canAddToCart ? onPressed : null,
          child: bloc.state.maybeMap(
            loading: (_) => const ButtonProgressIndicator(),
            orElse: () {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 12,
                children: [
                  const Icon(Icons.add_shopping_cart),
                  Text(context.localizations.addToCart),
                ],
              );
            },
          ),
        );
      },
    );
  }

  void _submitForm(String productCode) {
    final isFormValid = _formKey.currentState?.validate();

    if (isFormValid == true) {
      final amount = _amount ?? 0;
      final quantity = int.tryParse(_quantityController.text.trim()) ?? 0;

      if (amount <= 0 || quantity <= 0) return;

      AddCartItemBloc bloc = context.read();

      bloc.add(
        AddCartItemEvent.addItem(
          productCode: productCode,
          amount: amount.toDouble(),
          quantity: quantity,
        ),
      );
    }
  }

  void _showMaterialBanner(String message) {
    ScaffoldMessenger.of(context).showMaterialBanner(
      MaterialBanner(
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () => _hideMaterialBanner(),
            child: Text(context.localizations.dismiss),
          ),
        ],
      ),
    );
  }

  void _hideMaterialBanner() {
    ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
  }

  Widget _errorProductDetailsPage(ErrorData data) {
    return ScrollableSizedBox(
      builder: (context) {
        return ScreenPadding(child: Center(child: Text(data.message)));
      },
    );
  }

  Widget _defaultProductDetailsPage(BuildContext context) {
    return ScrollableSizedBox(
      builder: (context) {
        return ScreenPadding(
          child: Center(child: Text(context.localizations.product)),
        );
      },
    );
  }

  @override
  void dispose() {
    _formKey.currentState?.dispose();
    _quantityController.dispose();
    _amountController.removeListener(_amountListener);
    _amountController.dispose();
    super.dispose();
  }
}
