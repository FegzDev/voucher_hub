// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_total_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CartTotalResponse {

 double get subtotal; double get fees; double get total; String get currency;
/// Create a copy of CartTotalResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartTotalResponseCopyWith<CartTotalResponse> get copyWith => _$CartTotalResponseCopyWithImpl<CartTotalResponse>(this as CartTotalResponse, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartTotalResponse&&(identical(other.subtotal, subtotal) || other.subtotal == subtotal)&&(identical(other.fees, fees) || other.fees == fees)&&(identical(other.total, total) || other.total == total)&&(identical(other.currency, currency) || other.currency == currency));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,subtotal,fees,total,currency);

@override
String toString() {
  return 'CartTotalResponse(subtotal: $subtotal, fees: $fees, total: $total, currency: $currency)';
}


}

/// @nodoc
abstract mixin class $CartTotalResponseCopyWith<$Res>  {
  factory $CartTotalResponseCopyWith(CartTotalResponse value, $Res Function(CartTotalResponse) _then) = _$CartTotalResponseCopyWithImpl;
@useResult
$Res call({
 double subtotal, double fees, double total, String currency
});




}
/// @nodoc
class _$CartTotalResponseCopyWithImpl<$Res>
    implements $CartTotalResponseCopyWith<$Res> {
  _$CartTotalResponseCopyWithImpl(this._self, this._then);

  final CartTotalResponse _self;
  final $Res Function(CartTotalResponse) _then;

/// Create a copy of CartTotalResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? subtotal = null,Object? fees = null,Object? total = null,Object? currency = null,}) {
  return _then(_self.copyWith(
subtotal: null == subtotal ? _self.subtotal : subtotal // ignore: cast_nullable_to_non_nullable
as double,fees: null == fees ? _self.fees : fees // ignore: cast_nullable_to_non_nullable
as double,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as double,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CartTotalResponse].
extension CartTotalResponsePatterns on CartTotalResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CartTotalResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CartTotalResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CartTotalResponse value)  $default,){
final _that = this;
switch (_that) {
case _CartTotalResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CartTotalResponse value)?  $default,){
final _that = this;
switch (_that) {
case _CartTotalResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double subtotal,  double fees,  double total,  String currency)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CartTotalResponse() when $default != null:
return $default(_that.subtotal,_that.fees,_that.total,_that.currency);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double subtotal,  double fees,  double total,  String currency)  $default,) {final _that = this;
switch (_that) {
case _CartTotalResponse():
return $default(_that.subtotal,_that.fees,_that.total,_that.currency);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double subtotal,  double fees,  double total,  String currency)?  $default,) {final _that = this;
switch (_that) {
case _CartTotalResponse() when $default != null:
return $default(_that.subtotal,_that.fees,_that.total,_that.currency);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(createToJson: false)

class _CartTotalResponse implements CartTotalResponse {
  const _CartTotalResponse({required this.subtotal, required this.fees, required this.total, required this.currency});
  factory _CartTotalResponse.fromJson(Map<String, dynamic> json) => _$CartTotalResponseFromJson(json);

@override final  double subtotal;
@override final  double fees;
@override final  double total;
@override final  String currency;

/// Create a copy of CartTotalResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CartTotalResponseCopyWith<_CartTotalResponse> get copyWith => __$CartTotalResponseCopyWithImpl<_CartTotalResponse>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CartTotalResponse&&(identical(other.subtotal, subtotal) || other.subtotal == subtotal)&&(identical(other.fees, fees) || other.fees == fees)&&(identical(other.total, total) || other.total == total)&&(identical(other.currency, currency) || other.currency == currency));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,subtotal,fees,total,currency);

@override
String toString() {
  return 'CartTotalResponse(subtotal: $subtotal, fees: $fees, total: $total, currency: $currency)';
}


}

/// @nodoc
abstract mixin class _$CartTotalResponseCopyWith<$Res> implements $CartTotalResponseCopyWith<$Res> {
  factory _$CartTotalResponseCopyWith(_CartTotalResponse value, $Res Function(_CartTotalResponse) _then) = __$CartTotalResponseCopyWithImpl;
@override @useResult
$Res call({
 double subtotal, double fees, double total, String currency
});




}
/// @nodoc
class __$CartTotalResponseCopyWithImpl<$Res>
    implements _$CartTotalResponseCopyWith<$Res> {
  __$CartTotalResponseCopyWithImpl(this._self, this._then);

  final _CartTotalResponse _self;
  final $Res Function(_CartTotalResponse) _then;

/// Create a copy of CartTotalResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? subtotal = null,Object? fees = null,Object? total = null,Object? currency = null,}) {
  return _then(_CartTotalResponse(
subtotal: null == subtotal ? _self.subtotal : subtotal // ignore: cast_nullable_to_non_nullable
as double,fees: null == fees ? _self.fees : fees // ignore: cast_nullable_to_non_nullable
as double,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as double,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
