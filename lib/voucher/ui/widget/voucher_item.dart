import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:voucher_hub/product/ui/widget/product_image.dart';
import 'package:voucher_hub/util/amount_formatter.dart';
import 'package:voucher_hub/voucher/domain/model/voucher.dart';

class VoucherItem extends StatelessWidget {
  final VoidCallback onPressed;
  final Voucher voucher;

  const VoucherItem({
    super.key,
    required this.onPressed,
    required this.voucher,
  });

  @override
  Widget build(BuildContext context) {
    final dateFormat = DateFormat('MMM d, yyyy');
    final createdAt = dateFormat.format(voucher.createdAtUtc.toLocal());
    final expiresAt = dateFormat.format(voucher.expiryDate.toLocal());

    return GestureDetector(
      onTap: onPressed,
      child: IntrinsicHeight(
        child: Row(
          spacing: 8,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              width: 96,
              child: AspectRatio(
                aspectRatio: 1.5,
                child: ProductImage(
                  url: voucher.productImageUrl,
                  price: AmountFormatter.formatWithCurrency(
                    voucher.currency,
                    voucher.amount,
                  ),
                  priceTextStyle: const TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w200,
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.circular(8),
                  priceBadgeRadius: BorderRadius.circular(6),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  voucher.productName,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  '$createdAt - $expiresAt',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
