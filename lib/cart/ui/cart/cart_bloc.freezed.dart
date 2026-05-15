// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CartEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CartEvent()';
}


}

/// @nodoc
class $CartEventCopyWith<$Res>  {
$CartEventCopyWith(CartEvent _, $Res Function(CartEvent) __);
}


/// Adds pattern-matching-related methods to [CartEvent].
extension CartEventPatterns on CartEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _GetCart value)?  getCart,TResult Function( _RefreshCart value)?  refreshCart,TResult Function( _UpdateItem value)?  updateItem,TResult Function( _RemoveItem value)?  removeItem,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetCart() when getCart != null:
return getCart(_that);case _RefreshCart() when refreshCart != null:
return refreshCart(_that);case _UpdateItem() when updateItem != null:
return updateItem(_that);case _RemoveItem() when removeItem != null:
return removeItem(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _GetCart value)  getCart,required TResult Function( _RefreshCart value)  refreshCart,required TResult Function( _UpdateItem value)  updateItem,required TResult Function( _RemoveItem value)  removeItem,}){
final _that = this;
switch (_that) {
case _GetCart():
return getCart(_that);case _RefreshCart():
return refreshCart(_that);case _UpdateItem():
return updateItem(_that);case _RemoveItem():
return removeItem(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _GetCart value)?  getCart,TResult? Function( _RefreshCart value)?  refreshCart,TResult? Function( _UpdateItem value)?  updateItem,TResult? Function( _RemoveItem value)?  removeItem,}){
final _that = this;
switch (_that) {
case _GetCart() when getCart != null:
return getCart(_that);case _RefreshCart() when refreshCart != null:
return refreshCart(_that);case _UpdateItem() when updateItem != null:
return updateItem(_that);case _RemoveItem() when removeItem != null:
return removeItem(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  getCart,TResult Function()?  refreshCart,TResult Function( int id,  double amount,  int quantity)?  updateItem,TResult Function( int id)?  removeItem,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetCart() when getCart != null:
return getCart();case _RefreshCart() when refreshCart != null:
return refreshCart();case _UpdateItem() when updateItem != null:
return updateItem(_that.id,_that.amount,_that.quantity);case _RemoveItem() when removeItem != null:
return removeItem(_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  getCart,required TResult Function()  refreshCart,required TResult Function( int id,  double amount,  int quantity)  updateItem,required TResult Function( int id)  removeItem,}) {final _that = this;
switch (_that) {
case _GetCart():
return getCart();case _RefreshCart():
return refreshCart();case _UpdateItem():
return updateItem(_that.id,_that.amount,_that.quantity);case _RemoveItem():
return removeItem(_that.id);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  getCart,TResult? Function()?  refreshCart,TResult? Function( int id,  double amount,  int quantity)?  updateItem,TResult? Function( int id)?  removeItem,}) {final _that = this;
switch (_that) {
case _GetCart() when getCart != null:
return getCart();case _RefreshCart() when refreshCart != null:
return refreshCart();case _UpdateItem() when updateItem != null:
return updateItem(_that.id,_that.amount,_that.quantity);case _RemoveItem() when removeItem != null:
return removeItem(_that.id);case _:
  return null;

}
}

}

/// @nodoc


class _GetCart implements CartEvent {
  const _GetCart();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetCart);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CartEvent.getCart()';
}


}




/// @nodoc


class _RefreshCart implements CartEvent {
  const _RefreshCart();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RefreshCart);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CartEvent.refreshCart()';
}


}




/// @nodoc


class _UpdateItem implements CartEvent {
  const _UpdateItem({required this.id, required this.amount, required this.quantity});
  

 final  int id;
 final  double amount;
 final  int quantity;

/// Create a copy of CartEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateItemCopyWith<_UpdateItem> get copyWith => __$UpdateItemCopyWithImpl<_UpdateItem>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateItem&&(identical(other.id, id) || other.id == id)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.quantity, quantity) || other.quantity == quantity));
}


@override
int get hashCode => Object.hash(runtimeType,id,amount,quantity);

@override
String toString() {
  return 'CartEvent.updateItem(id: $id, amount: $amount, quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class _$UpdateItemCopyWith<$Res> implements $CartEventCopyWith<$Res> {
  factory _$UpdateItemCopyWith(_UpdateItem value, $Res Function(_UpdateItem) _then) = __$UpdateItemCopyWithImpl;
@useResult
$Res call({
 int id, double amount, int quantity
});




}
/// @nodoc
class __$UpdateItemCopyWithImpl<$Res>
    implements _$UpdateItemCopyWith<$Res> {
  __$UpdateItemCopyWithImpl(this._self, this._then);

  final _UpdateItem _self;
  final $Res Function(_UpdateItem) _then;

/// Create a copy of CartEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,Object? amount = null,Object? quantity = null,}) {
  return _then(_UpdateItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _RemoveItem implements CartEvent {
  const _RemoveItem(this.id);
  

 final  int id;

/// Create a copy of CartEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RemoveItemCopyWith<_RemoveItem> get copyWith => __$RemoveItemCopyWithImpl<_RemoveItem>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RemoveItem&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'CartEvent.removeItem(id: $id)';
}


}

/// @nodoc
abstract mixin class _$RemoveItemCopyWith<$Res> implements $CartEventCopyWith<$Res> {
  factory _$RemoveItemCopyWith(_RemoveItem value, $Res Function(_RemoveItem) _then) = __$RemoveItemCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class __$RemoveItemCopyWithImpl<$Res>
    implements _$RemoveItemCopyWith<$Res> {
  __$RemoveItemCopyWithImpl(this._self, this._then);

  final _RemoveItem _self;
  final $Res Function(_RemoveItem) _then;

/// Create a copy of CartEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_RemoveItem(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$CartState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CartState()';
}


}

/// @nodoc
class $CartStateCopyWith<$Res>  {
$CartStateCopyWith(CartState _, $Res Function(CartState) __);
}


/// Adds pattern-matching-related methods to [CartState].
extension CartStatePatterns on CartState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loading value)?  loading,TResult Function( _Success value)?  success,TResult Function( _Updating value)?  updating,TResult Function( _Empty value)?  empty,TResult Function( _Failure value)?  failure,TResult Function( _CartItemFailure value)?  cartItemFailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Success() when success != null:
return success(_that);case _Updating() when updating != null:
return updating(_that);case _Empty() when empty != null:
return empty(_that);case _Failure() when failure != null:
return failure(_that);case _CartItemFailure() when cartItemFailure != null:
return cartItemFailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loading value)  loading,required TResult Function( _Success value)  success,required TResult Function( _Updating value)  updating,required TResult Function( _Empty value)  empty,required TResult Function( _Failure value)  failure,required TResult Function( _CartItemFailure value)  cartItemFailure,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loading():
return loading(_that);case _Success():
return success(_that);case _Updating():
return updating(_that);case _Empty():
return empty(_that);case _Failure():
return failure(_that);case _CartItemFailure():
return cartItemFailure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loading value)?  loading,TResult? Function( _Success value)?  success,TResult? Function( _Updating value)?  updating,TResult? Function( _Empty value)?  empty,TResult? Function( _Failure value)?  failure,TResult? Function( _CartItemFailure value)?  cartItemFailure,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Success() when success != null:
return success(_that);case _Updating() when updating != null:
return updating(_that);case _Empty() when empty != null:
return empty(_that);case _Failure() when failure != null:
return failure(_that);case _CartItemFailure() when cartItemFailure != null:
return cartItemFailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( Cart cart)?  success,TResult Function( Cart cart)?  updating,TResult Function()?  empty,TResult Function( ErrorData error)?  failure,TResult Function( Cart? cart,  ErrorData error)?  cartItemFailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Success() when success != null:
return success(_that.cart);case _Updating() when updating != null:
return updating(_that.cart);case _Empty() when empty != null:
return empty();case _Failure() when failure != null:
return failure(_that.error);case _CartItemFailure() when cartItemFailure != null:
return cartItemFailure(_that.cart,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( Cart cart)  success,required TResult Function( Cart cart)  updating,required TResult Function()  empty,required TResult Function( ErrorData error)  failure,required TResult Function( Cart? cart,  ErrorData error)  cartItemFailure,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading();case _Success():
return success(_that.cart);case _Updating():
return updating(_that.cart);case _Empty():
return empty();case _Failure():
return failure(_that.error);case _CartItemFailure():
return cartItemFailure(_that.cart,_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( Cart cart)?  success,TResult? Function( Cart cart)?  updating,TResult? Function()?  empty,TResult? Function( ErrorData error)?  failure,TResult? Function( Cart? cart,  ErrorData error)?  cartItemFailure,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Success() when success != null:
return success(_that.cart);case _Updating() when updating != null:
return updating(_that.cart);case _Empty() when empty != null:
return empty();case _Failure() when failure != null:
return failure(_that.error);case _CartItemFailure() when cartItemFailure != null:
return cartItemFailure(_that.cart,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements CartState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CartState.initial()';
}


}




/// @nodoc


class _Loading implements CartState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CartState.loading()';
}


}




/// @nodoc


class _Success implements CartState {
  const _Success(this.cart);
  

 final  Cart cart;

/// Create a copy of CartState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SuccessCopyWith<_Success> get copyWith => __$SuccessCopyWithImpl<_Success>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Success&&(identical(other.cart, cart) || other.cart == cart));
}


@override
int get hashCode => Object.hash(runtimeType,cart);

@override
String toString() {
  return 'CartState.success(cart: $cart)';
}


}

/// @nodoc
abstract mixin class _$SuccessCopyWith<$Res> implements $CartStateCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) _then) = __$SuccessCopyWithImpl;
@useResult
$Res call({
 Cart cart
});




}
/// @nodoc
class __$SuccessCopyWithImpl<$Res>
    implements _$SuccessCopyWith<$Res> {
  __$SuccessCopyWithImpl(this._self, this._then);

  final _Success _self;
  final $Res Function(_Success) _then;

/// Create a copy of CartState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? cart = null,}) {
  return _then(_Success(
null == cart ? _self.cart : cart // ignore: cast_nullable_to_non_nullable
as Cart,
  ));
}


}

/// @nodoc


class _Updating implements CartState {
  const _Updating(this.cart);
  

 final  Cart cart;

/// Create a copy of CartState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdatingCopyWith<_Updating> get copyWith => __$UpdatingCopyWithImpl<_Updating>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Updating&&(identical(other.cart, cart) || other.cart == cart));
}


@override
int get hashCode => Object.hash(runtimeType,cart);

@override
String toString() {
  return 'CartState.updating(cart: $cart)';
}


}

/// @nodoc
abstract mixin class _$UpdatingCopyWith<$Res> implements $CartStateCopyWith<$Res> {
  factory _$UpdatingCopyWith(_Updating value, $Res Function(_Updating) _then) = __$UpdatingCopyWithImpl;
@useResult
$Res call({
 Cart cart
});




}
/// @nodoc
class __$UpdatingCopyWithImpl<$Res>
    implements _$UpdatingCopyWith<$Res> {
  __$UpdatingCopyWithImpl(this._self, this._then);

  final _Updating _self;
  final $Res Function(_Updating) _then;

/// Create a copy of CartState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? cart = null,}) {
  return _then(_Updating(
null == cart ? _self.cart : cart // ignore: cast_nullable_to_non_nullable
as Cart,
  ));
}


}

/// @nodoc


class _Empty implements CartState {
  const _Empty();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Empty);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CartState.empty()';
}


}




/// @nodoc


class _Failure implements CartState {
  const _Failure(this.error);
  

 final  ErrorData error;

/// Create a copy of CartState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FailureCopyWith<_Failure> get copyWith => __$FailureCopyWithImpl<_Failure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Failure&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'CartState.failure(error: $error)';
}


}

/// @nodoc
abstract mixin class _$FailureCopyWith<$Res> implements $CartStateCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) _then) = __$FailureCopyWithImpl;
@useResult
$Res call({
 ErrorData error
});




}
/// @nodoc
class __$FailureCopyWithImpl<$Res>
    implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(this._self, this._then);

  final _Failure _self;
  final $Res Function(_Failure) _then;

/// Create a copy of CartState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(_Failure(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ErrorData,
  ));
}


}

/// @nodoc


class _CartItemFailure implements CartState {
  const _CartItemFailure(this.cart, this.error);
  

 final  Cart? cart;
 final  ErrorData error;

/// Create a copy of CartState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CartItemFailureCopyWith<_CartItemFailure> get copyWith => __$CartItemFailureCopyWithImpl<_CartItemFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CartItemFailure&&(identical(other.cart, cart) || other.cart == cart)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,cart,error);

@override
String toString() {
  return 'CartState.cartItemFailure(cart: $cart, error: $error)';
}


}

/// @nodoc
abstract mixin class _$CartItemFailureCopyWith<$Res> implements $CartStateCopyWith<$Res> {
  factory _$CartItemFailureCopyWith(_CartItemFailure value, $Res Function(_CartItemFailure) _then) = __$CartItemFailureCopyWithImpl;
@useResult
$Res call({
 Cart? cart, ErrorData error
});




}
/// @nodoc
class __$CartItemFailureCopyWithImpl<$Res>
    implements _$CartItemFailureCopyWith<$Res> {
  __$CartItemFailureCopyWithImpl(this._self, this._then);

  final _CartItemFailure _self;
  final $Res Function(_CartItemFailure) _then;

/// Create a copy of CartState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? cart = freezed,Object? error = null,}) {
  return _then(_CartItemFailure(
freezed == cart ? _self.cart : cart // ignore: cast_nullable_to_non_nullable
as Cart?,null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ErrorData,
  ));
}


}

// dart format on
