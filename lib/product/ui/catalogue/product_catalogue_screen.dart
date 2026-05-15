import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:voucher_hub/error_handling/domain/model/error_data.dart';
import 'package:voucher_hub/l10n/extension.dart';
import 'package:voucher_hub/navigation/route_paths.dart';
import 'package:voucher_hub/product/domain/model/product.dart';
import 'package:voucher_hub/product/ui/catalogue/product_catalogue_bloc.dart';
import 'package:voucher_hub/product/ui/widget/product_item.dart';
import 'package:voucher_hub/ui/screen_padding.dart';
import 'package:voucher_hub/ui/scrollable_sized_box.dart';

class ProductCatalogueScreen extends StatelessWidget {
  const ProductCatalogueScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductCatalogueBloc, ProductCatalogueState>(
      builder: (context, state) {
        return RefreshIndicator.adaptive(
          onRefresh: () async {
            ProductCatalogueBloc bloc = context.read();
            bloc.add(const ProductCatalogueEvent.refreshProducts());
          },
          notificationPredicate: (_) => state.maybeMap(
            success: (_) => true,
            empty: (_) => true,
            failure: (_) => true,
            orElse: () => false,
          ),
          child: state.maybeMap(
            loading: (_) => _loadingProductCataloguePage(),
            success: (state) => _successProductCataloguePage(state.products),
            empty: (_) => _emptyProductCataloguePage(),
            failure: (state) => _errorProductCataloguePage(state.error),
            orElse: () => _defaultProductCataloguePage(context),
          ),
        );
      },
    );
  }

  Widget _loadingProductCataloguePage() {
    return const ScreenPadding(
      child: Center(child: CircularProgressIndicator.adaptive()),
    );
  }

  Widget _successProductCataloguePage(List<Product> products) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        childAspectRatio: 1.25,
      ),
      padding: ScreenPaddingDefaults.padding,
      itemCount: products.length,
      itemBuilder: (context, index) {
        final product = products[index];

        return ProductItem(
          onPressed: () => {
            context.push(RoutePaths.productDetails, extra: product.code),
          },
          product: product,
        );
      },
    );
  }

  Widget _emptyProductCataloguePage() {
    return ScrollableSizedBox(
      builder: (context) {
        return ScreenPadding(
          child: Center(child: Text(context.localizations.noProducts)),
        );
      },
    );
  }

  Widget _errorProductCataloguePage(ErrorData data) {
    return ScrollableSizedBox(
      builder: (context) {
        return ScreenPadding(child: Center(child: Text(data.message)));
      },
    );
  }

  Widget _defaultProductCataloguePage(BuildContext context) {
    return ScrollableSizedBox(
      builder: (context) {
        return ScreenPadding(
          child: Center(child: Text(context.localizations.products)),
        );
      },
    );
  }
}
