// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductResponse {

 String get code; String get name; String get imageUrl; String get description; String get currency; double get minValue; double get maxValue; List<double> get denominations; List<String> get redemptionDetails; List<String> get countries; List<String> get stores; List<String> get categories; ProductValidityResponse get validity;
/// Create a copy of ProductResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductResponseCopyWith<ProductResponse> get copyWith => _$ProductResponseCopyWithImpl<ProductResponse>(this as ProductResponse, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductResponse&&(identical(other.code, code) || other.code == code)&&(identical(other.name, name) || other.name == name)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.description, description) || other.description == description)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.minValue, minValue) || other.minValue == minValue)&&(identical(other.maxValue, maxValue) || other.maxValue == maxValue)&&const DeepCollectionEquality().equals(other.denominations, denominations)&&const DeepCollectionEquality().equals(other.redemptionDetails, redemptionDetails)&&const DeepCollectionEquality().equals(other.countries, countries)&&const DeepCollectionEquality().equals(other.stores, stores)&&const DeepCollectionEquality().equals(other.categories, categories)&&(identical(other.validity, validity) || other.validity == validity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,name,imageUrl,description,currency,minValue,maxValue,const DeepCollectionEquality().hash(denominations),const DeepCollectionEquality().hash(redemptionDetails),const DeepCollectionEquality().hash(countries),const DeepCollectionEquality().hash(stores),const DeepCollectionEquality().hash(categories),validity);

@override
String toString() {
  return 'ProductResponse(code: $code, name: $name, imageUrl: $imageUrl, description: $description, currency: $currency, minValue: $minValue, maxValue: $maxValue, denominations: $denominations, redemptionDetails: $redemptionDetails, countries: $countries, stores: $stores, categories: $categories, validity: $validity)';
}


}

/// @nodoc
abstract mixin class $ProductResponseCopyWith<$Res>  {
  factory $ProductResponseCopyWith(ProductResponse value, $Res Function(ProductResponse) _then) = _$ProductResponseCopyWithImpl;
@useResult
$Res call({
 String code, String name, String imageUrl, String description, String currency, double minValue, double maxValue, List<double> denominations, List<String> redemptionDetails, List<String> countries, List<String> stores, List<String> categories, ProductValidityResponse validity
});


$ProductValidityResponseCopyWith<$Res> get validity;

}
/// @nodoc
class _$ProductResponseCopyWithImpl<$Res>
    implements $ProductResponseCopyWith<$Res> {
  _$ProductResponseCopyWithImpl(this._self, this._then);

  final ProductResponse _self;
  final $Res Function(ProductResponse) _then;

/// Create a copy of ProductResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = null,Object? name = null,Object? imageUrl = null,Object? description = null,Object? currency = null,Object? minValue = null,Object? maxValue = null,Object? denominations = null,Object? redemptionDetails = null,Object? countries = null,Object? stores = null,Object? categories = null,Object? validity = null,}) {
  return _then(_self.copyWith(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,minValue: null == minValue ? _self.minValue : minValue // ignore: cast_nullable_to_non_nullable
as double,maxValue: null == maxValue ? _self.maxValue : maxValue // ignore: cast_nullable_to_non_nullable
as double,denominations: null == denominations ? _self.denominations : denominations // ignore: cast_nullable_to_non_nullable
as List<double>,redemptionDetails: null == redemptionDetails ? _self.redemptionDetails : redemptionDetails // ignore: cast_nullable_to_non_nullable
as List<String>,countries: null == countries ? _self.countries : countries // ignore: cast_nullable_to_non_nullable
as List<String>,stores: null == stores ? _self.stores : stores // ignore: cast_nullable_to_non_nullable
as List<String>,categories: null == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<String>,validity: null == validity ? _self.validity : validity // ignore: cast_nullable_to_non_nullable
as ProductValidityResponse,
  ));
}
/// Create a copy of ProductResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductValidityResponseCopyWith<$Res> get validity {
  
  return $ProductValidityResponseCopyWith<$Res>(_self.validity, (value) {
    return _then(_self.copyWith(validity: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProductResponse].
extension ProductResponsePatterns on ProductResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductResponse value)  $default,){
final _that = this;
switch (_that) {
case _ProductResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ProductResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String code,  String name,  String imageUrl,  String description,  String currency,  double minValue,  double maxValue,  List<double> denominations,  List<String> redemptionDetails,  List<String> countries,  List<String> stores,  List<String> categories,  ProductValidityResponse validity)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductResponse() when $default != null:
return $default(_that.code,_that.name,_that.imageUrl,_that.description,_that.currency,_that.minValue,_that.maxValue,_that.denominations,_that.redemptionDetails,_that.countries,_that.stores,_that.categories,_that.validity);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String code,  String name,  String imageUrl,  String description,  String currency,  double minValue,  double maxValue,  List<double> denominations,  List<String> redemptionDetails,  List<String> countries,  List<String> stores,  List<String> categories,  ProductValidityResponse validity)  $default,) {final _that = this;
switch (_that) {
case _ProductResponse():
return $default(_that.code,_that.name,_that.imageUrl,_that.description,_that.currency,_that.minValue,_that.maxValue,_that.denominations,_that.redemptionDetails,_that.countries,_that.stores,_that.categories,_that.validity);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String code,  String name,  String imageUrl,  String description,  String currency,  double minValue,  double maxValue,  List<double> denominations,  List<String> redemptionDetails,  List<String> countries,  List<String> stores,  List<String> categories,  ProductValidityResponse validity)?  $default,) {final _that = this;
switch (_that) {
case _ProductResponse() when $default != null:
return $default(_that.code,_that.name,_that.imageUrl,_that.description,_that.currency,_that.minValue,_that.maxValue,_that.denominations,_that.redemptionDetails,_that.countries,_that.stores,_that.categories,_that.validity);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(createToJson: false)

class _ProductResponse implements ProductResponse {
  const _ProductResponse({required this.code, required this.name, required this.imageUrl, required this.description, required this.currency, required this.minValue, required this.maxValue, required final  List<double> denominations, required final  List<String> redemptionDetails, required final  List<String> countries, required final  List<String> stores, required final  List<String> categories, required this.validity}): _denominations = denominations,_redemptionDetails = redemptionDetails,_countries = countries,_stores = stores,_categories = categories;
  factory _ProductResponse.fromJson(Map<String, dynamic> json) => _$ProductResponseFromJson(json);

@override final  String code;
@override final  String name;
@override final  String imageUrl;
@override final  String description;
@override final  String currency;
@override final  double minValue;
@override final  double maxValue;
 final  List<double> _denominations;
@override List<double> get denominations {
  if (_denominations is EqualUnmodifiableListView) return _denominations;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_denominations);
}

 final  List<String> _redemptionDetails;
@override List<String> get redemptionDetails {
  if (_redemptionDetails is EqualUnmodifiableListView) return _redemptionDetails;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_redemptionDetails);
}

 final  List<String> _countries;
@override List<String> get countries {
  if (_countries is EqualUnmodifiableListView) return _countries;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_countries);
}

 final  List<String> _stores;
@override List<String> get stores {
  if (_stores is EqualUnmodifiableListView) return _stores;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_stores);
}

 final  List<String> _categories;
@override List<String> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

@override final  ProductValidityResponse validity;

/// Create a copy of ProductResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductResponseCopyWith<_ProductResponse> get copyWith => __$ProductResponseCopyWithImpl<_ProductResponse>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductResponse&&(identical(other.code, code) || other.code == code)&&(identical(other.name, name) || other.name == name)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.description, description) || other.description == description)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.minValue, minValue) || other.minValue == minValue)&&(identical(other.maxValue, maxValue) || other.maxValue == maxValue)&&const DeepCollectionEquality().equals(other._denominations, _denominations)&&const DeepCollectionEquality().equals(other._redemptionDetails, _redemptionDetails)&&const DeepCollectionEquality().equals(other._countries, _countries)&&const DeepCollectionEquality().equals(other._stores, _stores)&&const DeepCollectionEquality().equals(other._categories, _categories)&&(identical(other.validity, validity) || other.validity == validity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,name,imageUrl,description,currency,minValue,maxValue,const DeepCollectionEquality().hash(_denominations),const DeepCollectionEquality().hash(_redemptionDetails),const DeepCollectionEquality().hash(_countries),const DeepCollectionEquality().hash(_stores),const DeepCollectionEquality().hash(_categories),validity);

@override
String toString() {
  return 'ProductResponse(code: $code, name: $name, imageUrl: $imageUrl, description: $description, currency: $currency, minValue: $minValue, maxValue: $maxValue, denominations: $denominations, redemptionDetails: $redemptionDetails, countries: $countries, stores: $stores, categories: $categories, validity: $validity)';
}


}

/// @nodoc
abstract mixin class _$ProductResponseCopyWith<$Res> implements $ProductResponseCopyWith<$Res> {
  factory _$ProductResponseCopyWith(_ProductResponse value, $Res Function(_ProductResponse) _then) = __$ProductResponseCopyWithImpl;
@override @useResult
$Res call({
 String code, String name, String imageUrl, String description, String currency, double minValue, double maxValue, List<double> denominations, List<String> redemptionDetails, List<String> countries, List<String> stores, List<String> categories, ProductValidityResponse validity
});


@override $ProductValidityResponseCopyWith<$Res> get validity;

}
/// @nodoc
class __$ProductResponseCopyWithImpl<$Res>
    implements _$ProductResponseCopyWith<$Res> {
  __$ProductResponseCopyWithImpl(this._self, this._then);

  final _ProductResponse _self;
  final $Res Function(_ProductResponse) _then;

/// Create a copy of ProductResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,Object? name = null,Object? imageUrl = null,Object? description = null,Object? currency = null,Object? minValue = null,Object? maxValue = null,Object? denominations = null,Object? redemptionDetails = null,Object? countries = null,Object? stores = null,Object? categories = null,Object? validity = null,}) {
  return _then(_ProductResponse(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,minValue: null == minValue ? _self.minValue : minValue // ignore: cast_nullable_to_non_nullable
as double,maxValue: null == maxValue ? _self.maxValue : maxValue // ignore: cast_nullable_to_non_nullable
as double,denominations: null == denominations ? _self._denominations : denominations // ignore: cast_nullable_to_non_nullable
as List<double>,redemptionDetails: null == redemptionDetails ? _self._redemptionDetails : redemptionDetails // ignore: cast_nullable_to_non_nullable
as List<String>,countries: null == countries ? _self._countries : countries // ignore: cast_nullable_to_non_nullable
as List<String>,stores: null == stores ? _self._stores : stores // ignore: cast_nullable_to_non_nullable
as List<String>,categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<String>,validity: null == validity ? _self.validity : validity // ignore: cast_nullable_to_non_nullable
as ProductValidityResponse,
  ));
}

/// Create a copy of ProductResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductValidityResponseCopyWith<$Res> get validity {
  
  return $ProductValidityResponseCopyWith<$Res>(_self.validity, (value) {
    return _then(_self.copyWith(validity: value));
  });
}
}


/// @nodoc
mixin _$ProductValidityResponse {

 String get type; int get value;
/// Create a copy of ProductValidityResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductValidityResponseCopyWith<ProductValidityResponse> get copyWith => _$ProductValidityResponseCopyWithImpl<ProductValidityResponse>(this as ProductValidityResponse, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductValidityResponse&&(identical(other.type, type) || other.type == type)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,value);

@override
String toString() {
  return 'ProductValidityResponse(type: $type, value: $value)';
}


}

/// @nodoc
abstract mixin class $ProductValidityResponseCopyWith<$Res>  {
  factory $ProductValidityResponseCopyWith(ProductValidityResponse value, $Res Function(ProductValidityResponse) _then) = _$ProductValidityResponseCopyWithImpl;
@useResult
$Res call({
 String type, int value
});




}
/// @nodoc
class _$ProductValidityResponseCopyWithImpl<$Res>
    implements $ProductValidityResponseCopyWith<$Res> {
  _$ProductValidityResponseCopyWithImpl(this._self, this._then);

  final ProductValidityResponse _self;
  final $Res Function(ProductValidityResponse) _then;

/// Create a copy of ProductValidityResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? value = null,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductValidityResponse].
extension ProductValidityResponsePatterns on ProductValidityResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductValidityResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductValidityResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductValidityResponse value)  $default,){
final _that = this;
switch (_that) {
case _ProductValidityResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductValidityResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ProductValidityResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String type,  int value)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductValidityResponse() when $default != null:
return $default(_that.type,_that.value);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String type,  int value)  $default,) {final _that = this;
switch (_that) {
case _ProductValidityResponse():
return $default(_that.type,_that.value);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String type,  int value)?  $default,) {final _that = this;
switch (_that) {
case _ProductValidityResponse() when $default != null:
return $default(_that.type,_that.value);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(createToJson: false)

class _ProductValidityResponse implements ProductValidityResponse {
  const _ProductValidityResponse({required this.type, required this.value});
  factory _ProductValidityResponse.fromJson(Map<String, dynamic> json) => _$ProductValidityResponseFromJson(json);

@override final  String type;
@override final  int value;

/// Create a copy of ProductValidityResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductValidityResponseCopyWith<_ProductValidityResponse> get copyWith => __$ProductValidityResponseCopyWithImpl<_ProductValidityResponse>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductValidityResponse&&(identical(other.type, type) || other.type == type)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,value);

@override
String toString() {
  return 'ProductValidityResponse(type: $type, value: $value)';
}


}

/// @nodoc
abstract mixin class _$ProductValidityResponseCopyWith<$Res> implements $ProductValidityResponseCopyWith<$Res> {
  factory _$ProductValidityResponseCopyWith(_ProductValidityResponse value, $Res Function(_ProductValidityResponse) _then) = __$ProductValidityResponseCopyWithImpl;
@override @useResult
$Res call({
 String type, int value
});




}
/// @nodoc
class __$ProductValidityResponseCopyWithImpl<$Res>
    implements _$ProductValidityResponseCopyWith<$Res> {
  __$ProductValidityResponseCopyWithImpl(this._self, this._then);

  final _ProductValidityResponse _self;
  final $Res Function(_ProductValidityResponse) _then;

/// Create a copy of ProductValidityResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? value = null,}) {
  return _then(_ProductValidityResponse(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
