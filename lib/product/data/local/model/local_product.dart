final class LocalProduct {
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
  final LocalProductValidity validity;
  final DateTime createdAt;
  final DateTime expiresAt;

  LocalProduct({
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
    required this.createdAt,
    required this.expiresAt,
  });
}

final class LocalProductValidity {
  final String type;
  final int value;

  LocalProductValidity({required this.type, required this.value});
}
