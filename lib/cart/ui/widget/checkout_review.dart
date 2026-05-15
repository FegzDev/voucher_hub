import 'package:flutter/material.dart';
import 'package:voucher_hub/cart/domain/model/cart_total.dart';
import 'package:voucher_hub/l10n/extension.dart';
import 'package:voucher_hub/ui/button_progress_indicator.dart';
import 'package:voucher_hub/ui/voucher_hub_button.dart';
import 'package:voucher_hub/util/amount_formatter.dart';

class CheckoutReview extends StatelessWidget {
  final VoidCallback onConfirm;
  final CartTotal total;
  final bool loading;

  const CheckoutReview({
    super.key,
    required this.onConfirm,
    required this.total,
    required this.loading,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        spacing: 24,
        children: [
          Text(
            context.localizations.checkout,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              border: Border.all(),
            ),
            padding: const EdgeInsets.all(16),
            child: Column(
              spacing: 16,
              children: [
                _cartTotalSummaryItem(
                  name: context.localizations.subtotal,
                  value: AmountFormatter.formatWithCurrency(
                    total.currency,
                    total.subtotal,
                  ),
                ),
                _cartTotalSummaryItem(
                  name: context.localizations.fees,
                  value: AmountFormatter.formatWithCurrency(
                    total.currency,
                    total.fees,
                  ),
                ),
                _cartTotalSummaryItem(
                  name: context.localizations.total,
                  value: AmountFormatter.formatWithCurrency(
                    total.currency,
                    total.total,
                  ),
                ),
              ],
            ),
          ),
          VoucherHubButton(
            onPressed: (loading || total.total <= 0) ? null : onConfirm,
            child: loading
                ? const ButtonProgressIndicator()
                : Text(context.localizations.confirm),
          ),
        ],
      ),
    );
  }

  Widget _cartTotalSummaryItem({required String name, required dynamic value}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      spacing: 16,
      children: [
        Expanded(
          flex: 3,
          child: Text(name, maxLines: 1, overflow: TextOverflow.ellipsis),
        ),
        Expanded(
          flex: 7,
          child: Text(
            value.toString(),
            textAlign: TextAlign.end,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
