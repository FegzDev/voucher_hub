import 'package:voucher_hub/database/database.dart';
import 'package:voucher_hub/product/data/local/model/local_product.dart';

extension DriftProductMapper on Product {
  LocalProduct toLocal() {
    return LocalProduct(
      code: code,
      name: name,
      imageUrl: imageUrl,
      description: description,
      currency: currency,
      minValue: minValue,
      maxValue: maxValue,
      denominations: denominations,
      redemptionDetails: redemptionDetails,
      countries: countries,
      stores: stores,
      categories: categories,
      validity: LocalProductValidity(type: validityType, value: validityValue),
      createdAt: createdAt,
      expiresAt: expiresAt,
    );
  }
}
