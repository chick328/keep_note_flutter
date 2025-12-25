// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EditEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EditEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EditEvent()';
}


}

/// @nodoc
class $EditEventCopyWith<$Res>  {
$EditEventCopyWith(EditEvent _, $Res Function(EditEvent) __);
}


/// Adds pattern-matching-related methods to [EditEvent].
extension EditEventPatterns on EditEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _FetchNoteById value)?  fetchNoteById,TResult Function( _OnTitleChanged value)?  onTitleChanged,TResult Function( _OnContentChanged value)?  onContentChanged,TResult Function( _SaveNote value)?  saveNote,TResult Function( _PickImages value)?  pickImages,TResult Function( _ScheduleNotification value)?  scheduleNotification,TResult Function( _CancelScheduleNotification value)?  cancelScheduledNotification,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FetchNoteById() when fetchNoteById != null:
return fetchNoteById(_that);case _OnTitleChanged() when onTitleChanged != null:
return onTitleChanged(_that);case _OnContentChanged() when onContentChanged != null:
return onContentChanged(_that);case _SaveNote() when saveNote != null:
return saveNote(_that);case _PickImages() when pickImages != null:
return pickImages(_that);case _ScheduleNotification() when scheduleNotification != null:
return scheduleNotification(_that);case _CancelScheduleNotification() when cancelScheduledNotification != null:
return cancelScheduledNotification(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _FetchNoteById value)  fetchNoteById,required TResult Function( _OnTitleChanged value)  onTitleChanged,required TResult Function( _OnContentChanged value)  onContentChanged,required TResult Function( _SaveNote value)  saveNote,required TResult Function( _PickImages value)  pickImages,required TResult Function( _ScheduleNotification value)  scheduleNotification,required TResult Function( _CancelScheduleNotification value)  cancelScheduledNotification,}){
final _that = this;
switch (_that) {
case _FetchNoteById():
return fetchNoteById(_that);case _OnTitleChanged():
return onTitleChanged(_that);case _OnContentChanged():
return onContentChanged(_that);case _SaveNote():
return saveNote(_that);case _PickImages():
return pickImages(_that);case _ScheduleNotification():
return scheduleNotification(_that);case _CancelScheduleNotification():
return cancelScheduledNotification(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _FetchNoteById value)?  fetchNoteById,TResult? Function( _OnTitleChanged value)?  onTitleChanged,TResult? Function( _OnContentChanged value)?  onContentChanged,TResult? Function( _SaveNote value)?  saveNote,TResult? Function( _PickImages value)?  pickImages,TResult? Function( _ScheduleNotification value)?  scheduleNotification,TResult? Function( _CancelScheduleNotification value)?  cancelScheduledNotification,}){
final _that = this;
switch (_that) {
case _FetchNoteById() when fetchNoteById != null:
return fetchNoteById(_that);case _OnTitleChanged() when onTitleChanged != null:
return onTitleChanged(_that);case _OnContentChanged() when onContentChanged != null:
return onContentChanged(_that);case _SaveNote() when saveNote != null:
return saveNote(_that);case _PickImages() when pickImages != null:
return pickImages(_that);case _ScheduleNotification() when scheduleNotification != null:
return scheduleNotification(_that);case _CancelScheduleNotification() when cancelScheduledNotification != null:
return cancelScheduledNotification(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String? id)?  fetchNoteById,TResult Function( String title)?  onTitleChanged,TResult Function( String content)?  onContentChanged,TResult Function()?  saveNote,TResult Function( List<File> images)?  pickImages,TResult Function( DateTime dateTime)?  scheduleNotification,TResult Function()?  cancelScheduledNotification,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FetchNoteById() when fetchNoteById != null:
return fetchNoteById(_that.id);case _OnTitleChanged() when onTitleChanged != null:
return onTitleChanged(_that.title);case _OnContentChanged() when onContentChanged != null:
return onContentChanged(_that.content);case _SaveNote() when saveNote != null:
return saveNote();case _PickImages() when pickImages != null:
return pickImages(_that.images);case _ScheduleNotification() when scheduleNotification != null:
return scheduleNotification(_that.dateTime);case _CancelScheduleNotification() when cancelScheduledNotification != null:
return cancelScheduledNotification();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String? id)  fetchNoteById,required TResult Function( String title)  onTitleChanged,required TResult Function( String content)  onContentChanged,required TResult Function()  saveNote,required TResult Function( List<File> images)  pickImages,required TResult Function( DateTime dateTime)  scheduleNotification,required TResult Function()  cancelScheduledNotification,}) {final _that = this;
switch (_that) {
case _FetchNoteById():
return fetchNoteById(_that.id);case _OnTitleChanged():
return onTitleChanged(_that.title);case _OnContentChanged():
return onContentChanged(_that.content);case _SaveNote():
return saveNote();case _PickImages():
return pickImages(_that.images);case _ScheduleNotification():
return scheduleNotification(_that.dateTime);case _CancelScheduleNotification():
return cancelScheduledNotification();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String? id)?  fetchNoteById,TResult? Function( String title)?  onTitleChanged,TResult? Function( String content)?  onContentChanged,TResult? Function()?  saveNote,TResult? Function( List<File> images)?  pickImages,TResult? Function( DateTime dateTime)?  scheduleNotification,TResult? Function()?  cancelScheduledNotification,}) {final _that = this;
switch (_that) {
case _FetchNoteById() when fetchNoteById != null:
return fetchNoteById(_that.id);case _OnTitleChanged() when onTitleChanged != null:
return onTitleChanged(_that.title);case _OnContentChanged() when onContentChanged != null:
return onContentChanged(_that.content);case _SaveNote() when saveNote != null:
return saveNote();case _PickImages() when pickImages != null:
return pickImages(_that.images);case _ScheduleNotification() when scheduleNotification != null:
return scheduleNotification(_that.dateTime);case _CancelScheduleNotification() when cancelScheduledNotification != null:
return cancelScheduledNotification();case _:
  return null;

}
}

}

/// @nodoc


class _FetchNoteById implements EditEvent {
  const _FetchNoteById(this.id);
  

 final  String? id;

/// Create a copy of EditEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FetchNoteByIdCopyWith<_FetchNoteById> get copyWith => __$FetchNoteByIdCopyWithImpl<_FetchNoteById>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FetchNoteById&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'EditEvent.fetchNoteById(id: $id)';
}


}

/// @nodoc
abstract mixin class _$FetchNoteByIdCopyWith<$Res> implements $EditEventCopyWith<$Res> {
  factory _$FetchNoteByIdCopyWith(_FetchNoteById value, $Res Function(_FetchNoteById) _then) = __$FetchNoteByIdCopyWithImpl;
@useResult
$Res call({
 String? id
});




}
/// @nodoc
class __$FetchNoteByIdCopyWithImpl<$Res>
    implements _$FetchNoteByIdCopyWith<$Res> {
  __$FetchNoteByIdCopyWithImpl(this._self, this._then);

  final _FetchNoteById _self;
  final $Res Function(_FetchNoteById) _then;

/// Create a copy of EditEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = freezed,}) {
  return _then(_FetchNoteById(
freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _OnTitleChanged implements EditEvent {
  const _OnTitleChanged(this.title);
  

 final  String title;

/// Create a copy of EditEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OnTitleChangedCopyWith<_OnTitleChanged> get copyWith => __$OnTitleChangedCopyWithImpl<_OnTitleChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OnTitleChanged&&(identical(other.title, title) || other.title == title));
}


@override
int get hashCode => Object.hash(runtimeType,title);

@override
String toString() {
  return 'EditEvent.onTitleChanged(title: $title)';
}


}

/// @nodoc
abstract mixin class _$OnTitleChangedCopyWith<$Res> implements $EditEventCopyWith<$Res> {
  factory _$OnTitleChangedCopyWith(_OnTitleChanged value, $Res Function(_OnTitleChanged) _then) = __$OnTitleChangedCopyWithImpl;
@useResult
$Res call({
 String title
});




}
/// @nodoc
class __$OnTitleChangedCopyWithImpl<$Res>
    implements _$OnTitleChangedCopyWith<$Res> {
  __$OnTitleChangedCopyWithImpl(this._self, this._then);

  final _OnTitleChanged _self;
  final $Res Function(_OnTitleChanged) _then;

/// Create a copy of EditEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? title = null,}) {
  return _then(_OnTitleChanged(
null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _OnContentChanged implements EditEvent {
  const _OnContentChanged(this.content);
  

 final  String content;

/// Create a copy of EditEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OnContentChangedCopyWith<_OnContentChanged> get copyWith => __$OnContentChangedCopyWithImpl<_OnContentChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OnContentChanged&&(identical(other.content, content) || other.content == content));
}


@override
int get hashCode => Object.hash(runtimeType,content);

@override
String toString() {
  return 'EditEvent.onContentChanged(content: $content)';
}


}

/// @nodoc
abstract mixin class _$OnContentChangedCopyWith<$Res> implements $EditEventCopyWith<$Res> {
  factory _$OnContentChangedCopyWith(_OnContentChanged value, $Res Function(_OnContentChanged) _then) = __$OnContentChangedCopyWithImpl;
@useResult
$Res call({
 String content
});




}
/// @nodoc
class __$OnContentChangedCopyWithImpl<$Res>
    implements _$OnContentChangedCopyWith<$Res> {
  __$OnContentChangedCopyWithImpl(this._self, this._then);

  final _OnContentChanged _self;
  final $Res Function(_OnContentChanged) _then;

/// Create a copy of EditEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? content = null,}) {
  return _then(_OnContentChanged(
null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _SaveNote implements EditEvent {
  const _SaveNote();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SaveNote);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EditEvent.saveNote()';
}


}




/// @nodoc


class _PickImages implements EditEvent {
  const _PickImages(final  List<File> images): _images = images;
  

 final  List<File> _images;
 List<File> get images {
  if (_images is EqualUnmodifiableListView) return _images;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_images);
}


/// Create a copy of EditEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PickImagesCopyWith<_PickImages> get copyWith => __$PickImagesCopyWithImpl<_PickImages>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PickImages&&const DeepCollectionEquality().equals(other._images, _images));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_images));

@override
String toString() {
  return 'EditEvent.pickImages(images: $images)';
}


}

/// @nodoc
abstract mixin class _$PickImagesCopyWith<$Res> implements $EditEventCopyWith<$Res> {
  factory _$PickImagesCopyWith(_PickImages value, $Res Function(_PickImages) _then) = __$PickImagesCopyWithImpl;
@useResult
$Res call({
 List<File> images
});




}
/// @nodoc
class __$PickImagesCopyWithImpl<$Res>
    implements _$PickImagesCopyWith<$Res> {
  __$PickImagesCopyWithImpl(this._self, this._then);

  final _PickImages _self;
  final $Res Function(_PickImages) _then;

/// Create a copy of EditEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? images = null,}) {
  return _then(_PickImages(
null == images ? _self._images : images // ignore: cast_nullable_to_non_nullable
as List<File>,
  ));
}


}

/// @nodoc


class _ScheduleNotification implements EditEvent {
  const _ScheduleNotification(this.dateTime);
  

 final  DateTime dateTime;

/// Create a copy of EditEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ScheduleNotificationCopyWith<_ScheduleNotification> get copyWith => __$ScheduleNotificationCopyWithImpl<_ScheduleNotification>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ScheduleNotification&&(identical(other.dateTime, dateTime) || other.dateTime == dateTime));
}


@override
int get hashCode => Object.hash(runtimeType,dateTime);

@override
String toString() {
  return 'EditEvent.scheduleNotification(dateTime: $dateTime)';
}


}

/// @nodoc
abstract mixin class _$ScheduleNotificationCopyWith<$Res> implements $EditEventCopyWith<$Res> {
  factory _$ScheduleNotificationCopyWith(_ScheduleNotification value, $Res Function(_ScheduleNotification) _then) = __$ScheduleNotificationCopyWithImpl;
@useResult
$Res call({
 DateTime dateTime
});




}
/// @nodoc
class __$ScheduleNotificationCopyWithImpl<$Res>
    implements _$ScheduleNotificationCopyWith<$Res> {
  __$ScheduleNotificationCopyWithImpl(this._self, this._then);

  final _ScheduleNotification _self;
  final $Res Function(_ScheduleNotification) _then;

/// Create a copy of EditEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? dateTime = null,}) {
  return _then(_ScheduleNotification(
null == dateTime ? _self.dateTime : dateTime // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

/// @nodoc


class _CancelScheduleNotification implements EditEvent {
  const _CancelScheduleNotification();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CancelScheduleNotification);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EditEvent.cancelScheduledNotification()';
}


}




/// @nodoc
mixin _$EditPresentationEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EditPresentationEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EditPresentationEvent()';
}


}

/// @nodoc
class $EditPresentationEventCopyWith<$Res>  {
$EditPresentationEventCopyWith(EditPresentationEvent _, $Res Function(EditPresentationEvent) __);
}


/// Adds pattern-matching-related methods to [EditPresentationEvent].
extension EditPresentationEventPatterns on EditPresentationEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( DeleteNoteSuccess value)?  deleteNoteSuccess,TResult Function( DeleteNoteFailure value)?  deleteNoteFailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case DeleteNoteSuccess() when deleteNoteSuccess != null:
return deleteNoteSuccess(_that);case DeleteNoteFailure() when deleteNoteFailure != null:
return deleteNoteFailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( DeleteNoteSuccess value)  deleteNoteSuccess,required TResult Function( DeleteNoteFailure value)  deleteNoteFailure,}){
final _that = this;
switch (_that) {
case DeleteNoteSuccess():
return deleteNoteSuccess(_that);case DeleteNoteFailure():
return deleteNoteFailure(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( DeleteNoteSuccess value)?  deleteNoteSuccess,TResult? Function( DeleteNoteFailure value)?  deleteNoteFailure,}){
final _that = this;
switch (_that) {
case DeleteNoteSuccess() when deleteNoteSuccess != null:
return deleteNoteSuccess(_that);case DeleteNoteFailure() when deleteNoteFailure != null:
return deleteNoteFailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  deleteNoteSuccess,TResult Function()?  deleteNoteFailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case DeleteNoteSuccess() when deleteNoteSuccess != null:
return deleteNoteSuccess();case DeleteNoteFailure() when deleteNoteFailure != null:
return deleteNoteFailure();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  deleteNoteSuccess,required TResult Function()  deleteNoteFailure,}) {final _that = this;
switch (_that) {
case DeleteNoteSuccess():
return deleteNoteSuccess();case DeleteNoteFailure():
return deleteNoteFailure();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  deleteNoteSuccess,TResult? Function()?  deleteNoteFailure,}) {final _that = this;
switch (_that) {
case DeleteNoteSuccess() when deleteNoteSuccess != null:
return deleteNoteSuccess();case DeleteNoteFailure() when deleteNoteFailure != null:
return deleteNoteFailure();case _:
  return null;

}
}

}

/// @nodoc


class DeleteNoteSuccess implements EditPresentationEvent {
  const DeleteNoteSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteNoteSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EditPresentationEvent.deleteNoteSuccess()';
}


}




/// @nodoc


class DeleteNoteFailure implements EditPresentationEvent {
  const DeleteNoteFailure();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteNoteFailure);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EditPresentationEvent.deleteNoteFailure()';
}


}




/// @nodoc
mixin _$EditState {

 Note get note; List<File> get pickedImages;
/// Create a copy of EditState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EditStateCopyWith<EditState> get copyWith => _$EditStateCopyWithImpl<EditState>(this as EditState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EditState&&(identical(other.note, note) || other.note == note)&&const DeepCollectionEquality().equals(other.pickedImages, pickedImages));
}


@override
int get hashCode => Object.hash(runtimeType,note,const DeepCollectionEquality().hash(pickedImages));

@override
String toString() {
  return 'EditState(note: $note, pickedImages: $pickedImages)';
}


}

/// @nodoc
abstract mixin class $EditStateCopyWith<$Res>  {
  factory $EditStateCopyWith(EditState value, $Res Function(EditState) _then) = _$EditStateCopyWithImpl;
@useResult
$Res call({
 Note? note, List<File> pickedImages
});




}
/// @nodoc
class _$EditStateCopyWithImpl<$Res>
    implements $EditStateCopyWith<$Res> {
  _$EditStateCopyWithImpl(this._self, this._then);

  final EditState _self;
  final $Res Function(EditState) _then;

/// Create a copy of EditState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? note = freezed,Object? pickedImages = null,}) {
  return _then(EditState(
note: freezed == note ? _self.note! : note // ignore: cast_nullable_to_non_nullable
as Note?,pickedImages: null == pickedImages ? _self.pickedImages : pickedImages // ignore: cast_nullable_to_non_nullable
as List<File>,
  ));
}

}


/// Adds pattern-matching-related methods to [EditState].
extension EditStatePatterns on EditState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({required TResult orElse(),}){
final _that = this;
switch (_that) {
case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(){
final _that = this;
switch (_that) {
case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(){
final _that = this;
switch (_that) {
case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({required TResult orElse(),}) {final _that = this;
switch (_that) {
case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>() {final _that = this;
switch (_that) {
case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>() {final _that = this;
switch (_that) {
case _:
  return null;

}
}

}

// dart format on
