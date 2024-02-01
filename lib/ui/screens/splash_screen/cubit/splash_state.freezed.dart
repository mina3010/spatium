// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'splash_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SplashState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Widget screen, String? locale)
        successNavigateNext,
    required TResult Function() successNeedsUpdate,
    required TResult Function() loading,
    required TResult Function(dynamic Function()? onRetry) noInternet,
    required TResult Function(Failure? failure) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Widget screen, String? locale)? successNavigateNext,
    TResult? Function()? successNeedsUpdate,
    TResult? Function()? loading,
    TResult? Function(dynamic Function()? onRetry)? noInternet,
    TResult? Function(Failure? failure)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Widget screen, String? locale)? successNavigateNext,
    TResult Function()? successNeedsUpdate,
    TResult Function()? loading,
    TResult Function(dynamic Function()? onRetry)? noInternet,
    TResult Function(Failure? failure)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SuccessNavigateNext value) successNavigateNext,
    required TResult Function(SuccessNeedsUpdate value) successNeedsUpdate,
    required TResult Function(Loading value) loading,
    required TResult Function(NoInternet value) noInternet,
    required TResult Function(ErrorDetails value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SuccessNavigateNext value)? successNavigateNext,
    TResult? Function(SuccessNeedsUpdate value)? successNeedsUpdate,
    TResult? Function(Loading value)? loading,
    TResult? Function(NoInternet value)? noInternet,
    TResult? Function(ErrorDetails value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SuccessNavigateNext value)? successNavigateNext,
    TResult Function(SuccessNeedsUpdate value)? successNeedsUpdate,
    TResult Function(Loading value)? loading,
    TResult Function(NoInternet value)? noInternet,
    TResult Function(ErrorDetails value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplashStateCopyWith<$Res> {
  factory $SplashStateCopyWith(
          SplashState value, $Res Function(SplashState) then) =
      _$SplashStateCopyWithImpl<$Res, SplashState>;
}

/// @nodoc
class _$SplashStateCopyWithImpl<$Res, $Val extends SplashState>
    implements $SplashStateCopyWith<$Res> {
  _$SplashStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$SplashStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'SplashState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Widget screen, String? locale)
        successNavigateNext,
    required TResult Function() successNeedsUpdate,
    required TResult Function() loading,
    required TResult Function(dynamic Function()? onRetry) noInternet,
    required TResult Function(Failure? failure) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Widget screen, String? locale)? successNavigateNext,
    TResult? Function()? successNeedsUpdate,
    TResult? Function()? loading,
    TResult? Function(dynamic Function()? onRetry)? noInternet,
    TResult? Function(Failure? failure)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Widget screen, String? locale)? successNavigateNext,
    TResult Function()? successNeedsUpdate,
    TResult Function()? loading,
    TResult Function(dynamic Function()? onRetry)? noInternet,
    TResult Function(Failure? failure)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SuccessNavigateNext value) successNavigateNext,
    required TResult Function(SuccessNeedsUpdate value) successNeedsUpdate,
    required TResult Function(Loading value) loading,
    required TResult Function(NoInternet value) noInternet,
    required TResult Function(ErrorDetails value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SuccessNavigateNext value)? successNavigateNext,
    TResult? Function(SuccessNeedsUpdate value)? successNeedsUpdate,
    TResult? Function(Loading value)? loading,
    TResult? Function(NoInternet value)? noInternet,
    TResult? Function(ErrorDetails value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SuccessNavigateNext value)? successNavigateNext,
    TResult Function(SuccessNeedsUpdate value)? successNeedsUpdate,
    TResult Function(Loading value)? loading,
    TResult Function(NoInternet value)? noInternet,
    TResult Function(ErrorDetails value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SplashState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$SuccessNavigateNextImplCopyWith<$Res> {
  factory _$$SuccessNavigateNextImplCopyWith(_$SuccessNavigateNextImpl value,
          $Res Function(_$SuccessNavigateNextImpl) then) =
      __$$SuccessNavigateNextImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Widget screen, String? locale});
}

/// @nodoc
class __$$SuccessNavigateNextImplCopyWithImpl<$Res>
    extends _$SplashStateCopyWithImpl<$Res, _$SuccessNavigateNextImpl>
    implements _$$SuccessNavigateNextImplCopyWith<$Res> {
  __$$SuccessNavigateNextImplCopyWithImpl(_$SuccessNavigateNextImpl _value,
      $Res Function(_$SuccessNavigateNextImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? screen = null,
    Object? locale = freezed,
  }) {
    return _then(_$SuccessNavigateNextImpl(
      null == screen
          ? _value.screen
          : screen // ignore: cast_nullable_to_non_nullable
              as Widget,
      freezed == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SuccessNavigateNextImpl implements SuccessNavigateNext {
  const _$SuccessNavigateNextImpl(this.screen, [this.locale]);

  @override
  final Widget screen;
  @override
  final String? locale;

  @override
  String toString() {
    return 'SplashState.successNavigateNext(screen: $screen, locale: $locale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessNavigateNextImpl &&
            (identical(other.screen, screen) || other.screen == screen) &&
            (identical(other.locale, locale) || other.locale == locale));
  }

  @override
  int get hashCode => Object.hash(runtimeType, screen, locale);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessNavigateNextImplCopyWith<_$SuccessNavigateNextImpl> get copyWith =>
      __$$SuccessNavigateNextImplCopyWithImpl<_$SuccessNavigateNextImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Widget screen, String? locale)
        successNavigateNext,
    required TResult Function() successNeedsUpdate,
    required TResult Function() loading,
    required TResult Function(dynamic Function()? onRetry) noInternet,
    required TResult Function(Failure? failure) error,
  }) {
    return successNavigateNext(screen, locale);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Widget screen, String? locale)? successNavigateNext,
    TResult? Function()? successNeedsUpdate,
    TResult? Function()? loading,
    TResult? Function(dynamic Function()? onRetry)? noInternet,
    TResult? Function(Failure? failure)? error,
  }) {
    return successNavigateNext?.call(screen, locale);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Widget screen, String? locale)? successNavigateNext,
    TResult Function()? successNeedsUpdate,
    TResult Function()? loading,
    TResult Function(dynamic Function()? onRetry)? noInternet,
    TResult Function(Failure? failure)? error,
    required TResult orElse(),
  }) {
    if (successNavigateNext != null) {
      return successNavigateNext(screen, locale);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SuccessNavigateNext value) successNavigateNext,
    required TResult Function(SuccessNeedsUpdate value) successNeedsUpdate,
    required TResult Function(Loading value) loading,
    required TResult Function(NoInternet value) noInternet,
    required TResult Function(ErrorDetails value) error,
  }) {
    return successNavigateNext(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SuccessNavigateNext value)? successNavigateNext,
    TResult? Function(SuccessNeedsUpdate value)? successNeedsUpdate,
    TResult? Function(Loading value)? loading,
    TResult? Function(NoInternet value)? noInternet,
    TResult? Function(ErrorDetails value)? error,
  }) {
    return successNavigateNext?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SuccessNavigateNext value)? successNavigateNext,
    TResult Function(SuccessNeedsUpdate value)? successNeedsUpdate,
    TResult Function(Loading value)? loading,
    TResult Function(NoInternet value)? noInternet,
    TResult Function(ErrorDetails value)? error,
    required TResult orElse(),
  }) {
    if (successNavigateNext != null) {
      return successNavigateNext(this);
    }
    return orElse();
  }
}

abstract class SuccessNavigateNext implements SplashState {
  const factory SuccessNavigateNext(final Widget screen,
      [final String? locale]) = _$SuccessNavigateNextImpl;

  Widget get screen;
  String? get locale;
  @JsonKey(ignore: true)
  _$$SuccessNavigateNextImplCopyWith<_$SuccessNavigateNextImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessNeedsUpdateImplCopyWith<$Res> {
  factory _$$SuccessNeedsUpdateImplCopyWith(_$SuccessNeedsUpdateImpl value,
          $Res Function(_$SuccessNeedsUpdateImpl) then) =
      __$$SuccessNeedsUpdateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuccessNeedsUpdateImplCopyWithImpl<$Res>
    extends _$SplashStateCopyWithImpl<$Res, _$SuccessNeedsUpdateImpl>
    implements _$$SuccessNeedsUpdateImplCopyWith<$Res> {
  __$$SuccessNeedsUpdateImplCopyWithImpl(_$SuccessNeedsUpdateImpl _value,
      $Res Function(_$SuccessNeedsUpdateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SuccessNeedsUpdateImpl implements SuccessNeedsUpdate {
  const _$SuccessNeedsUpdateImpl();

  @override
  String toString() {
    return 'SplashState.successNeedsUpdate()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SuccessNeedsUpdateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Widget screen, String? locale)
        successNavigateNext,
    required TResult Function() successNeedsUpdate,
    required TResult Function() loading,
    required TResult Function(dynamic Function()? onRetry) noInternet,
    required TResult Function(Failure? failure) error,
  }) {
    return successNeedsUpdate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Widget screen, String? locale)? successNavigateNext,
    TResult? Function()? successNeedsUpdate,
    TResult? Function()? loading,
    TResult? Function(dynamic Function()? onRetry)? noInternet,
    TResult? Function(Failure? failure)? error,
  }) {
    return successNeedsUpdate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Widget screen, String? locale)? successNavigateNext,
    TResult Function()? successNeedsUpdate,
    TResult Function()? loading,
    TResult Function(dynamic Function()? onRetry)? noInternet,
    TResult Function(Failure? failure)? error,
    required TResult orElse(),
  }) {
    if (successNeedsUpdate != null) {
      return successNeedsUpdate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SuccessNavigateNext value) successNavigateNext,
    required TResult Function(SuccessNeedsUpdate value) successNeedsUpdate,
    required TResult Function(Loading value) loading,
    required TResult Function(NoInternet value) noInternet,
    required TResult Function(ErrorDetails value) error,
  }) {
    return successNeedsUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SuccessNavigateNext value)? successNavigateNext,
    TResult? Function(SuccessNeedsUpdate value)? successNeedsUpdate,
    TResult? Function(Loading value)? loading,
    TResult? Function(NoInternet value)? noInternet,
    TResult? Function(ErrorDetails value)? error,
  }) {
    return successNeedsUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SuccessNavigateNext value)? successNavigateNext,
    TResult Function(SuccessNeedsUpdate value)? successNeedsUpdate,
    TResult Function(Loading value)? loading,
    TResult Function(NoInternet value)? noInternet,
    TResult Function(ErrorDetails value)? error,
    required TResult orElse(),
  }) {
    if (successNeedsUpdate != null) {
      return successNeedsUpdate(this);
    }
    return orElse();
  }
}

abstract class SuccessNeedsUpdate implements SplashState {
  const factory SuccessNeedsUpdate() = _$SuccessNeedsUpdateImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$SplashStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'SplashState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Widget screen, String? locale)
        successNavigateNext,
    required TResult Function() successNeedsUpdate,
    required TResult Function() loading,
    required TResult Function(dynamic Function()? onRetry) noInternet,
    required TResult Function(Failure? failure) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Widget screen, String? locale)? successNavigateNext,
    TResult? Function()? successNeedsUpdate,
    TResult? Function()? loading,
    TResult? Function(dynamic Function()? onRetry)? noInternet,
    TResult? Function(Failure? failure)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Widget screen, String? locale)? successNavigateNext,
    TResult Function()? successNeedsUpdate,
    TResult Function()? loading,
    TResult Function(dynamic Function()? onRetry)? noInternet,
    TResult Function(Failure? failure)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SuccessNavigateNext value) successNavigateNext,
    required TResult Function(SuccessNeedsUpdate value) successNeedsUpdate,
    required TResult Function(Loading value) loading,
    required TResult Function(NoInternet value) noInternet,
    required TResult Function(ErrorDetails value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SuccessNavigateNext value)? successNavigateNext,
    TResult? Function(SuccessNeedsUpdate value)? successNeedsUpdate,
    TResult? Function(Loading value)? loading,
    TResult? Function(NoInternet value)? noInternet,
    TResult? Function(ErrorDetails value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SuccessNavigateNext value)? successNavigateNext,
    TResult Function(SuccessNeedsUpdate value)? successNeedsUpdate,
    TResult Function(Loading value)? loading,
    TResult Function(NoInternet value)? noInternet,
    TResult Function(ErrorDetails value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements SplashState {
  const factory Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$NoInternetImplCopyWith<$Res> {
  factory _$$NoInternetImplCopyWith(
          _$NoInternetImpl value, $Res Function(_$NoInternetImpl) then) =
      __$$NoInternetImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic Function()? onRetry});
}

/// @nodoc
class __$$NoInternetImplCopyWithImpl<$Res>
    extends _$SplashStateCopyWithImpl<$Res, _$NoInternetImpl>
    implements _$$NoInternetImplCopyWith<$Res> {
  __$$NoInternetImplCopyWithImpl(
      _$NoInternetImpl _value, $Res Function(_$NoInternetImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? onRetry = freezed,
  }) {
    return _then(_$NoInternetImpl(
      freezed == onRetry
          ? _value.onRetry
          : onRetry // ignore: cast_nullable_to_non_nullable
              as dynamic Function()?,
    ));
  }
}

/// @nodoc

class _$NoInternetImpl implements NoInternet {
  const _$NoInternetImpl([this.onRetry]);

  @override
  final dynamic Function()? onRetry;

  @override
  String toString() {
    return 'SplashState.noInternet(onRetry: $onRetry)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoInternetImpl &&
            (identical(other.onRetry, onRetry) || other.onRetry == onRetry));
  }

  @override
  int get hashCode => Object.hash(runtimeType, onRetry);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoInternetImplCopyWith<_$NoInternetImpl> get copyWith =>
      __$$NoInternetImplCopyWithImpl<_$NoInternetImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Widget screen, String? locale)
        successNavigateNext,
    required TResult Function() successNeedsUpdate,
    required TResult Function() loading,
    required TResult Function(dynamic Function()? onRetry) noInternet,
    required TResult Function(Failure? failure) error,
  }) {
    return noInternet(onRetry);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Widget screen, String? locale)? successNavigateNext,
    TResult? Function()? successNeedsUpdate,
    TResult? Function()? loading,
    TResult? Function(dynamic Function()? onRetry)? noInternet,
    TResult? Function(Failure? failure)? error,
  }) {
    return noInternet?.call(onRetry);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Widget screen, String? locale)? successNavigateNext,
    TResult Function()? successNeedsUpdate,
    TResult Function()? loading,
    TResult Function(dynamic Function()? onRetry)? noInternet,
    TResult Function(Failure? failure)? error,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet(onRetry);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SuccessNavigateNext value) successNavigateNext,
    required TResult Function(SuccessNeedsUpdate value) successNeedsUpdate,
    required TResult Function(Loading value) loading,
    required TResult Function(NoInternet value) noInternet,
    required TResult Function(ErrorDetails value) error,
  }) {
    return noInternet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SuccessNavigateNext value)? successNavigateNext,
    TResult? Function(SuccessNeedsUpdate value)? successNeedsUpdate,
    TResult? Function(Loading value)? loading,
    TResult? Function(NoInternet value)? noInternet,
    TResult? Function(ErrorDetails value)? error,
  }) {
    return noInternet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SuccessNavigateNext value)? successNavigateNext,
    TResult Function(SuccessNeedsUpdate value)? successNeedsUpdate,
    TResult Function(Loading value)? loading,
    TResult Function(NoInternet value)? noInternet,
    TResult Function(ErrorDetails value)? error,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet(this);
    }
    return orElse();
  }
}

abstract class NoInternet implements SplashState {
  const factory NoInternet([final dynamic Function()? onRetry]) =
      _$NoInternetImpl;

  dynamic Function()? get onRetry;
  @JsonKey(ignore: true)
  _$$NoInternetImplCopyWith<_$NoInternetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorDetailsImplCopyWith<$Res> {
  factory _$$ErrorDetailsImplCopyWith(
          _$ErrorDetailsImpl value, $Res Function(_$ErrorDetailsImpl) then) =
      __$$ErrorDetailsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure? failure});
}

/// @nodoc
class __$$ErrorDetailsImplCopyWithImpl<$Res>
    extends _$SplashStateCopyWithImpl<$Res, _$ErrorDetailsImpl>
    implements _$$ErrorDetailsImplCopyWith<$Res> {
  __$$ErrorDetailsImplCopyWithImpl(
      _$ErrorDetailsImpl _value, $Res Function(_$ErrorDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_$ErrorDetailsImpl(
      freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }
}

/// @nodoc

class _$ErrorDetailsImpl implements ErrorDetails {
  const _$ErrorDetailsImpl([this.failure]);

  @override
  final Failure? failure;

  @override
  String toString() {
    return 'SplashState.error(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorDetailsImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorDetailsImplCopyWith<_$ErrorDetailsImpl> get copyWith =>
      __$$ErrorDetailsImplCopyWithImpl<_$ErrorDetailsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Widget screen, String? locale)
        successNavigateNext,
    required TResult Function() successNeedsUpdate,
    required TResult Function() loading,
    required TResult Function(dynamic Function()? onRetry) noInternet,
    required TResult Function(Failure? failure) error,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Widget screen, String? locale)? successNavigateNext,
    TResult? Function()? successNeedsUpdate,
    TResult? Function()? loading,
    TResult? Function(dynamic Function()? onRetry)? noInternet,
    TResult? Function(Failure? failure)? error,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Widget screen, String? locale)? successNavigateNext,
    TResult Function()? successNeedsUpdate,
    TResult Function()? loading,
    TResult Function(dynamic Function()? onRetry)? noInternet,
    TResult Function(Failure? failure)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SuccessNavigateNext value) successNavigateNext,
    required TResult Function(SuccessNeedsUpdate value) successNeedsUpdate,
    required TResult Function(Loading value) loading,
    required TResult Function(NoInternet value) noInternet,
    required TResult Function(ErrorDetails value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SuccessNavigateNext value)? successNavigateNext,
    TResult? Function(SuccessNeedsUpdate value)? successNeedsUpdate,
    TResult? Function(Loading value)? loading,
    TResult? Function(NoInternet value)? noInternet,
    TResult? Function(ErrorDetails value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SuccessNavigateNext value)? successNavigateNext,
    TResult Function(SuccessNeedsUpdate value)? successNeedsUpdate,
    TResult Function(Loading value)? loading,
    TResult Function(NoInternet value)? noInternet,
    TResult Function(ErrorDetails value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorDetails implements SplashState {
  const factory ErrorDetails([final Failure? failure]) = _$ErrorDetailsImpl;

  Failure? get failure;
  @JsonKey(ignore: true)
  _$$ErrorDetailsImplCopyWith<_$ErrorDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
