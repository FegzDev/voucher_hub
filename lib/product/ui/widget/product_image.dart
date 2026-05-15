import 'package:flutter/material.dart';

class ProductImage extends StatelessWidget {
  final String url;
  final String? price;
  final Alignment? priceAlignment;
  final TextStyle? priceTextStyle;
  final EdgeInsetsGeometry? pricePadding;
  final BorderRadiusGeometry? borderRadius;
  final BorderRadiusGeometry? priceBadgeRadius;

  const ProductImage({
    super.key,
    required this.url,
    this.price,
    this.priceAlignment,
    this.priceTextStyle,
    this.pricePadding,
    this.priceBadgeRadius,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: priceAlignment ?? const Alignment(0.85, 0.85),
      decoration: BoxDecoration(
        borderRadius: borderRadius ?? BorderRadius.circular(16),
        image: DecorationImage(image: NetworkImage(url), fit: BoxFit.cover),
      ),
      child: Container(
        padding:
            pricePadding ??
            const EdgeInsets.symmetric(horizontal: 6, vertical: 3),
        decoration: BoxDecoration(
          borderRadius: priceBadgeRadius ?? BorderRadius.circular(8),
          gradient: LinearGradient(
            colors: [
              Colors.black.withValues(alpha: 0.25),
              Colors.black.withValues(alpha: 0.5),
            ],
          ),
        ),
        child: price == null
            ? null
            : Text(
                price!,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style:
                    priceTextStyle ??
                    const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                      color: Colors.white,
                    ),
              ),
      ),
    );
  }
}
