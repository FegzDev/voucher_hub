import 'package:flutter/material.dart';
import 'package:voucher_hub/product/domain/model/product.dart';
import 'package:voucher_hub/product/ui/widget/product_image.dart';

class ProductItem extends StatelessWidget {
  final VoidCallback onPressed;
  final Product product;

  const ProductItem({
    super.key,
    required this.onPressed,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ProductImage(
              url: product.imageUrl,
              price: product.getPriceRangeAsString(),
            ),
          ),
          const SizedBox(height: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                flex: 7,
                child: Text(
                  product.name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(width: 4),
              Flexible(
                flex: 3,
                child: Text(
                  product.countries.join('|'),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
