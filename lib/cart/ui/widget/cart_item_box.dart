import 'package:flutter/material.dart';
import 'package:voucher_hub/cart/domain/model/cart.dart';
import 'package:voucher_hub/product/ui/widget/product_image.dart';
import 'package:voucher_hub/util/amount_formatter.dart';

class CartItemBox extends StatelessWidget {
  final CartItem item;
  final bool loading;
  final VoidCallback? onDecrease;
  final VoidCallback? onIncrease;
  final VoidCallback? onRemove;

  const CartItemBox({
    super.key,
    required this.item,
    required this.loading,
    required this.onDecrease,
    required this.onIncrease,
    required this.onRemove,
  });

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            width: 96,
            child: AspectRatio(
              aspectRatio: 1.5,
              child: ProductImage(
                url: item.productImageUrl,
                price: AmountFormatter.formatWithCurrency(
                  item.currency,
                  item.subtotal,
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
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.productName,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  item.quantity.toString(),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            onPressed: loading ? null : onDecrease,
            icon: const Icon(Icons.remove),
          ),
          IconButton(
            onPressed: loading ? null : onIncrease,
            icon: const Icon(Icons.add),
          ),
          IconButton(
            onPressed: loading ? null : onRemove,
            icon: const Icon(Icons.delete_outline_outlined),
          ),
        ],
      ),
    );
  }
}
