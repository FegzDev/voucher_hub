import 'package:voucher_hub/util/amount_formatter.dart';

final class Product {
  final String code;
  final String name;
  final String imageUrl;
  final String description;
  final String currency;
  final double minValue;
  final double maxValue;
  final List<double> denominations;
  final List<String> redemptionDetails;
  final List<String> countries;
  final List<String> stores;
  final List<String> categories;
  final ProductValidity validity;

  Product({
    required this.code,
    required this.name,
    required this.imageUrl,
    required this.description,
    required this.currency,
    required this.minValue,
    required this.maxValue,
    required this.denominations,
    required this.redemptionDetails,
    required this.countries,
    required this.stores,
    required this.categories,
    required this.validity,
  });
}

final class ProductValidity {
  final String type;
  final int value;

  ProductValidity({required this.type, required this.value});
}

extension ProductExtension on Product {
  ({double min, double max}) getPriceRange() {
    final minPrice = denominations.firstOrNull ?? minValue;
    final maxPrice = denominations.lastOrNull ?? maxValue;
    return (min: minPrice, max: maxPrice);
  }

  String getPriceRangeAsString() {
    final range = getPriceRange();

    if (range.max == 0) {
      return AmountFormatter.formatWithCurrency(currency, range.min);
    } else {
      final formattedMin = AmountFormatter.formatWithCurrency(
        currency,
        range.min,
      );

      final formattedMax = AmountFormatter.formatWithCurrency(
        currency,
        range.max,
      );

      return '$formattedMin-$formattedMax';
    }
  }
}
