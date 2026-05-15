// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checkout_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CheckoutResponse {

 int get orderId; String get paymentReference; String get status; double get totalAmount; String get currency; String get suregiftsOrderId; String? get failureReason; List<VoucherResponse> get vouchers;
/// Create a copy of CheckoutResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CheckoutResponseCopyWith<CheckoutResponse> get copyWith => _$CheckoutResponseCopyWithImpl<CheckoutResponse>(this as CheckoutResponse, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckoutResponse&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.paymentReference, paymentReference) || other.paymentReference == paymentReference)&&(identical(other.status, status) || other.status == status)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.suregiftsOrderId, suregiftsOrderId) || other.suregiftsOrderId == suregiftsOrderId)&&(identical(other.failureReason, failureReason) || other.failureReason == failureReason)&&const DeepCollectionEquality().equals(other.vouchers, vouchers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,orderId,paymentReference,status,totalAmount,currency,suregiftsOrderId,failureReason,const DeepCollectionEquality().hash(vouchers));

@override
String toString() {
  return 'CheckoutResponse(orderId: $orderId, paymentReference: $paymentReference, status: $status, totalAmount: $totalAmount, currency: $currency, suregiftsOrderId: $suregiftsOrderId, failureReason: $failureReason, vouchers: $vouchers)';
}


}

/// @nodoc
abstract mixin class $CheckoutResponseCopyWith<$Res>  {
  factory $CheckoutResponseCopyWith(CheckoutResponse value, $Res Function(CheckoutResponse) _then) = _$CheckoutResponseCopyWithImpl;
@useResult
$Res call({
 int orderId, String paymentReference, String status, double totalAmount, String currency, String suregiftsOrderId, String? failureReason, List<VoucherResponse> vouchers
});




}
/// @nodoc
class _$CheckoutResponseCopyWithImpl<$Res>
    implements $CheckoutResponseCopyWith<$Res> {
  _$CheckoutResponseCopyWithImpl(this._self, this._then);

  final CheckoutResponse _self;
  final $Res Function(CheckoutResponse) _then;

/// Create a copy of CheckoutResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? orderId = null,Object? paymentReference = null,Object? status = null,Object? totalAmount = null,Object? currency = null,Object? suregiftsOrderId = null,Object? failureReason = freezed,Object? vouchers = null,}) {
  return _then(_self.copyWith(
orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as int,paymentReference: null == paymentReference ? _self.paymentReference : paymentReference // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,totalAmount: null == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as double,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,suregiftsOrderId: null == suregiftsOrderId ? _self.suregiftsOrderId : suregiftsOrderId // ignore: cast_nullable_to_non_nullable
as String,failureReason: freezed == failureReason ? _self.failureReason : failureReason // ignore: cast_nullable_to_non_nullable
as String?,vouchers: null == vouchers ? _self.vouchers : vouchers // ignore: cast_nullable_to_non_nullable
as List<VoucherResponse>,
  ));
}

}


/// Adds pattern-matching-related methods to [CheckoutResponse].
extension CheckoutResponsePatterns on CheckoutResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CheckoutResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CheckoutResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CheckoutResponse value)  $default,){
final _that = this;
switch (_that) {
case _CheckoutResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CheckoutResponse value)?  $default,){
final _that = this;
switch (_that) {
case _CheckoutResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int orderId,  String paymentReference,  String status,  double totalAmount,  String currency,  String suregiftsOrderId,  String? failureReason,  List<VoucherResponse> vouchers)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CheckoutResponse() when $default != null:
return $default(_that.orderId,_that.paymentReference,_that.status,_that.totalAmount,_that.currency,_that.suregiftsOrderId,_that.failureReason,_that.vouchers);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int orderId,  String paymentReference,  String status,  double totalAmount,  String currency,  String suregiftsOrderId,  String? failureReason,  List<VoucherResponse> vouchers)  $default,) {final _that = this;
switch (_that) {
case _CheckoutResponse():
return $default(_that.orderId,_that.paymentReference,_that.status,_that.totalAmount,_that.currency,_that.suregiftsOrderId,_that.failureReason,_that.vouchers);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int orderId,  String paymentReference,  String status,  double totalAmount,  String currency,  String suregiftsOrderId,  String? failureReason,  List<VoucherResponse> vouchers)?  $default,) {final _that = this;
switch (_that) {
case _CheckoutResponse() when $default != null:
return $default(_that.orderId,_that.paymentReference,_that.status,_that.totalAmount,_that.currency,_that.suregiftsOrderId,_that.failureReason,_that.vouchers);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(createToJson: false)

class _CheckoutResponse implements CheckoutResponse {
  const _CheckoutResponse({required this.orderId, required this.paymentReference, required this.status, required this.totalAmount, required this.currency, required this.suregiftsOrderId, required this.failureReason, required final  List<VoucherResponse> vouchers}): _vouchers = vouchers;
  factory _CheckoutResponse.fromJson(Map<String, dynamic> json) => _$CheckoutResponseFromJson(json);

@override final  int orderId;
@override final  String paymentReference;
@override final  String status;
@override final  double totalAmount;
@override final  String currency;
@override final  String suregiftsOrderId;
@override final  String? failureReason;
 final  List<VoucherResponse> _vouchers;
@override List<VoucherResponse> get vouchers {
  if (_vouchers is EqualUnmodifiableListView) return _vouchers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_vouchers);
}


/// Create a copy of CheckoutResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CheckoutResponseCopyWith<_CheckoutResponse> get copyWith => __$CheckoutResponseCopyWithImpl<_CheckoutResponse>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckoutResponse&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.paymentReference, paymentReference) || other.paymentReference == paymentReference)&&(identical(other.status, status) || other.status == status)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.suregiftsOrderId, suregiftsOrderId) || other.suregiftsOrderId == suregiftsOrderId)&&(identical(other.failureReason, failureReason) || other.failureReason == failureReason)&&const DeepCollectionEquality().equals(other._vouchers, _vouchers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,orderId,paymentReference,status,totalAmount,currency,suregiftsOrderId,failureReason,const DeepCollectionEquality().hash(_vouchers));

@override
String toString() {
  return 'CheckoutResponse(orderId: $orderId, paymentReference: $paymentReference, status: $status, totalAmount: $totalAmount, currency: $currency, suregiftsOrderId: $suregiftsOrderId, failureReason: $failureReason, vouchers: $vouchers)';
}


}

/// @nodoc
abstract mixin class _$CheckoutResponseCopyWith<$Res> implements $CheckoutResponseCopyWith<$Res> {
  factory _$CheckoutResponseCopyWith(_CheckoutResponse value, $Res Function(_CheckoutResponse) _then) = __$CheckoutResponseCopyWithImpl;
@override @useResult
$Res call({
 int orderId, String paymentReference, String status, double totalAmount, String currency, String suregiftsOrderId, String? failureReason, List<VoucherResponse> vouchers
});




}
/// @nodoc
class __$CheckoutResponseCopyWithImpl<$Res>
    implements _$CheckoutResponseCopyWith<$Res> {
  __$CheckoutResponseCopyWithImpl(this._self, this._then);

  final _CheckoutResponse _self;
  final $Res Function(_CheckoutResponse) _then;

/// Create a copy of CheckoutResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? orderId = null,Object? paymentReference = null,Object? status = null,Object? totalAmount = null,Object? currency = null,Object? suregiftsOrderId = null,Object? failureReason = freezed,Object? vouchers = null,}) {
  return _then(_CheckoutResponse(
orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as int,paymentReference: null == paymentReference ? _self.paymentReference : paymentReference // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,totalAmount: null == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as double,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,suregiftsOrderId: null == suregiftsOrderId ? _self.suregiftsOrderId : suregiftsOrderId // ignore: cast_nullable_to_non_nullable
as String,failureReason: freezed == failureReason ? _self.failureReason : failureReason // ignore: cast_nullable_to_non_nullable
as String?,vouchers: null == vouchers ? _self._vouchers : vouchers // ignore: cast_nullable_to_non_nullable
as List<VoucherResponse>,
  ));
}


}

// dart format on
