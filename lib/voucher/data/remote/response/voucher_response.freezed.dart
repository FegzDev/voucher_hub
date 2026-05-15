// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'voucher_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VoucherResponse {

 int get id; int get orderId; String get productCode; String get productName; String get productImageUrl; double get amount; String get currency; String get voucherCode; String get pin; String get serialNumber; String get expiryDate; String get suregiftsVoucherId; String get suregiftsOrderId; String get createdAtUtc;
/// Create a copy of VoucherResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VoucherResponseCopyWith<VoucherResponse> get copyWith => _$VoucherResponseCopyWithImpl<VoucherResponse>(this as VoucherResponse, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VoucherResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.productCode, productCode) || other.productCode == productCode)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.productImageUrl, productImageUrl) || other.productImageUrl == productImageUrl)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.voucherCode, voucherCode) || other.voucherCode == voucherCode)&&(identical(other.pin, pin) || other.pin == pin)&&(identical(other.serialNumber, serialNumber) || other.serialNumber == serialNumber)&&(identical(other.expiryDate, expiryDate) || other.expiryDate == expiryDate)&&(identical(other.suregiftsVoucherId, suregiftsVoucherId) || other.suregiftsVoucherId == suregiftsVoucherId)&&(identical(other.suregiftsOrderId, suregiftsOrderId) || other.suregiftsOrderId == suregiftsOrderId)&&(identical(other.createdAtUtc, createdAtUtc) || other.createdAtUtc == createdAtUtc));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,orderId,productCode,productName,productImageUrl,amount,currency,voucherCode,pin,serialNumber,expiryDate,suregiftsVoucherId,suregiftsOrderId,createdAtUtc);

@override
String toString() {
  return 'VoucherResponse(id: $id, orderId: $orderId, productCode: $productCode, productName: $productName, productImageUrl: $productImageUrl, amount: $amount, currency: $currency, voucherCode: $voucherCode, pin: $pin, serialNumber: $serialNumber, expiryDate: $expiryDate, suregiftsVoucherId: $suregiftsVoucherId, suregiftsOrderId: $suregiftsOrderId, createdAtUtc: $createdAtUtc)';
}


}

/// @nodoc
abstract mixin class $VoucherResponseCopyWith<$Res>  {
  factory $VoucherResponseCopyWith(VoucherResponse value, $Res Function(VoucherResponse) _then) = _$VoucherResponseCopyWithImpl;
@useResult
$Res call({
 int id, int orderId, String productCode, String productName, String productImageUrl, double amount, String currency, String voucherCode, String pin, String serialNumber, String expiryDate, String suregiftsVoucherId, String suregiftsOrderId, String createdAtUtc
});




}
/// @nodoc
class _$VoucherResponseCopyWithImpl<$Res>
    implements $VoucherResponseCopyWith<$Res> {
  _$VoucherResponseCopyWithImpl(this._self, this._then);

  final VoucherResponse _self;
  final $Res Function(VoucherResponse) _then;

/// Create a copy of VoucherResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? orderId = null,Object? productCode = null,Object? productName = null,Object? productImageUrl = null,Object? amount = null,Object? currency = null,Object? voucherCode = null,Object? pin = null,Object? serialNumber = null,Object? expiryDate = null,Object? suregiftsVoucherId = null,Object? suregiftsOrderId = null,Object? createdAtUtc = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as int,productCode: null == productCode ? _self.productCode : productCode // ignore: cast_nullable_to_non_nullable
as String,productName: null == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String,productImageUrl: null == productImageUrl ? _self.productImageUrl : productImageUrl // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,voucherCode: null == voucherCode ? _self.voucherCode : voucherCode // ignore: cast_nullable_to_non_nullable
as String,pin: null == pin ? _self.pin : pin // ignore: cast_nullable_to_non_nullable
as String,serialNumber: null == serialNumber ? _self.serialNumber : serialNumber // ignore: cast_nullable_to_non_nullable
as String,expiryDate: null == expiryDate ? _self.expiryDate : expiryDate // ignore: cast_nullable_to_non_nullable
as String,suregiftsVoucherId: null == suregiftsVoucherId ? _self.suregiftsVoucherId : suregiftsVoucherId // ignore: cast_nullable_to_non_nullable
as String,suregiftsOrderId: null == suregiftsOrderId ? _self.suregiftsOrderId : suregiftsOrderId // ignore: cast_nullable_to_non_nullable
as String,createdAtUtc: null == createdAtUtc ? _self.createdAtUtc : createdAtUtc // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [VoucherResponse].
extension VoucherResponsePatterns on VoucherResponse {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VoucherResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VoucherResponse() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VoucherResponse value)  $default,){
final _that = this;
switch (_that) {
case _VoucherResponse():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VoucherResponse value)?  $default,){
final _that = this;
switch (_that) {
case _VoucherResponse() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int orderId,  String productCode,  String productName,  String productImageUrl,  double amount,  String currency,  String voucherCode,  String pin,  String serialNumber,  String expiryDate,  String suregiftsVoucherId,  String suregiftsOrderId,  String createdAtUtc)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VoucherResponse() when $default != null:
return $default(_that.id,_that.orderId,_that.productCode,_that.productName,_that.productImageUrl,_that.amount,_that.currency,_that.voucherCode,_that.pin,_that.serialNumber,_that.expiryDate,_that.suregiftsVoucherId,_that.suregiftsOrderId,_that.createdAtUtc);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int orderId,  String productCode,  String productName,  String productImageUrl,  double amount,  String currency,  String voucherCode,  String pin,  String serialNumber,  String expiryDate,  String suregiftsVoucherId,  String suregiftsOrderId,  String createdAtUtc)  $default,) {final _that = this;
switch (_that) {
case _VoucherResponse():
return $default(_that.id,_that.orderId,_that.productCode,_that.productName,_that.productImageUrl,_that.amount,_that.currency,_that.voucherCode,_that.pin,_that.serialNumber,_that.expiryDate,_that.suregiftsVoucherId,_that.suregiftsOrderId,_that.createdAtUtc);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int orderId,  String productCode,  String productName,  String productImageUrl,  double amount,  String currency,  String voucherCode,  String pin,  String serialNumber,  String expiryDate,  String suregiftsVoucherId,  String suregiftsOrderId,  String createdAtUtc)?  $default,) {final _that = this;
switch (_that) {
case _VoucherResponse() when $default != null:
return $default(_that.id,_that.orderId,_that.productCode,_that.productName,_that.productImageUrl,_that.amount,_that.currency,_that.voucherCode,_that.pin,_that.serialNumber,_that.expiryDate,_that.suregiftsVoucherId,_that.suregiftsOrderId,_that.createdAtUtc);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(createToJson: false)

class _VoucherResponse implements VoucherResponse {
  const _VoucherResponse({required this.id, required this.orderId, required this.productCode, required this.productName, required this.productImageUrl, required this.amount, required this.currency, required this.voucherCode, required this.pin, required this.serialNumber, required this.expiryDate, required this.suregiftsVoucherId, required this.suregiftsOrderId, required this.createdAtUtc});
  factory _VoucherResponse.fromJson(Map<String, dynamic> json) => _$VoucherResponseFromJson(json);

@override final  int id;
@override final  int orderId;
@override final  String productCode;
@override final  String productName;
@override final  String productImageUrl;
@override final  double amount;
@override final  String currency;
@override final  String voucherCode;
@override final  String pin;
@override final  String serialNumber;
@override final  String expiryDate;
@override final  String suregiftsVoucherId;
@override final  String suregiftsOrderId;
@override final  String createdAtUtc;

/// Create a copy of VoucherResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VoucherResponseCopyWith<_VoucherResponse> get copyWith => __$VoucherResponseCopyWithImpl<_VoucherResponse>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VoucherResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.productCode, productCode) || other.productCode == productCode)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.productImageUrl, productImageUrl) || other.productImageUrl == productImageUrl)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.voucherCode, voucherCode) || other.voucherCode == voucherCode)&&(identical(other.pin, pin) || other.pin == pin)&&(identical(other.serialNumber, serialNumber) || other.serialNumber == serialNumber)&&(identical(other.expiryDate, expiryDate) || other.expiryDate == expiryDate)&&(identical(other.suregiftsVoucherId, suregiftsVoucherId) || other.suregiftsVoucherId == suregiftsVoucherId)&&(identical(other.suregiftsOrderId, suregiftsOrderId) || other.suregiftsOrderId == suregiftsOrderId)&&(identical(other.createdAtUtc, createdAtUtc) || other.createdAtUtc == createdAtUtc));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,orderId,productCode,productName,productImageUrl,amount,currency,voucherCode,pin,serialNumber,expiryDate,suregiftsVoucherId,suregiftsOrderId,createdAtUtc);

@override
String toString() {
  return 'VoucherResponse(id: $id, orderId: $orderId, productCode: $productCode, productName: $productName, productImageUrl: $productImageUrl, amount: $amount, currency: $currency, voucherCode: $voucherCode, pin: $pin, serialNumber: $serialNumber, expiryDate: $expiryDate, suregiftsVoucherId: $suregiftsVoucherId, suregiftsOrderId: $suregiftsOrderId, createdAtUtc: $createdAtUtc)';
}


}

/// @nodoc
abstract mixin class _$VoucherResponseCopyWith<$Res> implements $VoucherResponseCopyWith<$Res> {
  factory _$VoucherResponseCopyWith(_VoucherResponse value, $Res Function(_VoucherResponse) _then) = __$VoucherResponseCopyWithImpl;
@override @useResult
$Res call({
 int id, int orderId, String productCode, String productName, String productImageUrl, double amount, String currency, String voucherCode, String pin, String serialNumber, String expiryDate, String suregiftsVoucherId, String suregiftsOrderId, String createdAtUtc
});




}
/// @nodoc
class __$VoucherResponseCopyWithImpl<$Res>
    implements _$VoucherResponseCopyWith<$Res> {
  __$VoucherResponseCopyWithImpl(this._self, this._then);

  final _VoucherResponse _self;
  final $Res Function(_VoucherResponse) _then;

/// Create a copy of VoucherResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? orderId = null,Object? productCode = null,Object? productName = null,Object? productImageUrl = null,Object? amount = null,Object? currency = null,Object? voucherCode = null,Object? pin = null,Object? serialNumber = null,Object? expiryDate = null,Object? suregiftsVoucherId = null,Object? suregiftsOrderId = null,Object? createdAtUtc = null,}) {
  return _then(_VoucherResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as int,productCode: null == productCode ? _self.productCode : productCode // ignore: cast_nullable_to_non_nullable
as String,productName: null == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String,productImageUrl: null == productImageUrl ? _self.productImageUrl : productImageUrl // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,voucherCode: null == voucherCode ? _self.voucherCode : voucherCode // ignore: cast_nullable_to_non_nullable
as String,pin: null == pin ? _self.pin : pin // ignore: cast_nullable_to_non_nullable
as String,serialNumber: null == serialNumber ? _self.serialNumber : serialNumber // ignore: cast_nullable_to_non_nullable
as String,expiryDate: null == expiryDate ? _self.expiryDate : expiryDate // ignore: cast_nullable_to_non_nullable
as String,suregiftsVoucherId: null == suregiftsVoucherId ? _self.suregiftsVoucherId : suregiftsVoucherId // ignore: cast_nullable_to_non_nullable
as String,suregiftsOrderId: null == suregiftsOrderId ? _self.suregiftsOrderId : suregiftsOrderId // ignore: cast_nullable_to_non_nullable
as String,createdAtUtc: null == createdAtUtc ? _self.createdAtUtc : createdAtUtc // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
