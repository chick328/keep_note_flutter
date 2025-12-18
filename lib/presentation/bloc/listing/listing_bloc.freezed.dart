// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'listing_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ListingEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ListingEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ListingEvent()';
}


}

/// @nodoc
class $ListingEventCopyWith<$Res>  {
$ListingEventCopyWith(ListingEvent _, $Res Function(ListingEvent) __);
}


/// Adds pattern-matching-related methods to [ListingEvent].
extension ListingEventPatterns on ListingEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _FetchAllNotes value)?  fetchAllNotes,TResult Function( _FetchNotesPagingNext value)?  fetchNotesPagingNext,TResult Function( _Refresh value)?  refresh,TResult Function( _CreateNote value)?  createNote,TResult Function( _DeleteNote value)?  deleteNote,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FetchAllNotes() when fetchAllNotes != null:
return fetchAllNotes(_that);case _FetchNotesPagingNext() when fetchNotesPagingNext != null:
return fetchNotesPagingNext(_that);case _Refresh() when refresh != null:
return refresh(_that);case _CreateNote() when createNote != null:
return createNote(_that);case _DeleteNote() when deleteNote != null:
return deleteNote(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _FetchAllNotes value)  fetchAllNotes,required TResult Function( _FetchNotesPagingNext value)  fetchNotesPagingNext,required TResult Function( _Refresh value)  refresh,required TResult Function( _CreateNote value)  createNote,required TResult Function( _DeleteNote value)  deleteNote,}){
final _that = this;
switch (_that) {
case _FetchAllNotes():
return fetchAllNotes(_that);case _FetchNotesPagingNext():
return fetchNotesPagingNext(_that);case _Refresh():
return refresh(_that);case _CreateNote():
return createNote(_that);case _DeleteNote():
return deleteNote(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _FetchAllNotes value)?  fetchAllNotes,TResult? Function( _FetchNotesPagingNext value)?  fetchNotesPagingNext,TResult? Function( _Refresh value)?  refresh,TResult? Function( _CreateNote value)?  createNote,TResult? Function( _DeleteNote value)?  deleteNote,}){
final _that = this;
switch (_that) {
case _FetchAllNotes() when fetchAllNotes != null:
return fetchAllNotes(_that);case _FetchNotesPagingNext() when fetchNotesPagingNext != null:
return fetchNotesPagingNext(_that);case _Refresh() when refresh != null:
return refresh(_that);case _CreateNote() when createNote != null:
return createNote(_that);case _DeleteNote() when deleteNote != null:
return deleteNote(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  fetchAllNotes,TResult Function()?  fetchNotesPagingNext,TResult Function()?  refresh,TResult Function( String title,  String content)?  createNote,TResult Function( Note note)?  deleteNote,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FetchAllNotes() when fetchAllNotes != null:
return fetchAllNotes();case _FetchNotesPagingNext() when fetchNotesPagingNext != null:
return fetchNotesPagingNext();case _Refresh() when refresh != null:
return refresh();case _CreateNote() when createNote != null:
return createNote(_that.title,_that.content);case _DeleteNote() when deleteNote != null:
return deleteNote(_that.note);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  fetchAllNotes,required TResult Function()  fetchNotesPagingNext,required TResult Function()  refresh,required TResult Function( String title,  String content)  createNote,required TResult Function( Note note)  deleteNote,}) {final _that = this;
switch (_that) {
case _FetchAllNotes():
return fetchAllNotes();case _FetchNotesPagingNext():
return fetchNotesPagingNext();case _Refresh():
return refresh();case _CreateNote():
return createNote(_that.title,_that.content);case _DeleteNote():
return deleteNote(_that.note);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  fetchAllNotes,TResult? Function()?  fetchNotesPagingNext,TResult? Function()?  refresh,TResult? Function( String title,  String content)?  createNote,TResult? Function( Note note)?  deleteNote,}) {final _that = this;
switch (_that) {
case _FetchAllNotes() when fetchAllNotes != null:
return fetchAllNotes();case _FetchNotesPagingNext() when fetchNotesPagingNext != null:
return fetchNotesPagingNext();case _Refresh() when refresh != null:
return refresh();case _CreateNote() when createNote != null:
return createNote(_that.title,_that.content);case _DeleteNote() when deleteNote != null:
return deleteNote(_that.note);case _:
  return null;

}
}

}

/// @nodoc


class _FetchAllNotes implements ListingEvent {
  const _FetchAllNotes();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FetchAllNotes);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ListingEvent.fetchAllNotes()';
}


}




/// @nodoc


class _FetchNotesPagingNext implements ListingEvent {
  const _FetchNotesPagingNext();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FetchNotesPagingNext);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ListingEvent.fetchNotesPagingNext()';
}


}




/// @nodoc


class _Refresh implements ListingEvent {
  const _Refresh();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Refresh);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ListingEvent.refresh()';
}


}




/// @nodoc


class _CreateNote implements ListingEvent {
  const _CreateNote(this.title, this.content);
  

 final  String title;
 final  String content;

/// Create a copy of ListingEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateNoteCopyWith<_CreateNote> get copyWith => __$CreateNoteCopyWithImpl<_CreateNote>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateNote&&(identical(other.title, title) || other.title == title)&&(identical(other.content, content) || other.content == content));
}


@override
int get hashCode => Object.hash(runtimeType,title,content);

@override
String toString() {
  return 'ListingEvent.createNote(title: $title, content: $content)';
}


}

/// @nodoc
abstract mixin class _$CreateNoteCopyWith<$Res> implements $ListingEventCopyWith<$Res> {
  factory _$CreateNoteCopyWith(_CreateNote value, $Res Function(_CreateNote) _then) = __$CreateNoteCopyWithImpl;
@useResult
$Res call({
 String title, String content
});




}
/// @nodoc
class __$CreateNoteCopyWithImpl<$Res>
    implements _$CreateNoteCopyWith<$Res> {
  __$CreateNoteCopyWithImpl(this._self, this._then);

  final _CreateNote _self;
  final $Res Function(_CreateNote) _then;

/// Create a copy of ListingEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? title = null,Object? content = null,}) {
  return _then(_CreateNote(
null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _DeleteNote implements ListingEvent {
  const _DeleteNote(this.note);
  

 final  Note note;

/// Create a copy of ListingEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteNoteCopyWith<_DeleteNote> get copyWith => __$DeleteNoteCopyWithImpl<_DeleteNote>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteNote&&(identical(other.note, note) || other.note == note));
}


@override
int get hashCode => Object.hash(runtimeType,note);

@override
String toString() {
  return 'ListingEvent.deleteNote(note: $note)';
}


}

/// @nodoc
abstract mixin class _$DeleteNoteCopyWith<$Res> implements $ListingEventCopyWith<$Res> {
  factory _$DeleteNoteCopyWith(_DeleteNote value, $Res Function(_DeleteNote) _then) = __$DeleteNoteCopyWithImpl;
@useResult
$Res call({
 Note note
});


$NoteCopyWith<$Res> get note;

}
/// @nodoc
class __$DeleteNoteCopyWithImpl<$Res>
    implements _$DeleteNoteCopyWith<$Res> {
  __$DeleteNoteCopyWithImpl(this._self, this._then);

  final _DeleteNote _self;
  final $Res Function(_DeleteNote) _then;

/// Create a copy of ListingEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? note = null,}) {
  return _then(_DeleteNote(
null == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as Note,
  ));
}

/// Create a copy of ListingEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NoteCopyWith<$Res> get note {
  
  return $NoteCopyWith<$Res>(_self.note, (value) {
    return _then(_self.copyWith(note: value));
  });
}
}

/// @nodoc
mixin _$ListingPresentationEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ListingPresentationEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ListingPresentationEvent()';
}


}

/// @nodoc
class $ListingPresentationEventCopyWith<$Res>  {
$ListingPresentationEventCopyWith(ListingPresentationEvent _, $Res Function(ListingPresentationEvent) __);
}


/// Adds pattern-matching-related methods to [ListingPresentationEvent].
extension ListingPresentationEventPatterns on ListingPresentationEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CreateNoteSuccess value)?  createNoteSuccess,TResult Function( CreateNoteFailure value)?  createNoteFailure,TResult Function( DeleteNoteSuccess value)?  deleteNoteSuccess,TResult Function( DeleteNoteFailure value)?  deleteNoteFailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CreateNoteSuccess() when createNoteSuccess != null:
return createNoteSuccess(_that);case CreateNoteFailure() when createNoteFailure != null:
return createNoteFailure(_that);case DeleteNoteSuccess() when deleteNoteSuccess != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CreateNoteSuccess value)  createNoteSuccess,required TResult Function( CreateNoteFailure value)  createNoteFailure,required TResult Function( DeleteNoteSuccess value)  deleteNoteSuccess,required TResult Function( DeleteNoteFailure value)  deleteNoteFailure,}){
final _that = this;
switch (_that) {
case CreateNoteSuccess():
return createNoteSuccess(_that);case CreateNoteFailure():
return createNoteFailure(_that);case DeleteNoteSuccess():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CreateNoteSuccess value)?  createNoteSuccess,TResult? Function( CreateNoteFailure value)?  createNoteFailure,TResult? Function( DeleteNoteSuccess value)?  deleteNoteSuccess,TResult? Function( DeleteNoteFailure value)?  deleteNoteFailure,}){
final _that = this;
switch (_that) {
case CreateNoteSuccess() when createNoteSuccess != null:
return createNoteSuccess(_that);case CreateNoteFailure() when createNoteFailure != null:
return createNoteFailure(_that);case DeleteNoteSuccess() when deleteNoteSuccess != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  createNoteSuccess,TResult Function()?  createNoteFailure,TResult Function()?  deleteNoteSuccess,TResult Function()?  deleteNoteFailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CreateNoteSuccess() when createNoteSuccess != null:
return createNoteSuccess();case CreateNoteFailure() when createNoteFailure != null:
return createNoteFailure();case DeleteNoteSuccess() when deleteNoteSuccess != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  createNoteSuccess,required TResult Function()  createNoteFailure,required TResult Function()  deleteNoteSuccess,required TResult Function()  deleteNoteFailure,}) {final _that = this;
switch (_that) {
case CreateNoteSuccess():
return createNoteSuccess();case CreateNoteFailure():
return createNoteFailure();case DeleteNoteSuccess():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  createNoteSuccess,TResult? Function()?  createNoteFailure,TResult? Function()?  deleteNoteSuccess,TResult? Function()?  deleteNoteFailure,}) {final _that = this;
switch (_that) {
case CreateNoteSuccess() when createNoteSuccess != null:
return createNoteSuccess();case CreateNoteFailure() when createNoteFailure != null:
return createNoteFailure();case DeleteNoteSuccess() when deleteNoteSuccess != null:
return deleteNoteSuccess();case DeleteNoteFailure() when deleteNoteFailure != null:
return deleteNoteFailure();case _:
  return null;

}
}

}

/// @nodoc


class CreateNoteSuccess implements ListingPresentationEvent {
  const CreateNoteSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateNoteSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ListingPresentationEvent.createNoteSuccess()';
}


}




/// @nodoc


class CreateNoteFailure implements ListingPresentationEvent {
  const CreateNoteFailure();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateNoteFailure);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ListingPresentationEvent.createNoteFailure()';
}


}




/// @nodoc


class DeleteNoteSuccess implements ListingPresentationEvent {
  const DeleteNoteSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteNoteSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ListingPresentationEvent.deleteNoteSuccess()';
}


}




/// @nodoc


class DeleteNoteFailure implements ListingPresentationEvent {
  const DeleteNoteFailure();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteNoteFailure);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ListingPresentationEvent.deleteNoteFailure()';
}


}




/// @nodoc
mixin _$ListingState {

 List<Note> get notes; AppPagingState<Note>? get notePagingState; set notePagingState(AppPagingState<Note>? value); bool get isGetAllNotesFailure; bool get isCreateNoteSuccess; bool get isCreateNoteFailure; bool get isDeleteNoteSuccess; bool get isDeleteNoteFailure;
/// Create a copy of ListingState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ListingStateCopyWith<ListingState> get copyWith => _$ListingStateCopyWithImpl<ListingState>(this as ListingState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ListingState&&const DeepCollectionEquality().equals(other.notes, notes)&&(identical(other.notePagingState, notePagingState) || other.notePagingState == notePagingState)&&(identical(other.isGetAllNotesFailure, isGetAllNotesFailure) || other.isGetAllNotesFailure == isGetAllNotesFailure)&&(identical(other.isCreateNoteSuccess, isCreateNoteSuccess) || other.isCreateNoteSuccess == isCreateNoteSuccess)&&(identical(other.isCreateNoteFailure, isCreateNoteFailure) || other.isCreateNoteFailure == isCreateNoteFailure)&&(identical(other.isDeleteNoteSuccess, isDeleteNoteSuccess) || other.isDeleteNoteSuccess == isDeleteNoteSuccess)&&(identical(other.isDeleteNoteFailure, isDeleteNoteFailure) || other.isDeleteNoteFailure == isDeleteNoteFailure));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(notes),notePagingState,isGetAllNotesFailure,isCreateNoteSuccess,isCreateNoteFailure,isDeleteNoteSuccess,isDeleteNoteFailure);

@override
String toString() {
  return 'ListingState(notes: $notes, notePagingState: $notePagingState, isGetAllNotesFailure: $isGetAllNotesFailure, isCreateNoteSuccess: $isCreateNoteSuccess, isCreateNoteFailure: $isCreateNoteFailure, isDeleteNoteSuccess: $isDeleteNoteSuccess, isDeleteNoteFailure: $isDeleteNoteFailure)';
}


}

/// @nodoc
abstract mixin class $ListingStateCopyWith<$Res>  {
  factory $ListingStateCopyWith(ListingState value, $Res Function(ListingState) _then) = _$ListingStateCopyWithImpl;
@useResult
$Res call({
 List<Note> notes, bool isGetAllNotesFailure, bool isCreateNoteSuccess, bool isCreateNoteFailure, bool isDeleteNoteSuccess, bool isDeleteNoteFailure, dynamic notePagingState
});




}
/// @nodoc
class _$ListingStateCopyWithImpl<$Res>
    implements $ListingStateCopyWith<$Res> {
  _$ListingStateCopyWithImpl(this._self, this._then);

  final ListingState _self;
  final $Res Function(ListingState) _then;

/// Create a copy of ListingState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? notes = null,Object? isGetAllNotesFailure = null,Object? isCreateNoteSuccess = null,Object? isCreateNoteFailure = null,Object? isDeleteNoteSuccess = null,Object? isDeleteNoteFailure = null,Object? notePagingState = freezed,}) {
  return _then(ListingState(
notes: null == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as List<Note>,isGetAllNotesFailure: null == isGetAllNotesFailure ? _self.isGetAllNotesFailure : isGetAllNotesFailure // ignore: cast_nullable_to_non_nullable
as bool,isCreateNoteSuccess: null == isCreateNoteSuccess ? _self.isCreateNoteSuccess : isCreateNoteSuccess // ignore: cast_nullable_to_non_nullable
as bool,isCreateNoteFailure: null == isCreateNoteFailure ? _self.isCreateNoteFailure : isCreateNoteFailure // ignore: cast_nullable_to_non_nullable
as bool,isDeleteNoteSuccess: null == isDeleteNoteSuccess ? _self.isDeleteNoteSuccess : isDeleteNoteSuccess // ignore: cast_nullable_to_non_nullable
as bool,isDeleteNoteFailure: null == isDeleteNoteFailure ? _self.isDeleteNoteFailure : isDeleteNoteFailure // ignore: cast_nullable_to_non_nullable
as bool,notePagingState: freezed == notePagingState ? _self.notePagingState! : notePagingState // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [ListingState].
extension ListingStatePatterns on ListingState {
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
