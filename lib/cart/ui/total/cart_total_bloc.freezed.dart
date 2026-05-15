// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_total_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CartTotalEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartTotalEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CartTotalEvent()';
}


}

/// @nodoc
class $CartTotalEventCopyWith<$Res>  {
$CartTotalEventCopyWith(CartTotalEvent _, $Res Function(CartTotalEvent) __);
}


/// Adds pattern-matching-related methods to [CartTotalEvent].
extension CartTotalEventPatterns on CartTotalEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _CalculateTotal value)?  calculateTotal,TResult Function( _RefreshTotal value)?  refreshTotal,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CalculateTotal() when calculateTotal != null:
return calculateTotal(_that);case _RefreshTotal() when refreshTotal != null:
return refreshTotal(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _CalculateTotal value)  calculateTotal,required TResult Function( _RefreshTotal value)  refreshTotal,}){
final _that = this;
switch (_that) {
case _CalculateTotal():
return calculateTotal(_that);case _RefreshTotal():
return refreshTotal(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _CalculateTotal value)?  calculateTotal,TResult? Function( _RefreshTotal value)?  refreshTotal,}){
final _that = this;
switch (_that) {
case _CalculateTotal() when calculateTotal != null:
return calculateTotal(_that);case _RefreshTotal() when refreshTotal != null:
return refreshTotal(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  calculateTotal,TResult Function()?  refreshTotal,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CalculateTotal() when calculateTotal != null:
return calculateTotal();case _RefreshTotal() when refreshTotal != null:
return refreshTotal();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  calculateTotal,required TResult Function()  refreshTotal,}) {final _that = this;
switch (_that) {
case _CalculateTotal():
return calculateTotal();case _RefreshTotal():
return refreshTotal();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  calculateTotal,TResult? Function()?  refreshTotal,}) {final _that = this;
switch (_that) {
case _CalculateTotal() when calculateTotal != null:
return calculateTotal();case _RefreshTotal() when refreshTotal != null:
return refreshTotal();case _:
  return null;

}
}

}

/// @nodoc


class _CalculateTotal implements CartTotalEvent {
  const _CalculateTotal();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CalculateTotal);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CartTotalEvent.calculateTotal()';
}


}




/// @nodoc


class _RefreshTotal implements CartTotalEvent {
  const _RefreshTotal();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RefreshTotal);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CartTotalEvent.refreshTotal()';
}


}




/// @nodoc
mixin _$CartTotalState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartTotalState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CartTotalState()';
}


}

/// @nodoc
class $CartTotalStateCopyWith<$Res>  {
$CartTotalStateCopyWith(CartTotalState _, $Res Function(CartTotalState) __);
}


/// Adds pattern-matching-related methods to [CartTotalState].
extension CartTotalStatePatterns on CartTotalState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loading value)?  loading,TResult Function( _Success value)?  success,TResult Function( _Failure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Success() when success != null:
return success(_that);case _Failure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loading value)  loading,required TResult Function( _Success value)  success,required TResult Function( _Failure value)  failure,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loading():
return loading(_that);case _Success():
return success(_that);case _Failure():
return failure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loading value)?  loading,TResult? Function( _Success value)?  success,TResult? Function( _Failure value)?  failure,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Success() when success != null:
return success(_that);case _Failure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( CartTotal total)?  success,TResult Function( ErrorData error)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Success() when success != null:
return success(_that.total);case _Failure() when failure != null:
return failure(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( CartTotal total)  success,required TResult Function( ErrorData error)  failure,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading();case _Success():
return success(_that.total);case _Failure():
return failure(_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( CartTotal total)?  success,TResult? Function( ErrorData error)?  failure,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Success() when success != null:
return success(_that.total);case _Failure() when failure != null:
return failure(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements CartTotalState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CartTotalState.initial()';
}


}




/// @nodoc


class _Loading implements CartTotalState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CartTotalState.loading()';
}


}




/// @nodoc


class _Success implements CartTotalState {
  const _Success(this.total);
  

 final  CartTotal total;

/// Create a copy of CartTotalState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SuccessCopyWith<_Success> get copyWith => __$SuccessCopyWithImpl<_Success>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Success&&(identical(other.total, total) || other.total == total));
}


@override
int get hashCode => Object.hash(runtimeType,total);

@override
String toString() {
  return 'CartTotalState.success(total: $total)';
}


}

/// @nodoc
abstract mixin class _$SuccessCopyWith<$Res> implements $CartTotalStateCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) _then) = __$SuccessCopyWithImpl;
@useResult
$Res call({
 CartTotal total
});




}
/// @nodoc
class __$SuccessCopyWithImpl<$Res>
    implements _$SuccessCopyWith<$Res> {
  __$SuccessCopyWithImpl(this._self, this._then);

  final _Success _self;
  final $Res Function(_Success) _then;

/// Create a copy of CartTotalState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? total = null,}) {
  return _then(_Success(
null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as CartTotal,
  ));
}


}

/// @nodoc


class _Failure implements CartTotalState {
  const _Failure(this.error);
  

 final  ErrorData error;

/// Create a copy of CartTotalState
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
  return 'CartTotalState.failure(error: $error)';
}


}

/// @nodoc
abstract mixin class _$FailureCopyWith<$Res> implements $CartTotalStateCopyWith<$Res> {
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

/// Create a copy of CartTotalState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(_Failure(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ErrorData,
  ));
}


}

// dart format on
