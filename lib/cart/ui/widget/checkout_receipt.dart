import 'package:flutter/material.dart';
import 'package:voucher_hub/cart/domain/model/checkout.dart';
import 'package:voucher_hub/l10n/extension.dart';
import 'package:voucher_hub/ui/voucher_hub_button.dart';
import 'package:voucher_hub/util/amount_formatter.dart';

class CheckoutReceipt extends StatelessWidget {
  final VoidCallback onDone;
  final Checkout checkout;

  const CheckoutReceipt({
    super.key,
    required this.onDone,
    required this.checkout,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        spacing: 24,
        children: [
          Text(
            checkout.status,
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
                _checkoutItem(
                  name: context.localizations.reference,
                  value: checkout.paymentReference,
                ),
                _checkoutItem(
                  name: context.localizations.vouchers,
                  value: checkout.vouchers.length,
                ),
                _checkoutItem(
                  name: context.localizations.total,
                  value: AmountFormatter.formatWithCurrency(
                    checkout.currency,
                    checkout.totalAmount,
                  ),
                ),
              ],
            ),
          ),
          VoucherHubButton(
            onPressed: onDone,
            child: Text(context.localizations.done),
          ),
        ],
      ),
    );
  }

  Widget _checkoutItem({required String name, required dynamic value}) {
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
