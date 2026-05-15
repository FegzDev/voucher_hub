import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:voucher_hub/error_handling/domain/model/error_data.dart';
import 'package:voucher_hub/l10n/extension.dart';
import 'package:voucher_hub/product/ui/widget/product_image.dart';
import 'package:voucher_hub/ui/screen_padding.dart';
import 'package:voucher_hub/ui/scrollable_sized_box.dart';
import 'package:voucher_hub/util/amount_formatter.dart';
import 'package:voucher_hub/voucher/domain/model/voucher.dart';
import 'package:voucher_hub/voucher/ui/details/voucher_details_bloc.dart';

class VoucherDetailsScreen extends StatelessWidget {
  const VoucherDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(context.localizations.voucher)),
      body: BlocBuilder<VoucherDetailsBloc, VoucherDetailsState>(
        builder: (context, state) {
          return RefreshIndicator.adaptive(
            onRefresh: () async {
              VoucherDetailsBloc bloc = context.read();
              bloc.add(const VoucherDetailsEvent.refreshVoucher());
            },
            notificationPredicate: (_) => state.maybeMap(
              success: (_) => true,
              failure: (_) => true,
              orElse: () => false,
            ),
            child: state.maybeMap(
              loading: (_) => _loadingVoucherDetailsPage(),
              success: (state) => _successVoucherDetailsPage(state.voucher),
              failure: (state) => _errorVoucherDetailsPage(state.error),
              orElse: () => _defaultVoucherDetailsPage(context),
            ),
          );
        },
      ),
    );
  }

  Widget _loadingVoucherDetailsPage() {
    return const ScreenPadding(
      child: Center(child: CircularProgressIndicator.adaptive()),
    );
  }

  Widget _successVoucherDetailsPage(Voucher voucher) {
    final dateFormat = DateFormat('MMM d, yyyy');
    final expiryDate = dateFormat.format(voucher.expiryDate.toLocal());

    return ScrollableSizedBox(
      builder: (context) {
        return ScreenPadding(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _productImage(
                url: voucher.productImageUrl,
                price: AmountFormatter.formatWithCurrency(
                  voucher.currency,
                  voucher.amount,
                ),
              ),
              const SizedBox(height: 16),
              _voucherInfo(
                name: context.localizations.code,
                value: voucher.voucherCode,
              ),
              const SizedBox(height: 16),
              if (voucher.pin.trim().isNotEmpty)
                _voucherInfo(
                  name: context.localizations.pin,
                  value: voucher.pin,
                ),
              const SizedBox(height: 16),
              if (voucher.serialNumber.trim().isNotEmpty)
                _voucherInfo(
                  name: context.localizations.serialNumber,
                  value: voucher.serialNumber,
                ),
              const SizedBox(height: 16),
              _voucherInfo(
                name: context.localizations.expiryDate,
                value: expiryDate,
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _productImage({required String url, required String price}) {
    return AspectRatio(
      aspectRatio: 1.5,
      child: ProductImage(
        url: url,
        price: price,
        priceAlignment: const Alignment(0.95, 0.95),
        priceTextStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w300,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _voucherInfo({required String name, required String value}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      spacing: 16,
      children: [
        Flexible(
          flex: 4,
          child: Text(
            name,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
          ),
        ),
        Flexible(
          flex: 6,
          child: Text(
            value,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
          ),
        ),
      ],
    );
  }

  Widget _errorVoucherDetailsPage(ErrorData data) {
    return ScrollableSizedBox(
      builder: (context) {
        return ScreenPadding(child: Center(child: Text(data.message)));
      },
    );
  }

  Widget _defaultVoucherDetailsPage(BuildContext context) {
    return ScrollableSizedBox(
      builder: (context) {
        return ScreenPadding(
          child: Center(child: Text(context.localizations.voucher)),
        );
      },
    );
  }
}
