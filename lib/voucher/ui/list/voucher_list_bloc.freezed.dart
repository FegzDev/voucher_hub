// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'voucher_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$VoucherListEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VoucherListEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'VoucherListEvent()';
}


}

/// @nodoc
class $VoucherListEventCopyWith<$Res>  {
$VoucherListEventCopyWith(VoucherListEvent _, $Res Function(VoucherListEvent) __);
}


/// Adds pattern-matching-related methods to [VoucherListEvent].
extension VoucherListEventPatterns on VoucherListEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _GetVouchers value)?  getVouchers,TResult Function( _RefreshVouchers value)?  refreshVouchers,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetVouchers() when getVouchers != null:
return getVouchers(_that);case _RefreshVouchers() when refreshVouchers != null:
return refreshVouchers(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _GetVouchers value)  getVouchers,required TResult Function( _RefreshVouchers value)  refreshVouchers,}){
final _that = this;
switch (_that) {
case _GetVouchers():
return getVouchers(_that);case _RefreshVouchers():
return refreshVouchers(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _GetVouchers value)?  getVouchers,TResult? Function( _RefreshVouchers value)?  refreshVouchers,}){
final _that = this;
switch (_that) {
case _GetVouchers() when getVouchers != null:
return getVouchers(_that);case _RefreshVouchers() when refreshVouchers != null:
return refreshVouchers(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  getVouchers,TResult Function()?  refreshVouchers,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetVouchers() when getVouchers != null:
return getVouchers();case _RefreshVouchers() when refreshVouchers != null:
return refreshVouchers();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  getVouchers,required TResult Function()  refreshVouchers,}) {final _that = this;
switch (_that) {
case _GetVouchers():
return getVouchers();case _RefreshVouchers():
return refreshVouchers();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  getVouchers,TResult? Function()?  refreshVouchers,}) {final _that = this;
switch (_that) {
case _GetVouchers() when getVouchers != null:
return getVouchers();case _RefreshVouchers() when refreshVouchers != null:
return refreshVouchers();case _:
  return null;

}
}

}

/// @nodoc


class _GetVouchers implements VoucherListEvent {
  const _GetVouchers();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetVouchers);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'VoucherListEvent.getVouchers()';
}


}




/// @nodoc


class _RefreshVouchers implements VoucherListEvent {
  const _RefreshVouchers();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RefreshVouchers);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'VoucherListEvent.refreshVouchers()';
}


}




/// @nodoc
mixin _$VoucherListState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VoucherListState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'VoucherListState()';
}


}

/// @nodoc
class $VoucherListStateCopyWith<$Res>  {
$VoucherListStateCopyWith(VoucherListState _, $Res Function(VoucherListState) __);
}


/// Adds pattern-matching-related methods to [VoucherListState].
extension VoucherListStatePatterns on VoucherListState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loading value)?  loading,TResult Function( _Success value)?  success,TResult Function( _Empty value)?  empty,TResult Function( _Failure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Success() when success != null:
return success(_that);case _Empty() when empty != null:
return empty(_that);case _Failure() when failure != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loading value)  loading,required TResult Function( _Success value)  success,required TResult Function( _Empty value)  empty,required TResult Function( _Failure value)  failure,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loading():
return loading(_that);case _Success():
return success(_that);case _Empty():
return empty(_that);case _Failure():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loading value)?  loading,TResult? Function( _Success value)?  success,TResult? Function( _Empty value)?  empty,TResult? Function( _Failure value)?  failure,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Success() when success != null:
return success(_that);case _Empty() when empty != null:
return empty(_that);case _Failure() when failure != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<Voucher> vouchers)?  success,TResult Function()?  empty,TResult Function( ErrorData error)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Success() when success != null:
return success(_that.vouchers);case _Empty() when empty != null:
return empty();case _Failure() when failure != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<Voucher> vouchers)  success,required TResult Function()  empty,required TResult Function( ErrorData error)  failure,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading();case _Success():
return success(_that.vouchers);case _Empty():
return empty();case _Failure():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<Voucher> vouchers)?  success,TResult? Function()?  empty,TResult? Function( ErrorData error)?  failure,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Success() when success != null:
return success(_that.vouchers);case _Empty() when empty != null:
return empty();case _Failure() when failure != null:
return failure(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements VoucherListState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'VoucherListState.initial()';
}


}




/// @nodoc


class _Loading implements VoucherListState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'VoucherListState.loading()';
}


}




/// @nodoc


class _Success implements VoucherListState {
  const _Success(final  List<Voucher> vouchers): _vouchers = vouchers;
  

 final  List<Voucher> _vouchers;
 List<Voucher> get vouchers {
  if (_vouchers is EqualUnmodifiableListView) return _vouchers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_vouchers);
}


/// Create a copy of VoucherListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SuccessCopyWith<_Success> get copyWith => __$SuccessCopyWithImpl<_Success>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Success&&const DeepCollectionEquality().equals(other._vouchers, _vouchers));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_vouchers));

@override
String toString() {
  return 'VoucherListState.success(vouchers: $vouchers)';
}


}

/// @nodoc
abstract mixin class _$SuccessCopyWith<$Res> implements $VoucherListStateCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) _then) = __$SuccessCopyWithImpl;
@useResult
$Res call({
 List<Voucher> vouchers
});




}
/// @nodoc
class __$SuccessCopyWithImpl<$Res>
    implements _$SuccessCopyWith<$Res> {
  __$SuccessCopyWithImpl(this._self, this._then);

  final _Success _self;
  final $Res Function(_Success) _then;

/// Create a copy of VoucherListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? vouchers = null,}) {
  return _then(_Success(
null == vouchers ? _self._vouchers : vouchers // ignore: cast_nullable_to_non_nullable
as List<Voucher>,
  ));
}


}

/// @nodoc


class _Empty implements VoucherListState {
  const _Empty();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Empty);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'VoucherListState.empty()';
}


}




/// @nodoc


class _Failure implements VoucherListState {
  const _Failure(this.error);
  

 final  ErrorData error;

/// Create a copy of VoucherListState
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
  return 'VoucherListState.failure(error: $error)';
}


}

/// @nodoc
abstract mixin class _$FailureCopyWith<$Res> implements $VoucherListStateCopyWith<$Res> {
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

/// Create a copy of VoucherListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(_Failure(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ErrorData,
  ));
}


}

// dart format on
