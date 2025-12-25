// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'note_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NoteEntity implements DiagnosticableTreeMixin {

 String get id; String? get title; String? get content; List<String>? get imagePaths; int? get scheduledNotificationId; DateTime? get scheduledNotificationDateTime; DateTime get lastModifyDate;
/// Create a copy of NoteEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NoteEntityCopyWith<NoteEntity> get copyWith => _$NoteEntityCopyWithImpl<NoteEntity>(this as NoteEntity, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'NoteEntity'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('title', title))..add(DiagnosticsProperty('content', content))..add(DiagnosticsProperty('imagePaths', imagePaths))..add(DiagnosticsProperty('scheduledNotificationId', scheduledNotificationId))..add(DiagnosticsProperty('scheduledNotificationDateTime', scheduledNotificationDateTime))..add(DiagnosticsProperty('lastModifyDate', lastModifyDate));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NoteEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.content, content) || other.content == content)&&const DeepCollectionEquality().equals(other.imagePaths, imagePaths)&&(identical(other.scheduledNotificationId, scheduledNotificationId) || other.scheduledNotificationId == scheduledNotificationId)&&(identical(other.scheduledNotificationDateTime, scheduledNotificationDateTime) || other.scheduledNotificationDateTime == scheduledNotificationDateTime)&&(identical(other.lastModifyDate, lastModifyDate) || other.lastModifyDate == lastModifyDate));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,content,const DeepCollectionEquality().hash(imagePaths),scheduledNotificationId,scheduledNotificationDateTime,lastModifyDate);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'NoteEntity(id: $id, title: $title, content: $content, imagePaths: $imagePaths, scheduledNotificationId: $scheduledNotificationId, scheduledNotificationDateTime: $scheduledNotificationDateTime, lastModifyDate: $lastModifyDate)';
}


}

/// @nodoc
abstract mixin class $NoteEntityCopyWith<$Res>  {
  factory $NoteEntityCopyWith(NoteEntity value, $Res Function(NoteEntity) _then) = _$NoteEntityCopyWithImpl;
@useResult
$Res call({
 String id, String? title, String? content, List<String>? imagePaths, int? scheduledNotificationId, DateTime? scheduledNotificationDateTime, DateTime lastModifyDate
});




}
/// @nodoc
class _$NoteEntityCopyWithImpl<$Res>
    implements $NoteEntityCopyWith<$Res> {
  _$NoteEntityCopyWithImpl(this._self, this._then);

  final NoteEntity _self;
  final $Res Function(NoteEntity) _then;

/// Create a copy of NoteEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = freezed,Object? content = freezed,Object? imagePaths = freezed,Object? scheduledNotificationId = freezed,Object? scheduledNotificationDateTime = freezed,Object? lastModifyDate = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String?,imagePaths: freezed == imagePaths ? _self.imagePaths : imagePaths // ignore: cast_nullable_to_non_nullable
as List<String>?,scheduledNotificationId: freezed == scheduledNotificationId ? _self.scheduledNotificationId : scheduledNotificationId // ignore: cast_nullable_to_non_nullable
as int?,scheduledNotificationDateTime: freezed == scheduledNotificationDateTime ? _self.scheduledNotificationDateTime : scheduledNotificationDateTime // ignore: cast_nullable_to_non_nullable
as DateTime?,lastModifyDate: null == lastModifyDate ? _self.lastModifyDate : lastModifyDate // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [NoteEntity].
extension NoteEntityPatterns on NoteEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NoteEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NoteEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NoteEntity value)  $default,){
final _that = this;
switch (_that) {
case _NoteEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NoteEntity value)?  $default,){
final _that = this;
switch (_that) {
case _NoteEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String? title,  String? content,  List<String>? imagePaths,  int? scheduledNotificationId,  DateTime? scheduledNotificationDateTime,  DateTime lastModifyDate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NoteEntity() when $default != null:
return $default(_that.id,_that.title,_that.content,_that.imagePaths,_that.scheduledNotificationId,_that.scheduledNotificationDateTime,_that.lastModifyDate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String? title,  String? content,  List<String>? imagePaths,  int? scheduledNotificationId,  DateTime? scheduledNotificationDateTime,  DateTime lastModifyDate)  $default,) {final _that = this;
switch (_that) {
case _NoteEntity():
return $default(_that.id,_that.title,_that.content,_that.imagePaths,_that.scheduledNotificationId,_that.scheduledNotificationDateTime,_that.lastModifyDate);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String? title,  String? content,  List<String>? imagePaths,  int? scheduledNotificationId,  DateTime? scheduledNotificationDateTime,  DateTime lastModifyDate)?  $default,) {final _that = this;
switch (_that) {
case _NoteEntity() when $default != null:
return $default(_that.id,_that.title,_that.content,_that.imagePaths,_that.scheduledNotificationId,_that.scheduledNotificationDateTime,_that.lastModifyDate);case _:
  return null;

}
}

}

/// @nodoc


class _NoteEntity extends NoteEntity with DiagnosticableTreeMixin {
  const _NoteEntity({required this.id, this.title, this.content, final  List<String>? imagePaths, this.scheduledNotificationId, this.scheduledNotificationDateTime, required this.lastModifyDate}): _imagePaths = imagePaths,super._();
  

@override final  String id;
@override final  String? title;
@override final  String? content;
 final  List<String>? _imagePaths;
@override List<String>? get imagePaths {
  final value = _imagePaths;
  if (value == null) return null;
  if (_imagePaths is EqualUnmodifiableListView) return _imagePaths;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  int? scheduledNotificationId;
@override final  DateTime? scheduledNotificationDateTime;
@override final  DateTime lastModifyDate;

/// Create a copy of NoteEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NoteEntityCopyWith<_NoteEntity> get copyWith => __$NoteEntityCopyWithImpl<_NoteEntity>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'NoteEntity'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('title', title))..add(DiagnosticsProperty('content', content))..add(DiagnosticsProperty('imagePaths', imagePaths))..add(DiagnosticsProperty('scheduledNotificationId', scheduledNotificationId))..add(DiagnosticsProperty('scheduledNotificationDateTime', scheduledNotificationDateTime))..add(DiagnosticsProperty('lastModifyDate', lastModifyDate));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NoteEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.content, content) || other.content == content)&&const DeepCollectionEquality().equals(other._imagePaths, _imagePaths)&&(identical(other.scheduledNotificationId, scheduledNotificationId) || other.scheduledNotificationId == scheduledNotificationId)&&(identical(other.scheduledNotificationDateTime, scheduledNotificationDateTime) || other.scheduledNotificationDateTime == scheduledNotificationDateTime)&&(identical(other.lastModifyDate, lastModifyDate) || other.lastModifyDate == lastModifyDate));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,content,const DeepCollectionEquality().hash(_imagePaths),scheduledNotificationId,scheduledNotificationDateTime,lastModifyDate);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'NoteEntity(id: $id, title: $title, content: $content, imagePaths: $imagePaths, scheduledNotificationId: $scheduledNotificationId, scheduledNotificationDateTime: $scheduledNotificationDateTime, lastModifyDate: $lastModifyDate)';
}


}

/// @nodoc
abstract mixin class _$NoteEntityCopyWith<$Res> implements $NoteEntityCopyWith<$Res> {
  factory _$NoteEntityCopyWith(_NoteEntity value, $Res Function(_NoteEntity) _then) = __$NoteEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String? title, String? content, List<String>? imagePaths, int? scheduledNotificationId, DateTime? scheduledNotificationDateTime, DateTime lastModifyDate
});




}
/// @nodoc
class __$NoteEntityCopyWithImpl<$Res>
    implements _$NoteEntityCopyWith<$Res> {
  __$NoteEntityCopyWithImpl(this._self, this._then);

  final _NoteEntity _self;
  final $Res Function(_NoteEntity) _then;

/// Create a copy of NoteEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = freezed,Object? content = freezed,Object? imagePaths = freezed,Object? scheduledNotificationId = freezed,Object? scheduledNotificationDateTime = freezed,Object? lastModifyDate = null,}) {
  return _then(_NoteEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String?,imagePaths: freezed == imagePaths ? _self._imagePaths : imagePaths // ignore: cast_nullable_to_non_nullable
as List<String>?,scheduledNotificationId: freezed == scheduledNotificationId ? _self.scheduledNotificationId : scheduledNotificationId // ignore: cast_nullable_to_non_nullable
as int?,scheduledNotificationDateTime: freezed == scheduledNotificationDateTime ? _self.scheduledNotificationDateTime : scheduledNotificationDateTime // ignore: cast_nullable_to_non_nullable
as DateTime?,lastModifyDate: null == lastModifyDate ? _self.lastModifyDate : lastModifyDate // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
