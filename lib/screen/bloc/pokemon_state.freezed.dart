// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$PokemonState {
  PokemonEntity? get items => throw _privateConstructorUsedError;
  LoadState get isLoading => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  bool get isPagination => throw _privateConstructorUsedError;
  bool get isSearch => throw _privateConstructorUsedError;

  /// Create a copy of PokemonState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonStateCopyWith<PokemonState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonStateCopyWith<$Res> {
  factory $PokemonStateCopyWith(
    PokemonState value,
    $Res Function(PokemonState) then,
  ) = _$PokemonStateCopyWithImpl<$Res, PokemonState>;
  @useResult
  $Res call({
    PokemonEntity? items,
    LoadState isLoading,
    String errorMessage,
    bool isPagination,
    bool isSearch,
  });
}

/// @nodoc
class _$PokemonStateCopyWithImpl<$Res, $Val extends PokemonState>
    implements $PokemonStateCopyWith<$Res> {
  _$PokemonStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = freezed,
    Object? isLoading = null,
    Object? errorMessage = null,
    Object? isPagination = null,
    Object? isSearch = null,
  }) {
    return _then(
      _value.copyWith(
            items: freezed == items
                ? _value.items
                : items // ignore: cast_nullable_to_non_nullable
                      as PokemonEntity?,
            isLoading: null == isLoading
                ? _value.isLoading
                : isLoading // ignore: cast_nullable_to_non_nullable
                      as LoadState,
            errorMessage: null == errorMessage
                ? _value.errorMessage
                : errorMessage // ignore: cast_nullable_to_non_nullable
                      as String,
            isPagination: null == isPagination
                ? _value.isPagination
                : isPagination // ignore: cast_nullable_to_non_nullable
                      as bool,
            isSearch: null == isSearch
                ? _value.isSearch
                : isSearch // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PokemonStateImplCopyWith<$Res>
    implements $PokemonStateCopyWith<$Res> {
  factory _$$PokemonStateImplCopyWith(
    _$PokemonStateImpl value,
    $Res Function(_$PokemonStateImpl) then,
  ) = __$$PokemonStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    PokemonEntity? items,
    LoadState isLoading,
    String errorMessage,
    bool isPagination,
    bool isSearch,
  });
}

/// @nodoc
class __$$PokemonStateImplCopyWithImpl<$Res>
    extends _$PokemonStateCopyWithImpl<$Res, _$PokemonStateImpl>
    implements _$$PokemonStateImplCopyWith<$Res> {
  __$$PokemonStateImplCopyWithImpl(
    _$PokemonStateImpl _value,
    $Res Function(_$PokemonStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PokemonState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = freezed,
    Object? isLoading = null,
    Object? errorMessage = null,
    Object? isPagination = null,
    Object? isSearch = null,
  }) {
    return _then(
      _$PokemonStateImpl(
        items: freezed == items
            ? _value.items
            : items // ignore: cast_nullable_to_non_nullable
                  as PokemonEntity?,
        isLoading: null == isLoading
            ? _value.isLoading
            : isLoading // ignore: cast_nullable_to_non_nullable
                  as LoadState,
        errorMessage: null == errorMessage
            ? _value.errorMessage
            : errorMessage // ignore: cast_nullable_to_non_nullable
                  as String,
        isPagination: null == isPagination
            ? _value.isPagination
            : isPagination // ignore: cast_nullable_to_non_nullable
                  as bool,
        isSearch: null == isSearch
            ? _value.isSearch
            : isSearch // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$PokemonStateImpl extends _PokemonState {
  _$PokemonStateImpl({
    this.items,
    this.isLoading = LoadState.Initial,
    this.errorMessage = "",
    this.isPagination = false,
    this.isSearch = false,
  }) : super._();

  @override
  final PokemonEntity? items;
  @override
  @JsonKey()
  final LoadState isLoading;
  @override
  @JsonKey()
  final String errorMessage;
  @override
  @JsonKey()
  final bool isPagination;
  @override
  @JsonKey()
  final bool isSearch;

  @override
  String toString() {
    return 'PokemonState(items: $items, isLoading: $isLoading, errorMessage: $errorMessage, isPagination: $isPagination, isSearch: $isSearch)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonStateImpl &&
            (identical(other.items, items) || other.items == items) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.isPagination, isPagination) ||
                other.isPagination == isPagination) &&
            (identical(other.isSearch, isSearch) ||
                other.isSearch == isSearch));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    items,
    isLoading,
    errorMessage,
    isPagination,
    isSearch,
  );

  /// Create a copy of PokemonState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonStateImplCopyWith<_$PokemonStateImpl> get copyWith =>
      __$$PokemonStateImplCopyWithImpl<_$PokemonStateImpl>(this, _$identity);
}

abstract class _PokemonState extends PokemonState {
  factory _PokemonState({
    final PokemonEntity? items,
    final LoadState isLoading,
    final String errorMessage,
    final bool isPagination,
    final bool isSearch,
  }) = _$PokemonStateImpl;
  _PokemonState._() : super._();

  @override
  PokemonEntity? get items;
  @override
  LoadState get isLoading;
  @override
  String get errorMessage;
  @override
  bool get isPagination;
  @override
  bool get isSearch;

  /// Create a copy of PokemonState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonStateImplCopyWith<_$PokemonStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
