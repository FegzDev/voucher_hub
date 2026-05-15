import 'package:voucher_hub/product/data/local/model/local_product.dart';
import 'package:voucher_hub/product/data/remote/response/product_response.dart';
import 'package:voucher_hub/product/domain/model/product.dart';

extension ProductResponseMapper on ProductResponse {
  LocalProduct toLocal(DateTime createdAt, DateTime expiresAt) {
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
      validity: validity.toLocal(),
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

extension ProductValidityResponseMapper on ProductValidityResponse {
  LocalProductValidity toLocal() {
    return LocalProductValidity(type: type, value: value);
  }

  ProductValidity toDomain() => ProductValidity(type: type, value: value);
}
