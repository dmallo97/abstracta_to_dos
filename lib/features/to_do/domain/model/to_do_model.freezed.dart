// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'to_do_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ToDoModel {

@JsonKey(name: 'otherId') String get todoId; String get title; String get description; DateTime? get dueDate;@JsonKey(fromJson: _fromJsonBool, toJson: _toJsonBool) bool get isCompleted; String get assignedTo; DateTime? get completedAt;@JsonKey(includeToJson: false) List<String> get tags;
/// Create a copy of ToDoModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ToDoModelCopyWith<ToDoModel> get copyWith => _$ToDoModelCopyWithImpl<ToDoModel>(this as ToDoModel, _$identity);

  /// Serializes this ToDoModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ToDoModel&&(identical(other.todoId, todoId) || other.todoId == todoId)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.dueDate, dueDate) || other.dueDate == dueDate)&&(identical(other.isCompleted, isCompleted) || other.isCompleted == isCompleted)&&(identical(other.assignedTo, assignedTo) || other.assignedTo == assignedTo)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt)&&const DeepCollectionEquality().equals(other.tags, tags));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,todoId,title,description,dueDate,isCompleted,assignedTo,completedAt,const DeepCollectionEquality().hash(tags));

@override
String toString() {
  return 'ToDoModel(todoId: $todoId, title: $title, description: $description, dueDate: $dueDate, isCompleted: $isCompleted, assignedTo: $assignedTo, completedAt: $completedAt, tags: $tags)';
}


}

/// @nodoc
abstract mixin class $ToDoModelCopyWith<$Res>  {
  factory $ToDoModelCopyWith(ToDoModel value, $Res Function(ToDoModel) _then) = _$ToDoModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'otherId') String todoId, String title, String description, DateTime? dueDate,@JsonKey(fromJson: _fromJsonBool, toJson: _toJsonBool) bool isCompleted, String assignedTo, DateTime? completedAt,@JsonKey(includeToJson: false) List<String> tags
});




}
/// @nodoc
class _$ToDoModelCopyWithImpl<$Res>
    implements $ToDoModelCopyWith<$Res> {
  _$ToDoModelCopyWithImpl(this._self, this._then);

  final ToDoModel _self;
  final $Res Function(ToDoModel) _then;

/// Create a copy of ToDoModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? todoId = null,Object? title = null,Object? description = null,Object? dueDate = freezed,Object? isCompleted = null,Object? assignedTo = null,Object? completedAt = freezed,Object? tags = null,}) {
  return _then(_self.copyWith(
todoId: null == todoId ? _self.todoId : todoId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,dueDate: freezed == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as DateTime?,isCompleted: null == isCompleted ? _self.isCompleted : isCompleted // ignore: cast_nullable_to_non_nullable
as bool,assignedTo: null == assignedTo ? _self.assignedTo : assignedTo // ignore: cast_nullable_to_non_nullable
as String,completedAt: freezed == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [ToDoModel].
extension ToDoModelPatterns on ToDoModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ToDoModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ToDoModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ToDoModel value)  $default,){
final _that = this;
switch (_that) {
case _ToDoModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ToDoModel value)?  $default,){
final _that = this;
switch (_that) {
case _ToDoModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'otherId')  String todoId,  String title,  String description,  DateTime? dueDate, @JsonKey(fromJson: _fromJsonBool, toJson: _toJsonBool)  bool isCompleted,  String assignedTo,  DateTime? completedAt, @JsonKey(includeToJson: false)  List<String> tags)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ToDoModel() when $default != null:
return $default(_that.todoId,_that.title,_that.description,_that.dueDate,_that.isCompleted,_that.assignedTo,_that.completedAt,_that.tags);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'otherId')  String todoId,  String title,  String description,  DateTime? dueDate, @JsonKey(fromJson: _fromJsonBool, toJson: _toJsonBool)  bool isCompleted,  String assignedTo,  DateTime? completedAt, @JsonKey(includeToJson: false)  List<String> tags)  $default,) {final _that = this;
switch (_that) {
case _ToDoModel():
return $default(_that.todoId,_that.title,_that.description,_that.dueDate,_that.isCompleted,_that.assignedTo,_that.completedAt,_that.tags);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'otherId')  String todoId,  String title,  String description,  DateTime? dueDate, @JsonKey(fromJson: _fromJsonBool, toJson: _toJsonBool)  bool isCompleted,  String assignedTo,  DateTime? completedAt, @JsonKey(includeToJson: false)  List<String> tags)?  $default,) {final _that = this;
switch (_that) {
case _ToDoModel() when $default != null:
return $default(_that.todoId,_that.title,_that.description,_that.dueDate,_that.isCompleted,_that.assignedTo,_that.completedAt,_that.tags);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ToDoModel extends ToDoModel {
  const _ToDoModel({@JsonKey(name: 'otherId') required this.todoId, required this.title, required this.description, this.dueDate, @JsonKey(fromJson: _fromJsonBool, toJson: _toJsonBool) required this.isCompleted, required this.assignedTo, this.completedAt, @JsonKey(includeToJson: false) final  List<String> tags = const <String>[]}): _tags = tags,super._();
  factory _ToDoModel.fromJson(Map<String, dynamic> json) => _$ToDoModelFromJson(json);

@override@JsonKey(name: 'otherId') final  String todoId;
@override final  String title;
@override final  String description;
@override final  DateTime? dueDate;
@override@JsonKey(fromJson: _fromJsonBool, toJson: _toJsonBool) final  bool isCompleted;
@override final  String assignedTo;
@override final  DateTime? completedAt;
 final  List<String> _tags;
@override@JsonKey(includeToJson: false) List<String> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}


/// Create a copy of ToDoModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ToDoModelCopyWith<_ToDoModel> get copyWith => __$ToDoModelCopyWithImpl<_ToDoModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ToDoModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ToDoModel&&(identical(other.todoId, todoId) || other.todoId == todoId)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.dueDate, dueDate) || other.dueDate == dueDate)&&(identical(other.isCompleted, isCompleted) || other.isCompleted == isCompleted)&&(identical(other.assignedTo, assignedTo) || other.assignedTo == assignedTo)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt)&&const DeepCollectionEquality().equals(other._tags, _tags));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,todoId,title,description,dueDate,isCompleted,assignedTo,completedAt,const DeepCollectionEquality().hash(_tags));

@override
String toString() {
  return 'ToDoModel(todoId: $todoId, title: $title, description: $description, dueDate: $dueDate, isCompleted: $isCompleted, assignedTo: $assignedTo, completedAt: $completedAt, tags: $tags)';
}


}

/// @nodoc
abstract mixin class _$ToDoModelCopyWith<$Res> implements $ToDoModelCopyWith<$Res> {
  factory _$ToDoModelCopyWith(_ToDoModel value, $Res Function(_ToDoModel) _then) = __$ToDoModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'otherId') String todoId, String title, String description, DateTime? dueDate,@JsonKey(fromJson: _fromJsonBool, toJson: _toJsonBool) bool isCompleted, String assignedTo, DateTime? completedAt,@JsonKey(includeToJson: false) List<String> tags
});




}
/// @nodoc
class __$ToDoModelCopyWithImpl<$Res>
    implements _$ToDoModelCopyWith<$Res> {
  __$ToDoModelCopyWithImpl(this._self, this._then);

  final _ToDoModel _self;
  final $Res Function(_ToDoModel) _then;

/// Create a copy of ToDoModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? todoId = null,Object? title = null,Object? description = null,Object? dueDate = freezed,Object? isCompleted = null,Object? assignedTo = null,Object? completedAt = freezed,Object? tags = null,}) {
  return _then(_ToDoModel(
todoId: null == todoId ? _self.todoId : todoId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,dueDate: freezed == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as DateTime?,isCompleted: null == isCompleted ? _self.isCompleted : isCompleted // ignore: cast_nullable_to_non_nullable
as bool,assignedTo: null == assignedTo ? _self.assignedTo : assignedTo // ignore: cast_nullable_to_non_nullable
as String,completedAt: freezed == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
