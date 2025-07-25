// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gemini_gen_text_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GeminiGenTextBody {

 List get contents; Map<String, dynamic>? get system_instruction;
/// Create a copy of GeminiGenTextBody
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GeminiGenTextBodyCopyWith<GeminiGenTextBody> get copyWith => _$GeminiGenTextBodyCopyWithImpl<GeminiGenTextBody>(this as GeminiGenTextBody, _$identity);

  /// Serializes this GeminiGenTextBody to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GeminiGenTextBody&&const DeepCollectionEquality().equals(other.contents, contents)&&const DeepCollectionEquality().equals(other.system_instruction, system_instruction));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(contents),const DeepCollectionEquality().hash(system_instruction));

@override
String toString() {
  return 'GeminiGenTextBody(contents: $contents, system_instruction: $system_instruction)';
}


}

/// @nodoc
abstract mixin class $GeminiGenTextBodyCopyWith<$Res>  {
  factory $GeminiGenTextBodyCopyWith(GeminiGenTextBody value, $Res Function(GeminiGenTextBody) _then) = _$GeminiGenTextBodyCopyWithImpl;
@useResult
$Res call({
 List contents, Map<String, dynamic>? system_instruction
});




}
/// @nodoc
class _$GeminiGenTextBodyCopyWithImpl<$Res>
    implements $GeminiGenTextBodyCopyWith<$Res> {
  _$GeminiGenTextBodyCopyWithImpl(this._self, this._then);

  final GeminiGenTextBody _self;
  final $Res Function(GeminiGenTextBody) _then;

/// Create a copy of GeminiGenTextBody
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? contents = null,Object? system_instruction = freezed,}) {
  return _then(_self.copyWith(
contents: null == contents ? _self.contents : contents // ignore: cast_nullable_to_non_nullable
as List,system_instruction: freezed == system_instruction ? _self.system_instruction : system_instruction // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [GeminiGenTextBody].
extension GeminiGenTextBodyPatterns on GeminiGenTextBody {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GeminiGenTextBody value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GeminiGenTextBody() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GeminiGenTextBody value)  $default,){
final _that = this;
switch (_that) {
case _GeminiGenTextBody():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GeminiGenTextBody value)?  $default,){
final _that = this;
switch (_that) {
case _GeminiGenTextBody() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List contents,  Map<String, dynamic>? system_instruction)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GeminiGenTextBody() when $default != null:
return $default(_that.contents,_that.system_instruction);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List contents,  Map<String, dynamic>? system_instruction)  $default,) {final _that = this;
switch (_that) {
case _GeminiGenTextBody():
return $default(_that.contents,_that.system_instruction);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List contents,  Map<String, dynamic>? system_instruction)?  $default,) {final _that = this;
switch (_that) {
case _GeminiGenTextBody() when $default != null:
return $default(_that.contents,_that.system_instruction);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GeminiGenTextBody extends GeminiGenTextBody {
  const _GeminiGenTextBody({required final  List contents, final  Map<String, dynamic>? system_instruction}): _contents = contents,_system_instruction = system_instruction,super._();
  factory _GeminiGenTextBody.fromJson(Map<String, dynamic> json) => _$GeminiGenTextBodyFromJson(json);

 final  List _contents;
@override List get contents {
  if (_contents is EqualUnmodifiableListView) return _contents;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_contents);
}

 final  Map<String, dynamic>? _system_instruction;
@override Map<String, dynamic>? get system_instruction {
  final value = _system_instruction;
  if (value == null) return null;
  if (_system_instruction is EqualUnmodifiableMapView) return _system_instruction;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of GeminiGenTextBody
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GeminiGenTextBodyCopyWith<_GeminiGenTextBody> get copyWith => __$GeminiGenTextBodyCopyWithImpl<_GeminiGenTextBody>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GeminiGenTextBodyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GeminiGenTextBody&&const DeepCollectionEquality().equals(other._contents, _contents)&&const DeepCollectionEquality().equals(other._system_instruction, _system_instruction));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_contents),const DeepCollectionEquality().hash(_system_instruction));

@override
String toString() {
  return 'GeminiGenTextBody(contents: $contents, system_instruction: $system_instruction)';
}


}

/// @nodoc
abstract mixin class _$GeminiGenTextBodyCopyWith<$Res> implements $GeminiGenTextBodyCopyWith<$Res> {
  factory _$GeminiGenTextBodyCopyWith(_GeminiGenTextBody value, $Res Function(_GeminiGenTextBody) _then) = __$GeminiGenTextBodyCopyWithImpl;
@override @useResult
$Res call({
 List contents, Map<String, dynamic>? system_instruction
});




}
/// @nodoc
class __$GeminiGenTextBodyCopyWithImpl<$Res>
    implements _$GeminiGenTextBodyCopyWith<$Res> {
  __$GeminiGenTextBodyCopyWithImpl(this._self, this._then);

  final _GeminiGenTextBody _self;
  final $Res Function(_GeminiGenTextBody) _then;

/// Create a copy of GeminiGenTextBody
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? contents = null,Object? system_instruction = freezed,}) {
  return _then(_GeminiGenTextBody(
contents: null == contents ? _self._contents : contents // ignore: cast_nullable_to_non_nullable
as List,system_instruction: freezed == system_instruction ? _self._system_instruction : system_instruction // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}

// dart format on
