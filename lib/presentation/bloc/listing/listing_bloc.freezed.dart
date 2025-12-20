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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _SearchNotes value)?  searchNotes,TResult Function( _OnSearchKeywordChanged value)?  onSearchKeywordChanged,TResult Function( _FetchNotesPagingNext value)?  fetchNotesPagingNext,TResult Function( _Refresh value)?  refresh,TResult Function( _DeleteNote value)?  deleteNote,TResult Function( _OnDisplayModeSelected value)?  onDisplayModeSelected,TResult Function( _GetDisplayMode value)?  getDisplayMode,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchNotes() when searchNotes != null:
return searchNotes(_that);case _OnSearchKeywordChanged() when onSearchKeywordChanged != null:
return onSearchKeywordChanged(_that);case _FetchNotesPagingNext() when fetchNotesPagingNext != null:
return fetchNotesPagingNext(_that);case _Refresh() when refresh != null:
return refresh(_that);case _DeleteNote() when deleteNote != null:
return deleteNote(_that);case _OnDisplayModeSelected() when onDisplayModeSelected != null:
return onDisplayModeSelected(_that);case _GetDisplayMode() when getDisplayMode != null:
return getDisplayMode(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _SearchNotes value)  searchNotes,required TResult Function( _OnSearchKeywordChanged value)  onSearchKeywordChanged,required TResult Function( _FetchNotesPagingNext value)  fetchNotesPagingNext,required TResult Function( _Refresh value)  refresh,required TResult Function( _DeleteNote value)  deleteNote,required TResult Function( _OnDisplayModeSelected value)  onDisplayModeSelected,required TResult Function( _GetDisplayMode value)  getDisplayMode,}){
final _that = this;
switch (_that) {
case _SearchNotes():
return searchNotes(_that);case _OnSearchKeywordChanged():
return onSearchKeywordChanged(_that);case _FetchNotesPagingNext():
return fetchNotesPagingNext(_that);case _Refresh():
return refresh(_that);case _DeleteNote():
return deleteNote(_that);case _OnDisplayModeSelected():
return onDisplayModeSelected(_that);case _GetDisplayMode():
return getDisplayMode(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _SearchNotes value)?  searchNotes,TResult? Function( _OnSearchKeywordChanged value)?  onSearchKeywordChanged,TResult? Function( _FetchNotesPagingNext value)?  fetchNotesPagingNext,TResult? Function( _Refresh value)?  refresh,TResult? Function( _DeleteNote value)?  deleteNote,TResult? Function( _OnDisplayModeSelected value)?  onDisplayModeSelected,TResult? Function( _GetDisplayMode value)?  getDisplayMode,}){
final _that = this;
switch (_that) {
case _SearchNotes() when searchNotes != null:
return searchNotes(_that);case _OnSearchKeywordChanged() when onSearchKeywordChanged != null:
return onSearchKeywordChanged(_that);case _FetchNotesPagingNext() when fetchNotesPagingNext != null:
return fetchNotesPagingNext(_that);case _Refresh() when refresh != null:
return refresh(_that);case _DeleteNote() when deleteNote != null:
return deleteNote(_that);case _OnDisplayModeSelected() when onDisplayModeSelected != null:
return onDisplayModeSelected(_that);case _GetDisplayMode() when getDisplayMode != null:
return getDisplayMode(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String keyword)?  searchNotes,TResult Function( String keyword)?  onSearchKeywordChanged,TResult Function()?  fetchNotesPagingNext,TResult Function()?  refresh,TResult Function( Note note)?  deleteNote,TResult Function( DisplayMode mode)?  onDisplayModeSelected,TResult Function()?  getDisplayMode,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchNotes() when searchNotes != null:
return searchNotes(_that.keyword);case _OnSearchKeywordChanged() when onSearchKeywordChanged != null:
return onSearchKeywordChanged(_that.keyword);case _FetchNotesPagingNext() when fetchNotesPagingNext != null:
return fetchNotesPagingNext();case _Refresh() when refresh != null:
return refresh();case _DeleteNote() when deleteNote != null:
return deleteNote(_that.note);case _OnDisplayModeSelected() when onDisplayModeSelected != null:
return onDisplayModeSelected(_that.mode);case _GetDisplayMode() when getDisplayMode != null:
return getDisplayMode();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String keyword)  searchNotes,required TResult Function( String keyword)  onSearchKeywordChanged,required TResult Function()  fetchNotesPagingNext,required TResult Function()  refresh,required TResult Function( Note note)  deleteNote,required TResult Function( DisplayMode mode)  onDisplayModeSelected,required TResult Function()  getDisplayMode,}) {final _that = this;
switch (_that) {
case _SearchNotes():
return searchNotes(_that.keyword);case _OnSearchKeywordChanged():
return onSearchKeywordChanged(_that.keyword);case _FetchNotesPagingNext():
return fetchNotesPagingNext();case _Refresh():
return refresh();case _DeleteNote():
return deleteNote(_that.note);case _OnDisplayModeSelected():
return onDisplayModeSelected(_that.mode);case _GetDisplayMode():
return getDisplayMode();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String keyword)?  searchNotes,TResult? Function( String keyword)?  onSearchKeywordChanged,TResult? Function()?  fetchNotesPagingNext,TResult? Function()?  refresh,TResult? Function( Note note)?  deleteNote,TResult? Function( DisplayMode mode)?  onDisplayModeSelected,TResult? Function()?  getDisplayMode,}) {final _that = this;
switch (_that) {
case _SearchNotes() when searchNotes != null:
return searchNotes(_that.keyword);case _OnSearchKeywordChanged() when onSearchKeywordChanged != null:
return onSearchKeywordChanged(_that.keyword);case _FetchNotesPagingNext() when fetchNotesPagingNext != null:
return fetchNotesPagingNext();case _Refresh() when refresh != null:
return refresh();case _DeleteNote() when deleteNote != null:
return deleteNote(_that.note);case _OnDisplayModeSelected() when onDisplayModeSelected != null:
return onDisplayModeSelected(_that.mode);case _GetDisplayMode() when getDisplayMode != null:
return getDisplayMode();case _:
  return null;

}
}

}

/// @nodoc


class _SearchNotes implements ListingEvent {
  const _SearchNotes(this.keyword);
  

 final  String keyword;

/// Create a copy of ListingEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchNotesCopyWith<_SearchNotes> get copyWith => __$SearchNotesCopyWithImpl<_SearchNotes>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchNotes&&(identical(other.keyword, keyword) || other.keyword == keyword));
}


@override
int get hashCode => Object.hash(runtimeType,keyword);

@override
String toString() {
  return 'ListingEvent.searchNotes(keyword: $keyword)';
}


}

/// @nodoc
abstract mixin class _$SearchNotesCopyWith<$Res> implements $ListingEventCopyWith<$Res> {
  factory _$SearchNotesCopyWith(_SearchNotes value, $Res Function(_SearchNotes) _then) = __$SearchNotesCopyWithImpl;
@useResult
$Res call({
 String keyword
});




}
/// @nodoc
class __$SearchNotesCopyWithImpl<$Res>
    implements _$SearchNotesCopyWith<$Res> {
  __$SearchNotesCopyWithImpl(this._self, this._then);

  final _SearchNotes _self;
  final $Res Function(_SearchNotes) _then;

/// Create a copy of ListingEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? keyword = null,}) {
  return _then(_SearchNotes(
null == keyword ? _self.keyword : keyword // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _OnSearchKeywordChanged implements ListingEvent {
  const _OnSearchKeywordChanged(this.keyword);
  

 final  String keyword;

/// Create a copy of ListingEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OnSearchKeywordChangedCopyWith<_OnSearchKeywordChanged> get copyWith => __$OnSearchKeywordChangedCopyWithImpl<_OnSearchKeywordChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OnSearchKeywordChanged&&(identical(other.keyword, keyword) || other.keyword == keyword));
}


@override
int get hashCode => Object.hash(runtimeType,keyword);

@override
String toString() {
  return 'ListingEvent.onSearchKeywordChanged(keyword: $keyword)';
}


}

/// @nodoc
abstract mixin class _$OnSearchKeywordChangedCopyWith<$Res> implements $ListingEventCopyWith<$Res> {
  factory _$OnSearchKeywordChangedCopyWith(_OnSearchKeywordChanged value, $Res Function(_OnSearchKeywordChanged) _then) = __$OnSearchKeywordChangedCopyWithImpl;
@useResult
$Res call({
 String keyword
});




}
/// @nodoc
class __$OnSearchKeywordChangedCopyWithImpl<$Res>
    implements _$OnSearchKeywordChangedCopyWith<$Res> {
  __$OnSearchKeywordChangedCopyWithImpl(this._self, this._then);

  final _OnSearchKeywordChanged _self;
  final $Res Function(_OnSearchKeywordChanged) _then;

/// Create a copy of ListingEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? keyword = null,}) {
  return _then(_OnSearchKeywordChanged(
null == keyword ? _self.keyword : keyword // ignore: cast_nullable_to_non_nullable
as String,
  ));
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


class _OnDisplayModeSelected implements ListingEvent {
  const _OnDisplayModeSelected(this.mode);
  

 final  DisplayMode mode;

/// Create a copy of ListingEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OnDisplayModeSelectedCopyWith<_OnDisplayModeSelected> get copyWith => __$OnDisplayModeSelectedCopyWithImpl<_OnDisplayModeSelected>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OnDisplayModeSelected&&(identical(other.mode, mode) || other.mode == mode));
}


@override
int get hashCode => Object.hash(runtimeType,mode);

@override
String toString() {
  return 'ListingEvent.onDisplayModeSelected(mode: $mode)';
}


}

/// @nodoc
abstract mixin class _$OnDisplayModeSelectedCopyWith<$Res> implements $ListingEventCopyWith<$Res> {
  factory _$OnDisplayModeSelectedCopyWith(_OnDisplayModeSelected value, $Res Function(_OnDisplayModeSelected) _then) = __$OnDisplayModeSelectedCopyWithImpl;
@useResult
$Res call({
 DisplayMode mode
});




}
/// @nodoc
class __$OnDisplayModeSelectedCopyWithImpl<$Res>
    implements _$OnDisplayModeSelectedCopyWith<$Res> {
  __$OnDisplayModeSelectedCopyWithImpl(this._self, this._then);

  final _OnDisplayModeSelected _self;
  final $Res Function(_OnDisplayModeSelected) _then;

/// Create a copy of ListingEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? mode = null,}) {
  return _then(_OnDisplayModeSelected(
null == mode ? _self.mode : mode // ignore: cast_nullable_to_non_nullable
as DisplayMode,
  ));
}


}

/// @nodoc


class _GetDisplayMode implements ListingEvent {
  const _GetDisplayMode();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetDisplayMode);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ListingEvent.getDisplayMode()';
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

 List<Note> get searchResult; String get searchKeyword; DisplayMode get displayMode; AppPagingState<Note>? get notePagingState; set notePagingState(AppPagingState<Note>? value); bool get isSearchFailure; bool get isDeleteNoteSuccess; bool get isDeleteNoteFailure;
/// Create a copy of ListingState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ListingStateCopyWith<ListingState> get copyWith => _$ListingStateCopyWithImpl<ListingState>(this as ListingState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ListingState&&const DeepCollectionEquality().equals(other.searchResult, searchResult)&&(identical(other.searchKeyword, searchKeyword) || other.searchKeyword == searchKeyword)&&(identical(other.displayMode, displayMode) || other.displayMode == displayMode)&&(identical(other.notePagingState, notePagingState) || other.notePagingState == notePagingState)&&(identical(other.isSearchFailure, isSearchFailure) || other.isSearchFailure == isSearchFailure)&&(identical(other.isDeleteNoteSuccess, isDeleteNoteSuccess) || other.isDeleteNoteSuccess == isDeleteNoteSuccess)&&(identical(other.isDeleteNoteFailure, isDeleteNoteFailure) || other.isDeleteNoteFailure == isDeleteNoteFailure));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(searchResult),searchKeyword,displayMode,notePagingState,isSearchFailure,isDeleteNoteSuccess,isDeleteNoteFailure);

@override
String toString() {
  return 'ListingState(searchResult: $searchResult, searchKeyword: $searchKeyword, displayMode: $displayMode, notePagingState: $notePagingState, isSearchFailure: $isSearchFailure, isDeleteNoteSuccess: $isDeleteNoteSuccess, isDeleteNoteFailure: $isDeleteNoteFailure)';
}


}

/// @nodoc
abstract mixin class $ListingStateCopyWith<$Res>  {
  factory $ListingStateCopyWith(ListingState value, $Res Function(ListingState) _then) = _$ListingStateCopyWithImpl;
@useResult
$Res call({
 List<Note> searchResult, String searchKeyword, DisplayMode displayMode, bool isSearchFailure, bool isDeleteNoteSuccess, bool isDeleteNoteFailure, dynamic notePagingState
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
@pragma('vm:prefer-inline') @override $Res call({Object? searchResult = null,Object? searchKeyword = null,Object? displayMode = null,Object? isSearchFailure = null,Object? isDeleteNoteSuccess = null,Object? isDeleteNoteFailure = null,Object? notePagingState = freezed,}) {
  return _then(ListingState(
searchResult: null == searchResult ? _self.searchResult : searchResult // ignore: cast_nullable_to_non_nullable
as List<Note>,searchKeyword: null == searchKeyword ? _self.searchKeyword : searchKeyword // ignore: cast_nullable_to_non_nullable
as String,displayMode: null == displayMode ? _self.displayMode : displayMode // ignore: cast_nullable_to_non_nullable
as DisplayMode,isSearchFailure: null == isSearchFailure ? _self.isSearchFailure : isSearchFailure // ignore: cast_nullable_to_non_nullable
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
