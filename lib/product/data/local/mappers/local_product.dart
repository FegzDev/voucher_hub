import 'package:voucher_hub/database/database.dart' hide Product;
import 'package:voucher_hub/product/data/local/model/local_product.dart';
import 'package:voucher_hub/product/domain/model/product.dart';

extension LocalProductMapper on LocalProduct {
  ProductsCompanion toCompanion() {
    return ProductsCompanion.insert(
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
      validityType: validity.type,
      validityValue: validity.value,
      createdAt: createdAt,
      expiresAt: expiresAt,
    );
  }

  Product toDomain() {
    return Product(
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
      validity: validity.toDomain(),
    );
  }
}

extension LocalProductValidityMapper on LocalProductValidity {
  ProductValidity toDomain() => ProductValidity(type: type, value: value);
}
