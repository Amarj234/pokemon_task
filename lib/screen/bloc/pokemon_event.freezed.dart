// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$PokemonEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) fetchCards,
    required TResult Function(String text) search,
    required TResult Function(bool val) searchShow,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? fetchCards,
    TResult? Function(String text)? search,
    TResult? Function(bool val)? searchShow,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? fetchCards,
    TResult Function(String text)? search,
    TResult Function(bool val)? searchShow,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchCards value) fetchCards,
    required TResult Function(Search value) search,
    required TResult Function(SearchShow value) searchShow,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchCards value)? fetchCards,
    TResult? Function(Search value)? search,
    TResult? Function(SearchShow value)? searchShow,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchCards value)? fetchCards,
    TResult Function(Search value)? search,
    TResult Function(SearchShow value)? searchShow,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonEventCopyWith<$Res> {
  factory $PokemonEventCopyWith(
    PokemonEvent value,
    $Res Function(PokemonEvent) then,
  ) = _$PokemonEventCopyWithImpl<$Res, PokemonEvent>;
}

/// @nodoc
class _$PokemonEventCopyWithImpl<$Res, $Val extends PokemonEvent>
    implements $PokemonEventCopyWith<$Res> {
  _$PokemonEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchCardsImplCopyWith<$Res> {
  factory _$$FetchCardsImplCopyWith(
    _$FetchCardsImpl value,
    $Res Function(_$FetchCardsImpl) then,
  ) = __$$FetchCardsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$FetchCardsImplCopyWithImpl<$Res>
    extends _$PokemonEventCopyWithImpl<$Res, _$FetchCardsImpl>
    implements _$$FetchCardsImplCopyWith<$Res> {
  __$$FetchCardsImplCopyWithImpl(
    _$FetchCardsImpl _value,
    $Res Function(_$FetchCardsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PokemonEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? index = null}) {
    return _then(
      _$FetchCardsImpl(
        null == index
            ? _value.index
            : index // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$FetchCardsImpl extends FetchCards {
  const _$FetchCardsImpl(this.index) : super._();

  @override
  final int index;

  @override
  String toString() {
    return 'PokemonEvent.fetchCards(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchCardsImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  /// Create a copy of PokemonEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchCardsImplCopyWith<_$FetchCardsImpl> get copyWith =>
      __$$FetchCardsImplCopyWithImpl<_$FetchCardsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) fetchCards,
    required TResult Function(String text) search,
    required TResult Function(bool val) searchShow,
  }) {
    return fetchCards(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? fetchCards,
    TResult? Function(String text)? search,
    TResult? Function(bool val)? searchShow,
  }) {
    return fetchCards?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? fetchCards,
    TResult Function(String text)? search,
    TResult Function(bool val)? searchShow,
    required TResult orElse(),
  }) {
    if (fetchCards != null) {
      return fetchCards(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchCards value) fetchCards,
    required TResult Function(Search value) search,
    required TResult Function(SearchShow value) searchShow,
  }) {
    return fetchCards(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchCards value)? fetchCards,
    TResult? Function(Search value)? search,
    TResult? Function(SearchShow value)? searchShow,
  }) {
    return fetchCards?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchCards value)? fetchCards,
    TResult Function(Search value)? search,
    TResult Function(SearchShow value)? searchShow,
    required TResult orElse(),
  }) {
    if (fetchCards != null) {
      return fetchCards(this);
    }
    return orElse();
  }
}

abstract class FetchCards extends PokemonEvent {
  const factory FetchCards(final int index) = _$FetchCardsImpl;
  const FetchCards._() : super._();

  int get index;

  /// Create a copy of PokemonEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchCardsImplCopyWith<_$FetchCardsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchImplCopyWith<$Res> {
  factory _$$SearchImplCopyWith(
    _$SearchImpl value,
    $Res Function(_$SearchImpl) then,
  ) = __$$SearchImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$SearchImplCopyWithImpl<$Res>
    extends _$PokemonEventCopyWithImpl<$Res, _$SearchImpl>
    implements _$$SearchImplCopyWith<$Res> {
  __$$SearchImplCopyWithImpl(
    _$SearchImpl _value,
    $Res Function(_$SearchImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PokemonEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? text = null}) {
    return _then(
      _$SearchImpl(
        null == text
            ? _value.text
            : text // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$SearchImpl extends Search {
  const _$SearchImpl(this.text) : super._();

  @override
  final String text;

  @override
  String toString() {
    return 'PokemonEvent.search(text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchImpl &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  /// Create a copy of PokemonEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchImplCopyWith<_$SearchImpl> get copyWith =>
      __$$SearchImplCopyWithImpl<_$SearchImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) fetchCards,
    required TResult Function(String text) search,
    required TResult Function(bool val) searchShow,
  }) {
    return search(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? fetchCards,
    TResult? Function(String text)? search,
    TResult? Function(bool val)? searchShow,
  }) {
    return search?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? fetchCards,
    TResult Function(String text)? search,
    TResult Function(bool val)? searchShow,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchCards value) fetchCards,
    required TResult Function(Search value) search,
    required TResult Function(SearchShow value) searchShow,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchCards value)? fetchCards,
    TResult? Function(Search value)? search,
    TResult? Function(SearchShow value)? searchShow,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchCards value)? fetchCards,
    TResult Function(Search value)? search,
    TResult Function(SearchShow value)? searchShow,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class Search extends PokemonEvent {
  const factory Search(final String text) = _$SearchImpl;
  const Search._() : super._();

  String get text;

  /// Create a copy of PokemonEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchImplCopyWith<_$SearchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchShowImplCopyWith<$Res> {
  factory _$$SearchShowImplCopyWith(
    _$SearchShowImpl value,
    $Res Function(_$SearchShowImpl) then,
  ) = __$$SearchShowImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool val});
}

/// @nodoc
class __$$SearchShowImplCopyWithImpl<$Res>
    extends _$PokemonEventCopyWithImpl<$Res, _$SearchShowImpl>
    implements _$$SearchShowImplCopyWith<$Res> {
  __$$SearchShowImplCopyWithImpl(
    _$SearchShowImpl _value,
    $Res Function(_$SearchShowImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PokemonEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? val = null}) {
    return _then(
      _$SearchShowImpl(
        null == val
            ? _value.val
            : val // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$SearchShowImpl extends SearchShow {
  const _$SearchShowImpl(this.val) : super._();

  @override
  final bool val;

  @override
  String toString() {
    return 'PokemonEvent.searchShow(val: $val)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchShowImpl &&
            (identical(other.val, val) || other.val == val));
  }

  @override
  int get hashCode => Object.hash(runtimeType, val);

  /// Create a copy of PokemonEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchShowImplCopyWith<_$SearchShowImpl> get copyWith =>
      __$$SearchShowImplCopyWithImpl<_$SearchShowImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) fetchCards,
    required TResult Function(String text) search,
    required TResult Function(bool val) searchShow,
  }) {
    return searchShow(val);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? fetchCards,
    TResult? Function(String text)? search,
    TResult? Function(bool val)? searchShow,
  }) {
    return searchShow?.call(val);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? fetchCards,
    TResult Function(String text)? search,
    TResult Function(bool val)? searchShow,
    required TResult orElse(),
  }) {
    if (searchShow != null) {
      return searchShow(val);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchCards value) fetchCards,
    required TResult Function(Search value) search,
    required TResult Function(SearchShow value) searchShow,
  }) {
    return searchShow(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchCards value)? fetchCards,
    TResult? Function(Search value)? search,
    TResult? Function(SearchShow value)? searchShow,
  }) {
    return searchShow?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchCards value)? fetchCards,
    TResult Function(Search value)? search,
    TResult Function(SearchShow value)? searchShow,
    required TResult orElse(),
  }) {
    if (searchShow != null) {
      return searchShow(this);
    }
    return orElse();
  }
}

abstract class SearchShow extends PokemonEvent {
  const factory SearchShow(final bool val) = _$SearchShowImpl;
  const SearchShow._() : super._();

  bool get val;

  /// Create a copy of PokemonEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchShowImplCopyWith<_$SearchShowImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
