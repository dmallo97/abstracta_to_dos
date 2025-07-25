// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'summary_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SummaryModel {

 int get totalToDos; int get completedToDos; int get pendingToDos; int get overdueToDos; int get totalTagsUsed; (int, List<String>) get overdueUsers; (int, List<ToDoModel>) get completedWithinDay;
/// Create a copy of SummaryModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SummaryModelCopyWith<SummaryModel> get copyWith => _$SummaryModelCopyWithImpl<SummaryModel>(this as SummaryModel, _$identity);

  /// Serializes this SummaryModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SummaryModel&&(identical(other.totalToDos, totalToDos) || other.totalToDos == totalToDos)&&(identical(other.completedToDos, completedToDos) || other.completedToDos == completedToDos)&&(identical(other.pendingToDos, pendingToDos) || other.pendingToDos == pendingToDos)&&(identical(other.overdueToDos, overdueToDos) || other.overdueToDos == overdueToDos)&&(identical(other.totalTagsUsed, totalTagsUsed) || other.totalTagsUsed == totalTagsUsed)&&(identical(other.overdueUsers, overdueUsers) || other.overdueUsers == overdueUsers)&&(identical(other.completedWithinDay, completedWithinDay) || other.completedWithinDay == completedWithinDay));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalToDos,completedToDos,pendingToDos,overdueToDos,totalTagsUsed,overdueUsers,completedWithinDay);

@override
String toString() {
  return 'SummaryModel(totalToDos: $totalToDos, completedToDos: $completedToDos, pendingToDos: $pendingToDos, overdueToDos: $overdueToDos, totalTagsUsed: $totalTagsUsed, overdueUsers: $overdueUsers, completedWithinDay: $completedWithinDay)';
}


}

/// @nodoc
abstract mixin class $SummaryModelCopyWith<$Res>  {
  factory $SummaryModelCopyWith(SummaryModel value, $Res Function(SummaryModel) _then) = _$SummaryModelCopyWithImpl;
@useResult
$Res call({
 int totalToDos, int completedToDos, int pendingToDos, int overdueToDos, int totalTagsUsed, (int, List<String>) overdueUsers, (int, List<ToDoModel>) completedWithinDay
});




}
/// @nodoc
class _$SummaryModelCopyWithImpl<$Res>
    implements $SummaryModelCopyWith<$Res> {
  _$SummaryModelCopyWithImpl(this._self, this._then);

  final SummaryModel _self;
  final $Res Function(SummaryModel) _then;

/// Create a copy of SummaryModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalToDos = null,Object? completedToDos = null,Object? pendingToDos = null,Object? overdueToDos = null,Object? totalTagsUsed = null,Object? overdueUsers = null,Object? completedWithinDay = null,}) {
  return _then(_self.copyWith(
totalToDos: null == totalToDos ? _self.totalToDos : totalToDos // ignore: cast_nullable_to_non_nullable
as int,completedToDos: null == completedToDos ? _self.completedToDos : completedToDos // ignore: cast_nullable_to_non_nullable
as int,pendingToDos: null == pendingToDos ? _self.pendingToDos : pendingToDos // ignore: cast_nullable_to_non_nullable
as int,overdueToDos: null == overdueToDos ? _self.overdueToDos : overdueToDos // ignore: cast_nullable_to_non_nullable
as int,totalTagsUsed: null == totalTagsUsed ? _self.totalTagsUsed : totalTagsUsed // ignore: cast_nullable_to_non_nullable
as int,overdueUsers: null == overdueUsers ? _self.overdueUsers : overdueUsers // ignore: cast_nullable_to_non_nullable
as (int, List<String>),completedWithinDay: null == completedWithinDay ? _self.completedWithinDay : completedWithinDay // ignore: cast_nullable_to_non_nullable
as (int, List<ToDoModel>),
  ));
}

}


/// Adds pattern-matching-related methods to [SummaryModel].
extension SummaryModelPatterns on SummaryModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SummaryModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SummaryModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SummaryModel value)  $default,){
final _that = this;
switch (_that) {
case _SummaryModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SummaryModel value)?  $default,){
final _that = this;
switch (_that) {
case _SummaryModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int totalToDos,  int completedToDos,  int pendingToDos,  int overdueToDos,  int totalTagsUsed,  (int, List<String>) overdueUsers,  (int, List<ToDoModel>) completedWithinDay)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SummaryModel() when $default != null:
return $default(_that.totalToDos,_that.completedToDos,_that.pendingToDos,_that.overdueToDos,_that.totalTagsUsed,_that.overdueUsers,_that.completedWithinDay);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int totalToDos,  int completedToDos,  int pendingToDos,  int overdueToDos,  int totalTagsUsed,  (int, List<String>) overdueUsers,  (int, List<ToDoModel>) completedWithinDay)  $default,) {final _that = this;
switch (_that) {
case _SummaryModel():
return $default(_that.totalToDos,_that.completedToDos,_that.pendingToDos,_that.overdueToDos,_that.totalTagsUsed,_that.overdueUsers,_that.completedWithinDay);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int totalToDos,  int completedToDos,  int pendingToDos,  int overdueToDos,  int totalTagsUsed,  (int, List<String>) overdueUsers,  (int, List<ToDoModel>) completedWithinDay)?  $default,) {final _that = this;
switch (_that) {
case _SummaryModel() when $default != null:
return $default(_that.totalToDos,_that.completedToDos,_that.pendingToDos,_that.overdueToDos,_that.totalTagsUsed,_that.overdueUsers,_that.completedWithinDay);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SummaryModel implements SummaryModel {
  const _SummaryModel({required this.totalToDos, required this.completedToDos, required this.pendingToDos, required this.overdueToDos, required this.totalTagsUsed, required this.overdueUsers, required this.completedWithinDay});
  factory _SummaryModel.fromJson(Map<String, dynamic> json) => _$SummaryModelFromJson(json);

@override final  int totalToDos;
@override final  int completedToDos;
@override final  int pendingToDos;
@override final  int overdueToDos;
@override final  int totalTagsUsed;
@override final  (int, List<String>) overdueUsers;
@override final  (int, List<ToDoModel>) completedWithinDay;

/// Create a copy of SummaryModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SummaryModelCopyWith<_SummaryModel> get copyWith => __$SummaryModelCopyWithImpl<_SummaryModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SummaryModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SummaryModel&&(identical(other.totalToDos, totalToDos) || other.totalToDos == totalToDos)&&(identical(other.completedToDos, completedToDos) || other.completedToDos == completedToDos)&&(identical(other.pendingToDos, pendingToDos) || other.pendingToDos == pendingToDos)&&(identical(other.overdueToDos, overdueToDos) || other.overdueToDos == overdueToDos)&&(identical(other.totalTagsUsed, totalTagsUsed) || other.totalTagsUsed == totalTagsUsed)&&(identical(other.overdueUsers, overdueUsers) || other.overdueUsers == overdueUsers)&&(identical(other.completedWithinDay, completedWithinDay) || other.completedWithinDay == completedWithinDay));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalToDos,completedToDos,pendingToDos,overdueToDos,totalTagsUsed,overdueUsers,completedWithinDay);

@override
String toString() {
  return 'SummaryModel(totalToDos: $totalToDos, completedToDos: $completedToDos, pendingToDos: $pendingToDos, overdueToDos: $overdueToDos, totalTagsUsed: $totalTagsUsed, overdueUsers: $overdueUsers, completedWithinDay: $completedWithinDay)';
}


}

/// @nodoc
abstract mixin class _$SummaryModelCopyWith<$Res> implements $SummaryModelCopyWith<$Res> {
  factory _$SummaryModelCopyWith(_SummaryModel value, $Res Function(_SummaryModel) _then) = __$SummaryModelCopyWithImpl;
@override @useResult
$Res call({
 int totalToDos, int completedToDos, int pendingToDos, int overdueToDos, int totalTagsUsed, (int, List<String>) overdueUsers, (int, List<ToDoModel>) completedWithinDay
});




}
/// @nodoc
class __$SummaryModelCopyWithImpl<$Res>
    implements _$SummaryModelCopyWith<$Res> {
  __$SummaryModelCopyWithImpl(this._self, this._then);

  final _SummaryModel _self;
  final $Res Function(_SummaryModel) _then;

/// Create a copy of SummaryModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalToDos = null,Object? completedToDos = null,Object? pendingToDos = null,Object? overdueToDos = null,Object? totalTagsUsed = null,Object? overdueUsers = null,Object? completedWithinDay = null,}) {
  return _then(_SummaryModel(
totalToDos: null == totalToDos ? _self.totalToDos : totalToDos // ignore: cast_nullable_to_non_nullable
as int,completedToDos: null == completedToDos ? _self.completedToDos : completedToDos // ignore: cast_nullable_to_non_nullable
as int,pendingToDos: null == pendingToDos ? _self.pendingToDos : pendingToDos // ignore: cast_nullable_to_non_nullable
as int,overdueToDos: null == overdueToDos ? _self.overdueToDos : overdueToDos // ignore: cast_nullable_to_non_nullable
as int,totalTagsUsed: null == totalTagsUsed ? _self.totalTagsUsed : totalTagsUsed // ignore: cast_nullable_to_non_nullable
as int,overdueUsers: null == overdueUsers ? _self.overdueUsers : overdueUsers // ignore: cast_nullable_to_non_nullable
as (int, List<String>),completedWithinDay: null == completedWithinDay ? _self.completedWithinDay : completedWithinDay // ignore: cast_nullable_to_non_nullable
as (int, List<ToDoModel>),
  ));
}


}

// dart format on
