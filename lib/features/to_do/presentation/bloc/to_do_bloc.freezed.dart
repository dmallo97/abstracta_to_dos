// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'to_do_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ToDoState {

 List<ToDoModel> get toDosList; ResultState<ToDoModel> get addToDoResult; ResultState<List<ToDoModel>> get getToDosResult; ResultState<void> get deleteToDoResult; ResultState<ToDoModel> get updateToDoResult; ResultState<void> get completeToDoResult; ResultState<String> get generateDescriptionResult;
/// Create a copy of ToDoState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ToDoStateCopyWith<ToDoState> get copyWith => _$ToDoStateCopyWithImpl<ToDoState>(this as ToDoState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ToDoState&&const DeepCollectionEquality().equals(other.toDosList, toDosList)&&(identical(other.addToDoResult, addToDoResult) || other.addToDoResult == addToDoResult)&&(identical(other.getToDosResult, getToDosResult) || other.getToDosResult == getToDosResult)&&(identical(other.deleteToDoResult, deleteToDoResult) || other.deleteToDoResult == deleteToDoResult)&&(identical(other.updateToDoResult, updateToDoResult) || other.updateToDoResult == updateToDoResult)&&(identical(other.completeToDoResult, completeToDoResult) || other.completeToDoResult == completeToDoResult)&&(identical(other.generateDescriptionResult, generateDescriptionResult) || other.generateDescriptionResult == generateDescriptionResult));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(toDosList),addToDoResult,getToDosResult,deleteToDoResult,updateToDoResult,completeToDoResult,generateDescriptionResult);

@override
String toString() {
  return 'ToDoState(toDosList: $toDosList, addToDoResult: $addToDoResult, getToDosResult: $getToDosResult, deleteToDoResult: $deleteToDoResult, updateToDoResult: $updateToDoResult, completeToDoResult: $completeToDoResult, generateDescriptionResult: $generateDescriptionResult)';
}


}

/// @nodoc
abstract mixin class $ToDoStateCopyWith<$Res>  {
  factory $ToDoStateCopyWith(ToDoState value, $Res Function(ToDoState) _then) = _$ToDoStateCopyWithImpl;
@useResult
$Res call({
 List<ToDoModel> toDosList, ResultState<ToDoModel> addToDoResult, ResultState<List<ToDoModel>> getToDosResult, ResultState<void> deleteToDoResult, ResultState<ToDoModel> updateToDoResult, ResultState<void> completeToDoResult, ResultState<String> generateDescriptionResult
});


$ResultStateCopyWith<ToDoModel, $Res> get addToDoResult;$ResultStateCopyWith<List<ToDoModel>, $Res> get getToDosResult;$ResultStateCopyWith<void, $Res> get deleteToDoResult;$ResultStateCopyWith<ToDoModel, $Res> get updateToDoResult;$ResultStateCopyWith<void, $Res> get completeToDoResult;$ResultStateCopyWith<String, $Res> get generateDescriptionResult;

}
/// @nodoc
class _$ToDoStateCopyWithImpl<$Res>
    implements $ToDoStateCopyWith<$Res> {
  _$ToDoStateCopyWithImpl(this._self, this._then);

  final ToDoState _self;
  final $Res Function(ToDoState) _then;

/// Create a copy of ToDoState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? toDosList = null,Object? addToDoResult = null,Object? getToDosResult = null,Object? deleteToDoResult = null,Object? updateToDoResult = null,Object? completeToDoResult = null,Object? generateDescriptionResult = null,}) {
  return _then(_self.copyWith(
toDosList: null == toDosList ? _self.toDosList : toDosList // ignore: cast_nullable_to_non_nullable
as List<ToDoModel>,addToDoResult: null == addToDoResult ? _self.addToDoResult : addToDoResult // ignore: cast_nullable_to_non_nullable
as ResultState<ToDoModel>,getToDosResult: null == getToDosResult ? _self.getToDosResult : getToDosResult // ignore: cast_nullable_to_non_nullable
as ResultState<List<ToDoModel>>,deleteToDoResult: null == deleteToDoResult ? _self.deleteToDoResult : deleteToDoResult // ignore: cast_nullable_to_non_nullable
as ResultState<void>,updateToDoResult: null == updateToDoResult ? _self.updateToDoResult : updateToDoResult // ignore: cast_nullable_to_non_nullable
as ResultState<ToDoModel>,completeToDoResult: null == completeToDoResult ? _self.completeToDoResult : completeToDoResult // ignore: cast_nullable_to_non_nullable
as ResultState<void>,generateDescriptionResult: null == generateDescriptionResult ? _self.generateDescriptionResult : generateDescriptionResult // ignore: cast_nullable_to_non_nullable
as ResultState<String>,
  ));
}
/// Create a copy of ToDoState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ResultStateCopyWith<ToDoModel, $Res> get addToDoResult {
  
  return $ResultStateCopyWith<ToDoModel, $Res>(_self.addToDoResult, (value) {
    return _then(_self.copyWith(addToDoResult: value));
  });
}/// Create a copy of ToDoState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ResultStateCopyWith<List<ToDoModel>, $Res> get getToDosResult {
  
  return $ResultStateCopyWith<List<ToDoModel>, $Res>(_self.getToDosResult, (value) {
    return _then(_self.copyWith(getToDosResult: value));
  });
}/// Create a copy of ToDoState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ResultStateCopyWith<void, $Res> get deleteToDoResult {
  
  return $ResultStateCopyWith<void, $Res>(_self.deleteToDoResult, (value) {
    return _then(_self.copyWith(deleteToDoResult: value));
  });
}/// Create a copy of ToDoState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ResultStateCopyWith<ToDoModel, $Res> get updateToDoResult {
  
  return $ResultStateCopyWith<ToDoModel, $Res>(_self.updateToDoResult, (value) {
    return _then(_self.copyWith(updateToDoResult: value));
  });
}/// Create a copy of ToDoState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ResultStateCopyWith<void, $Res> get completeToDoResult {
  
  return $ResultStateCopyWith<void, $Res>(_self.completeToDoResult, (value) {
    return _then(_self.copyWith(completeToDoResult: value));
  });
}/// Create a copy of ToDoState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ResultStateCopyWith<String, $Res> get generateDescriptionResult {
  
  return $ResultStateCopyWith<String, $Res>(_self.generateDescriptionResult, (value) {
    return _then(_self.copyWith(generateDescriptionResult: value));
  });
}
}


/// Adds pattern-matching-related methods to [ToDoState].
extension ToDoStatePatterns on ToDoState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ToDoState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ToDoState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ToDoState value)  $default,){
final _that = this;
switch (_that) {
case _ToDoState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ToDoState value)?  $default,){
final _that = this;
switch (_that) {
case _ToDoState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ToDoModel> toDosList,  ResultState<ToDoModel> addToDoResult,  ResultState<List<ToDoModel>> getToDosResult,  ResultState<void> deleteToDoResult,  ResultState<ToDoModel> updateToDoResult,  ResultState<void> completeToDoResult,  ResultState<String> generateDescriptionResult)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ToDoState() when $default != null:
return $default(_that.toDosList,_that.addToDoResult,_that.getToDosResult,_that.deleteToDoResult,_that.updateToDoResult,_that.completeToDoResult,_that.generateDescriptionResult);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ToDoModel> toDosList,  ResultState<ToDoModel> addToDoResult,  ResultState<List<ToDoModel>> getToDosResult,  ResultState<void> deleteToDoResult,  ResultState<ToDoModel> updateToDoResult,  ResultState<void> completeToDoResult,  ResultState<String> generateDescriptionResult)  $default,) {final _that = this;
switch (_that) {
case _ToDoState():
return $default(_that.toDosList,_that.addToDoResult,_that.getToDosResult,_that.deleteToDoResult,_that.updateToDoResult,_that.completeToDoResult,_that.generateDescriptionResult);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ToDoModel> toDosList,  ResultState<ToDoModel> addToDoResult,  ResultState<List<ToDoModel>> getToDosResult,  ResultState<void> deleteToDoResult,  ResultState<ToDoModel> updateToDoResult,  ResultState<void> completeToDoResult,  ResultState<String> generateDescriptionResult)?  $default,) {final _that = this;
switch (_that) {
case _ToDoState() when $default != null:
return $default(_that.toDosList,_that.addToDoResult,_that.getToDosResult,_that.deleteToDoResult,_that.updateToDoResult,_that.completeToDoResult,_that.generateDescriptionResult);case _:
  return null;

}
}

}

/// @nodoc


class _ToDoState implements ToDoState {
  const _ToDoState({final  List<ToDoModel> toDosList = const <ToDoModel>[], this.addToDoResult = const Initial(), this.getToDosResult = const Initial(), this.deleteToDoResult = const Initial(), this.updateToDoResult = const Initial(), this.completeToDoResult = const Initial(), this.generateDescriptionResult = const Initial()}): _toDosList = toDosList;
  

 final  List<ToDoModel> _toDosList;
@override@JsonKey() List<ToDoModel> get toDosList {
  if (_toDosList is EqualUnmodifiableListView) return _toDosList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_toDosList);
}

@override@JsonKey() final  ResultState<ToDoModel> addToDoResult;
@override@JsonKey() final  ResultState<List<ToDoModel>> getToDosResult;
@override@JsonKey() final  ResultState<void> deleteToDoResult;
@override@JsonKey() final  ResultState<ToDoModel> updateToDoResult;
@override@JsonKey() final  ResultState<void> completeToDoResult;
@override@JsonKey() final  ResultState<String> generateDescriptionResult;

/// Create a copy of ToDoState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ToDoStateCopyWith<_ToDoState> get copyWith => __$ToDoStateCopyWithImpl<_ToDoState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ToDoState&&const DeepCollectionEquality().equals(other._toDosList, _toDosList)&&(identical(other.addToDoResult, addToDoResult) || other.addToDoResult == addToDoResult)&&(identical(other.getToDosResult, getToDosResult) || other.getToDosResult == getToDosResult)&&(identical(other.deleteToDoResult, deleteToDoResult) || other.deleteToDoResult == deleteToDoResult)&&(identical(other.updateToDoResult, updateToDoResult) || other.updateToDoResult == updateToDoResult)&&(identical(other.completeToDoResult, completeToDoResult) || other.completeToDoResult == completeToDoResult)&&(identical(other.generateDescriptionResult, generateDescriptionResult) || other.generateDescriptionResult == generateDescriptionResult));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_toDosList),addToDoResult,getToDosResult,deleteToDoResult,updateToDoResult,completeToDoResult,generateDescriptionResult);

@override
String toString() {
  return 'ToDoState(toDosList: $toDosList, addToDoResult: $addToDoResult, getToDosResult: $getToDosResult, deleteToDoResult: $deleteToDoResult, updateToDoResult: $updateToDoResult, completeToDoResult: $completeToDoResult, generateDescriptionResult: $generateDescriptionResult)';
}


}

/// @nodoc
abstract mixin class _$ToDoStateCopyWith<$Res> implements $ToDoStateCopyWith<$Res> {
  factory _$ToDoStateCopyWith(_ToDoState value, $Res Function(_ToDoState) _then) = __$ToDoStateCopyWithImpl;
@override @useResult
$Res call({
 List<ToDoModel> toDosList, ResultState<ToDoModel> addToDoResult, ResultState<List<ToDoModel>> getToDosResult, ResultState<void> deleteToDoResult, ResultState<ToDoModel> updateToDoResult, ResultState<void> completeToDoResult, ResultState<String> generateDescriptionResult
});


@override $ResultStateCopyWith<ToDoModel, $Res> get addToDoResult;@override $ResultStateCopyWith<List<ToDoModel>, $Res> get getToDosResult;@override $ResultStateCopyWith<void, $Res> get deleteToDoResult;@override $ResultStateCopyWith<ToDoModel, $Res> get updateToDoResult;@override $ResultStateCopyWith<void, $Res> get completeToDoResult;@override $ResultStateCopyWith<String, $Res> get generateDescriptionResult;

}
/// @nodoc
class __$ToDoStateCopyWithImpl<$Res>
    implements _$ToDoStateCopyWith<$Res> {
  __$ToDoStateCopyWithImpl(this._self, this._then);

  final _ToDoState _self;
  final $Res Function(_ToDoState) _then;

/// Create a copy of ToDoState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? toDosList = null,Object? addToDoResult = null,Object? getToDosResult = null,Object? deleteToDoResult = null,Object? updateToDoResult = null,Object? completeToDoResult = null,Object? generateDescriptionResult = null,}) {
  return _then(_ToDoState(
toDosList: null == toDosList ? _self._toDosList : toDosList // ignore: cast_nullable_to_non_nullable
as List<ToDoModel>,addToDoResult: null == addToDoResult ? _self.addToDoResult : addToDoResult // ignore: cast_nullable_to_non_nullable
as ResultState<ToDoModel>,getToDosResult: null == getToDosResult ? _self.getToDosResult : getToDosResult // ignore: cast_nullable_to_non_nullable
as ResultState<List<ToDoModel>>,deleteToDoResult: null == deleteToDoResult ? _self.deleteToDoResult : deleteToDoResult // ignore: cast_nullable_to_non_nullable
as ResultState<void>,updateToDoResult: null == updateToDoResult ? _self.updateToDoResult : updateToDoResult // ignore: cast_nullable_to_non_nullable
as ResultState<ToDoModel>,completeToDoResult: null == completeToDoResult ? _self.completeToDoResult : completeToDoResult // ignore: cast_nullable_to_non_nullable
as ResultState<void>,generateDescriptionResult: null == generateDescriptionResult ? _self.generateDescriptionResult : generateDescriptionResult // ignore: cast_nullable_to_non_nullable
as ResultState<String>,
  ));
}

/// Create a copy of ToDoState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ResultStateCopyWith<ToDoModel, $Res> get addToDoResult {
  
  return $ResultStateCopyWith<ToDoModel, $Res>(_self.addToDoResult, (value) {
    return _then(_self.copyWith(addToDoResult: value));
  });
}/// Create a copy of ToDoState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ResultStateCopyWith<List<ToDoModel>, $Res> get getToDosResult {
  
  return $ResultStateCopyWith<List<ToDoModel>, $Res>(_self.getToDosResult, (value) {
    return _then(_self.copyWith(getToDosResult: value));
  });
}/// Create a copy of ToDoState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ResultStateCopyWith<void, $Res> get deleteToDoResult {
  
  return $ResultStateCopyWith<void, $Res>(_self.deleteToDoResult, (value) {
    return _then(_self.copyWith(deleteToDoResult: value));
  });
}/// Create a copy of ToDoState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ResultStateCopyWith<ToDoModel, $Res> get updateToDoResult {
  
  return $ResultStateCopyWith<ToDoModel, $Res>(_self.updateToDoResult, (value) {
    return _then(_self.copyWith(updateToDoResult: value));
  });
}/// Create a copy of ToDoState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ResultStateCopyWith<void, $Res> get completeToDoResult {
  
  return $ResultStateCopyWith<void, $Res>(_self.completeToDoResult, (value) {
    return _then(_self.copyWith(completeToDoResult: value));
  });
}/// Create a copy of ToDoState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ResultStateCopyWith<String, $Res> get generateDescriptionResult {
  
  return $ResultStateCopyWith<String, $Res>(_self.generateDescriptionResult, (value) {
    return _then(_self.copyWith(generateDescriptionResult: value));
  });
}
}

/// @nodoc
mixin _$ToDoEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ToDoEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ToDoEvent()';
}


}

/// @nodoc
class $ToDoEventCopyWith<$Res>  {
$ToDoEventCopyWith(ToDoEvent _, $Res Function(ToDoEvent) __);
}


/// Adds pattern-matching-related methods to [ToDoEvent].
extension ToDoEventPatterns on ToDoEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LoadToDosEvent value)?  loadToDos,TResult Function( AddToDoEvent value)?  addToDo,TResult Function( DeleteToDoEvent value)?  deleteToDo,TResult Function( UpdateToDoEvent value)?  updateToDo,TResult Function( GetToDoByIdEvent value)?  getToDoById,TResult Function( GenerateDescriptionEvent value)?  generateDescription,TResult Function( CompleteToDoEvent value)?  completeToDo,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LoadToDosEvent() when loadToDos != null:
return loadToDos(_that);case AddToDoEvent() when addToDo != null:
return addToDo(_that);case DeleteToDoEvent() when deleteToDo != null:
return deleteToDo(_that);case UpdateToDoEvent() when updateToDo != null:
return updateToDo(_that);case GetToDoByIdEvent() when getToDoById != null:
return getToDoById(_that);case GenerateDescriptionEvent() when generateDescription != null:
return generateDescription(_that);case CompleteToDoEvent() when completeToDo != null:
return completeToDo(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LoadToDosEvent value)  loadToDos,required TResult Function( AddToDoEvent value)  addToDo,required TResult Function( DeleteToDoEvent value)  deleteToDo,required TResult Function( UpdateToDoEvent value)  updateToDo,required TResult Function( GetToDoByIdEvent value)  getToDoById,required TResult Function( GenerateDescriptionEvent value)  generateDescription,required TResult Function( CompleteToDoEvent value)  completeToDo,}){
final _that = this;
switch (_that) {
case LoadToDosEvent():
return loadToDos(_that);case AddToDoEvent():
return addToDo(_that);case DeleteToDoEvent():
return deleteToDo(_that);case UpdateToDoEvent():
return updateToDo(_that);case GetToDoByIdEvent():
return getToDoById(_that);case GenerateDescriptionEvent():
return generateDescription(_that);case CompleteToDoEvent():
return completeToDo(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LoadToDosEvent value)?  loadToDos,TResult? Function( AddToDoEvent value)?  addToDo,TResult? Function( DeleteToDoEvent value)?  deleteToDo,TResult? Function( UpdateToDoEvent value)?  updateToDo,TResult? Function( GetToDoByIdEvent value)?  getToDoById,TResult? Function( GenerateDescriptionEvent value)?  generateDescription,TResult? Function( CompleteToDoEvent value)?  completeToDo,}){
final _that = this;
switch (_that) {
case LoadToDosEvent() when loadToDos != null:
return loadToDos(_that);case AddToDoEvent() when addToDo != null:
return addToDo(_that);case DeleteToDoEvent() when deleteToDo != null:
return deleteToDo(_that);case UpdateToDoEvent() when updateToDo != null:
return updateToDo(_that);case GetToDoByIdEvent() when getToDoById != null:
return getToDoById(_that);case GenerateDescriptionEvent() when generateDescription != null:
return generateDescription(_that);case CompleteToDoEvent() when completeToDo != null:
return completeToDo(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loadToDos,TResult Function( String title,  String description,  DateTime? dueDate,  String assignedTo,  List<String> tags)?  addToDo,TResult Function( String id)?  deleteToDo,TResult Function( ToDoModel toDo)?  updateToDo,TResult Function( String id)?  getToDoById,TResult Function( String prompt)?  generateDescription,TResult Function( ToDoModel toDo)?  completeToDo,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LoadToDosEvent() when loadToDos != null:
return loadToDos();case AddToDoEvent() when addToDo != null:
return addToDo(_that.title,_that.description,_that.dueDate,_that.assignedTo,_that.tags);case DeleteToDoEvent() when deleteToDo != null:
return deleteToDo(_that.id);case UpdateToDoEvent() when updateToDo != null:
return updateToDo(_that.toDo);case GetToDoByIdEvent() when getToDoById != null:
return getToDoById(_that.id);case GenerateDescriptionEvent() when generateDescription != null:
return generateDescription(_that.prompt);case CompleteToDoEvent() when completeToDo != null:
return completeToDo(_that.toDo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loadToDos,required TResult Function( String title,  String description,  DateTime? dueDate,  String assignedTo,  List<String> tags)  addToDo,required TResult Function( String id)  deleteToDo,required TResult Function( ToDoModel toDo)  updateToDo,required TResult Function( String id)  getToDoById,required TResult Function( String prompt)  generateDescription,required TResult Function( ToDoModel toDo)  completeToDo,}) {final _that = this;
switch (_that) {
case LoadToDosEvent():
return loadToDos();case AddToDoEvent():
return addToDo(_that.title,_that.description,_that.dueDate,_that.assignedTo,_that.tags);case DeleteToDoEvent():
return deleteToDo(_that.id);case UpdateToDoEvent():
return updateToDo(_that.toDo);case GetToDoByIdEvent():
return getToDoById(_that.id);case GenerateDescriptionEvent():
return generateDescription(_that.prompt);case CompleteToDoEvent():
return completeToDo(_that.toDo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loadToDos,TResult? Function( String title,  String description,  DateTime? dueDate,  String assignedTo,  List<String> tags)?  addToDo,TResult? Function( String id)?  deleteToDo,TResult? Function( ToDoModel toDo)?  updateToDo,TResult? Function( String id)?  getToDoById,TResult? Function( String prompt)?  generateDescription,TResult? Function( ToDoModel toDo)?  completeToDo,}) {final _that = this;
switch (_that) {
case LoadToDosEvent() when loadToDos != null:
return loadToDos();case AddToDoEvent() when addToDo != null:
return addToDo(_that.title,_that.description,_that.dueDate,_that.assignedTo,_that.tags);case DeleteToDoEvent() when deleteToDo != null:
return deleteToDo(_that.id);case UpdateToDoEvent() when updateToDo != null:
return updateToDo(_that.toDo);case GetToDoByIdEvent() when getToDoById != null:
return getToDoById(_that.id);case GenerateDescriptionEvent() when generateDescription != null:
return generateDescription(_that.prompt);case CompleteToDoEvent() when completeToDo != null:
return completeToDo(_that.toDo);case _:
  return null;

}
}

}

/// @nodoc


class LoadToDosEvent implements ToDoEvent {
  const LoadToDosEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadToDosEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ToDoEvent.loadToDos()';
}


}




/// @nodoc


class AddToDoEvent implements ToDoEvent {
  const AddToDoEvent({required this.title, required this.description, this.dueDate, required this.assignedTo, final  List<String> tags = const <String>[]}): _tags = tags;
  

 final  String title;
 final  String description;
 final  DateTime? dueDate;
 final  String assignedTo;
 final  List<String> _tags;
@JsonKey() List<String> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}


/// Create a copy of ToDoEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddToDoEventCopyWith<AddToDoEvent> get copyWith => _$AddToDoEventCopyWithImpl<AddToDoEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddToDoEvent&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.dueDate, dueDate) || other.dueDate == dueDate)&&(identical(other.assignedTo, assignedTo) || other.assignedTo == assignedTo)&&const DeepCollectionEquality().equals(other._tags, _tags));
}


@override
int get hashCode => Object.hash(runtimeType,title,description,dueDate,assignedTo,const DeepCollectionEquality().hash(_tags));

@override
String toString() {
  return 'ToDoEvent.addToDo(title: $title, description: $description, dueDate: $dueDate, assignedTo: $assignedTo, tags: $tags)';
}


}

/// @nodoc
abstract mixin class $AddToDoEventCopyWith<$Res> implements $ToDoEventCopyWith<$Res> {
  factory $AddToDoEventCopyWith(AddToDoEvent value, $Res Function(AddToDoEvent) _then) = _$AddToDoEventCopyWithImpl;
@useResult
$Res call({
 String title, String description, DateTime? dueDate, String assignedTo, List<String> tags
});




}
/// @nodoc
class _$AddToDoEventCopyWithImpl<$Res>
    implements $AddToDoEventCopyWith<$Res> {
  _$AddToDoEventCopyWithImpl(this._self, this._then);

  final AddToDoEvent _self;
  final $Res Function(AddToDoEvent) _then;

/// Create a copy of ToDoEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? title = null,Object? description = null,Object? dueDate = freezed,Object? assignedTo = null,Object? tags = null,}) {
  return _then(AddToDoEvent(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,dueDate: freezed == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as DateTime?,assignedTo: null == assignedTo ? _self.assignedTo : assignedTo // ignore: cast_nullable_to_non_nullable
as String,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

/// @nodoc


class DeleteToDoEvent implements ToDoEvent {
  const DeleteToDoEvent(this.id);
  

 final  String id;

/// Create a copy of ToDoEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteToDoEventCopyWith<DeleteToDoEvent> get copyWith => _$DeleteToDoEventCopyWithImpl<DeleteToDoEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteToDoEvent&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'ToDoEvent.deleteToDo(id: $id)';
}


}

/// @nodoc
abstract mixin class $DeleteToDoEventCopyWith<$Res> implements $ToDoEventCopyWith<$Res> {
  factory $DeleteToDoEventCopyWith(DeleteToDoEvent value, $Res Function(DeleteToDoEvent) _then) = _$DeleteToDoEventCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class _$DeleteToDoEventCopyWithImpl<$Res>
    implements $DeleteToDoEventCopyWith<$Res> {
  _$DeleteToDoEventCopyWithImpl(this._self, this._then);

  final DeleteToDoEvent _self;
  final $Res Function(DeleteToDoEvent) _then;

/// Create a copy of ToDoEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(DeleteToDoEvent(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class UpdateToDoEvent implements ToDoEvent {
  const UpdateToDoEvent(this.toDo);
  

 final  ToDoModel toDo;

/// Create a copy of ToDoEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateToDoEventCopyWith<UpdateToDoEvent> get copyWith => _$UpdateToDoEventCopyWithImpl<UpdateToDoEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateToDoEvent&&(identical(other.toDo, toDo) || other.toDo == toDo));
}


@override
int get hashCode => Object.hash(runtimeType,toDo);

@override
String toString() {
  return 'ToDoEvent.updateToDo(toDo: $toDo)';
}


}

/// @nodoc
abstract mixin class $UpdateToDoEventCopyWith<$Res> implements $ToDoEventCopyWith<$Res> {
  factory $UpdateToDoEventCopyWith(UpdateToDoEvent value, $Res Function(UpdateToDoEvent) _then) = _$UpdateToDoEventCopyWithImpl;
@useResult
$Res call({
 ToDoModel toDo
});


$ToDoModelCopyWith<$Res> get toDo;

}
/// @nodoc
class _$UpdateToDoEventCopyWithImpl<$Res>
    implements $UpdateToDoEventCopyWith<$Res> {
  _$UpdateToDoEventCopyWithImpl(this._self, this._then);

  final UpdateToDoEvent _self;
  final $Res Function(UpdateToDoEvent) _then;

/// Create a copy of ToDoEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? toDo = null,}) {
  return _then(UpdateToDoEvent(
null == toDo ? _self.toDo : toDo // ignore: cast_nullable_to_non_nullable
as ToDoModel,
  ));
}

/// Create a copy of ToDoEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ToDoModelCopyWith<$Res> get toDo {
  
  return $ToDoModelCopyWith<$Res>(_self.toDo, (value) {
    return _then(_self.copyWith(toDo: value));
  });
}
}

/// @nodoc


class GetToDoByIdEvent implements ToDoEvent {
  const GetToDoByIdEvent(this.id);
  

 final  String id;

/// Create a copy of ToDoEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetToDoByIdEventCopyWith<GetToDoByIdEvent> get copyWith => _$GetToDoByIdEventCopyWithImpl<GetToDoByIdEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetToDoByIdEvent&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'ToDoEvent.getToDoById(id: $id)';
}


}

/// @nodoc
abstract mixin class $GetToDoByIdEventCopyWith<$Res> implements $ToDoEventCopyWith<$Res> {
  factory $GetToDoByIdEventCopyWith(GetToDoByIdEvent value, $Res Function(GetToDoByIdEvent) _then) = _$GetToDoByIdEventCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class _$GetToDoByIdEventCopyWithImpl<$Res>
    implements $GetToDoByIdEventCopyWith<$Res> {
  _$GetToDoByIdEventCopyWithImpl(this._self, this._then);

  final GetToDoByIdEvent _self;
  final $Res Function(GetToDoByIdEvent) _then;

/// Create a copy of ToDoEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(GetToDoByIdEvent(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class GenerateDescriptionEvent implements ToDoEvent {
  const GenerateDescriptionEvent(this.prompt);
  

 final  String prompt;

/// Create a copy of ToDoEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GenerateDescriptionEventCopyWith<GenerateDescriptionEvent> get copyWith => _$GenerateDescriptionEventCopyWithImpl<GenerateDescriptionEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GenerateDescriptionEvent&&(identical(other.prompt, prompt) || other.prompt == prompt));
}


@override
int get hashCode => Object.hash(runtimeType,prompt);

@override
String toString() {
  return 'ToDoEvent.generateDescription(prompt: $prompt)';
}


}

/// @nodoc
abstract mixin class $GenerateDescriptionEventCopyWith<$Res> implements $ToDoEventCopyWith<$Res> {
  factory $GenerateDescriptionEventCopyWith(GenerateDescriptionEvent value, $Res Function(GenerateDescriptionEvent) _then) = _$GenerateDescriptionEventCopyWithImpl;
@useResult
$Res call({
 String prompt
});




}
/// @nodoc
class _$GenerateDescriptionEventCopyWithImpl<$Res>
    implements $GenerateDescriptionEventCopyWith<$Res> {
  _$GenerateDescriptionEventCopyWithImpl(this._self, this._then);

  final GenerateDescriptionEvent _self;
  final $Res Function(GenerateDescriptionEvent) _then;

/// Create a copy of ToDoEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? prompt = null,}) {
  return _then(GenerateDescriptionEvent(
null == prompt ? _self.prompt : prompt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class CompleteToDoEvent implements ToDoEvent {
  const CompleteToDoEvent(this.toDo);
  

 final  ToDoModel toDo;

/// Create a copy of ToDoEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CompleteToDoEventCopyWith<CompleteToDoEvent> get copyWith => _$CompleteToDoEventCopyWithImpl<CompleteToDoEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CompleteToDoEvent&&(identical(other.toDo, toDo) || other.toDo == toDo));
}


@override
int get hashCode => Object.hash(runtimeType,toDo);

@override
String toString() {
  return 'ToDoEvent.completeToDo(toDo: $toDo)';
}


}

/// @nodoc
abstract mixin class $CompleteToDoEventCopyWith<$Res> implements $ToDoEventCopyWith<$Res> {
  factory $CompleteToDoEventCopyWith(CompleteToDoEvent value, $Res Function(CompleteToDoEvent) _then) = _$CompleteToDoEventCopyWithImpl;
@useResult
$Res call({
 ToDoModel toDo
});


$ToDoModelCopyWith<$Res> get toDo;

}
/// @nodoc
class _$CompleteToDoEventCopyWithImpl<$Res>
    implements $CompleteToDoEventCopyWith<$Res> {
  _$CompleteToDoEventCopyWithImpl(this._self, this._then);

  final CompleteToDoEvent _self;
  final $Res Function(CompleteToDoEvent) _then;

/// Create a copy of ToDoEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? toDo = null,}) {
  return _then(CompleteToDoEvent(
null == toDo ? _self.toDo : toDo // ignore: cast_nullable_to_non_nullable
as ToDoModel,
  ));
}

/// Create a copy of ToDoEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ToDoModelCopyWith<$Res> get toDo {
  
  return $ToDoModelCopyWith<$Res>(_self.toDo, (value) {
    return _then(_self.copyWith(toDo: value));
  });
}
}

// dart format on
