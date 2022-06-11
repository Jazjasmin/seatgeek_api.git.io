// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'itemlist_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ItemlistEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(String query) searchWords,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String query)? searchWords,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String query)? searchWords,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(SearchWords value) searchWords,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(SearchWords value)? searchWords,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(SearchWords value)? searchWords,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemlistEventCopyWith<$Res> {
  factory $ItemlistEventCopyWith(
          ItemlistEvent value, $Res Function(ItemlistEvent) then) =
      _$ItemlistEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ItemlistEventCopyWithImpl<$Res>
    implements $ItemlistEventCopyWith<$Res> {
  _$ItemlistEventCopyWithImpl(this._value, this._then);

  final ItemlistEvent _value;
  // ignore: unused_field
  final $Res Function(ItemlistEvent) _then;
}

/// @nodoc
abstract class _$$InitializeCopyWith<$Res> {
  factory _$$InitializeCopyWith(
          _$Initialize value, $Res Function(_$Initialize) then) =
      __$$InitializeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitializeCopyWithImpl<$Res> extends _$ItemlistEventCopyWithImpl<$Res>
    implements _$$InitializeCopyWith<$Res> {
  __$$InitializeCopyWithImpl(
      _$Initialize _value, $Res Function(_$Initialize) _then)
      : super(_value, (v) => _then(v as _$Initialize));

  @override
  _$Initialize get _value => super._value as _$Initialize;
}

/// @nodoc

class _$Initialize implements Initialize {
  const _$Initialize();

  @override
  String toString() {
    return 'ItemlistEvent.initialize()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Initialize);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(String query) searchWords,
  }) {
    return initialize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String query)? searchWords,
  }) {
    return initialize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String query)? searchWords,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(SearchWords value) searchWords,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(SearchWords value)? searchWords,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(SearchWords value)? searchWords,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class Initialize implements ItemlistEvent {
  const factory Initialize() = _$Initialize;
}

/// @nodoc
abstract class _$$SearchWordsCopyWith<$Res> {
  factory _$$SearchWordsCopyWith(
          _$SearchWords value, $Res Function(_$SearchWords) then) =
      __$$SearchWordsCopyWithImpl<$Res>;
  $Res call({String query});
}

/// @nodoc
class __$$SearchWordsCopyWithImpl<$Res>
    extends _$ItemlistEventCopyWithImpl<$Res>
    implements _$$SearchWordsCopyWith<$Res> {
  __$$SearchWordsCopyWithImpl(
      _$SearchWords _value, $Res Function(_$SearchWords) _then)
      : super(_value, (v) => _then(v as _$SearchWords));

  @override
  _$SearchWords get _value => super._value as _$SearchWords;

  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(_$SearchWords(
      query: query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchWords implements SearchWords {
  const _$SearchWords({required this.query});

  @override
  final String query;

  @override
  String toString() {
    return 'ItemlistEvent.searchWords(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchWords &&
            const DeepCollectionEquality().equals(other.query, query));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(query));

  @JsonKey(ignore: true)
  @override
  _$$SearchWordsCopyWith<_$SearchWords> get copyWith =>
      __$$SearchWordsCopyWithImpl<_$SearchWords>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(String query) searchWords,
  }) {
    return searchWords(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String query)? searchWords,
  }) {
    return searchWords?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String query)? searchWords,
    required TResult orElse(),
  }) {
    if (searchWords != null) {
      return searchWords(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(SearchWords value) searchWords,
  }) {
    return searchWords(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(SearchWords value)? searchWords,
  }) {
    return searchWords?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(SearchWords value)? searchWords,
    required TResult orElse(),
  }) {
    if (searchWords != null) {
      return searchWords(this);
    }
    return orElse();
  }
}

abstract class SearchWords implements ItemlistEvent {
  const factory SearchWords({required final String query}) = _$SearchWords;

  String get query => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$SearchWordsCopyWith<_$SearchWords> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ItemlistState {
  List<Event> get searchlist => throw _privateConstructorUsedError;
  List<Event> get searchIdile => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ItemlistStateCopyWith<ItemlistState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemlistStateCopyWith<$Res> {
  factory $ItemlistStateCopyWith(
          ItemlistState value, $Res Function(ItemlistState) then) =
      _$ItemlistStateCopyWithImpl<$Res>;
  $Res call(
      {List<Event> searchlist,
      List<Event> searchIdile,
      bool isLoading,
      bool isError});
}

/// @nodoc
class _$ItemlistStateCopyWithImpl<$Res>
    implements $ItemlistStateCopyWith<$Res> {
  _$ItemlistStateCopyWithImpl(this._value, this._then);

  final ItemlistState _value;
  // ignore: unused_field
  final $Res Function(ItemlistState) _then;

  @override
  $Res call({
    Object? searchlist = freezed,
    Object? searchIdile = freezed,
    Object? isLoading = freezed,
    Object? isError = freezed,
  }) {
    return _then(_value.copyWith(
      searchlist: searchlist == freezed
          ? _value.searchlist
          : searchlist // ignore: cast_nullable_to_non_nullable
              as List<Event>,
      searchIdile: searchIdile == freezed
          ? _value.searchIdile
          : searchIdile // ignore: cast_nullable_to_non_nullable
              as List<Event>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: isError == freezed
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_ItemlistStateCopyWith<$Res>
    implements $ItemlistStateCopyWith<$Res> {
  factory _$$_ItemlistStateCopyWith(
          _$_ItemlistState value, $Res Function(_$_ItemlistState) then) =
      __$$_ItemlistStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Event> searchlist,
      List<Event> searchIdile,
      bool isLoading,
      bool isError});
}

/// @nodoc
class __$$_ItemlistStateCopyWithImpl<$Res>
    extends _$ItemlistStateCopyWithImpl<$Res>
    implements _$$_ItemlistStateCopyWith<$Res> {
  __$$_ItemlistStateCopyWithImpl(
      _$_ItemlistState _value, $Res Function(_$_ItemlistState) _then)
      : super(_value, (v) => _then(v as _$_ItemlistState));

  @override
  _$_ItemlistState get _value => super._value as _$_ItemlistState;

  @override
  $Res call({
    Object? searchlist = freezed,
    Object? searchIdile = freezed,
    Object? isLoading = freezed,
    Object? isError = freezed,
  }) {
    return _then(_$_ItemlistState(
      searchlist: searchlist == freezed
          ? _value._searchlist
          : searchlist // ignore: cast_nullable_to_non_nullable
              as List<Event>,
      searchIdile: searchIdile == freezed
          ? _value._searchIdile
          : searchIdile // ignore: cast_nullable_to_non_nullable
              as List<Event>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: isError == freezed
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ItemlistState implements _ItemlistState {
  const _$_ItemlistState(
      {required final List<Event> searchlist,
      required final List<Event> searchIdile,
      required this.isLoading,
      required this.isError})
      : _searchlist = searchlist,
        _searchIdile = searchIdile;

  final List<Event> _searchlist;
  @override
  List<Event> get searchlist {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchlist);
  }

  final List<Event> _searchIdile;
  @override
  List<Event> get searchIdile {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchIdile);
  }

  @override
  final bool isLoading;
  @override
  final bool isError;

  @override
  String toString() {
    return 'ItemlistState(searchlist: $searchlist, searchIdile: $searchIdile, isLoading: $isLoading, isError: $isError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ItemlistState &&
            const DeepCollectionEquality()
                .equals(other._searchlist, _searchlist) &&
            const DeepCollectionEquality()
                .equals(other._searchIdile, _searchIdile) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.isError, isError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_searchlist),
      const DeepCollectionEquality().hash(_searchIdile),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isError));

  @JsonKey(ignore: true)
  @override
  _$$_ItemlistStateCopyWith<_$_ItemlistState> get copyWith =>
      __$$_ItemlistStateCopyWithImpl<_$_ItemlistState>(this, _$identity);
}

abstract class _ItemlistState implements ItemlistState {
  const factory _ItemlistState(
      {required final List<Event> searchlist,
      required final List<Event> searchIdile,
      required final bool isLoading,
      required final bool isError}) = _$_ItemlistState;

  @override
  List<Event> get searchlist => throw _privateConstructorUsedError;
  @override
  List<Event> get searchIdile => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  bool get isError => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ItemlistStateCopyWith<_$_ItemlistState> get copyWith =>
      throw _privateConstructorUsedError;
}
