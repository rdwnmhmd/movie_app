// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movie_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MovieEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() show,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? show,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? show,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'MovieEvent.started()';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() show,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? show,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? show,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }
}

abstract class _Started implements MovieEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc

class _$_Show implements _Show {
  const _$_Show();

  @override
  String toString() {
    return 'MovieEvent.show()';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() show,
  }) {
    return show();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? show,
  }) {
    return show?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? show,
    required TResult orElse(),
  }) {
    if (show != null) {
      return show();
    }
    return orElse();
  }
}

abstract class _Show implements MovieEvent {
  const factory _Show() = _$_Show;
}

/// @nodoc
mixin _$MovieState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isLoading,
    required TResult Function(NetworkExceptions networkExceptions) isError,
    required TResult Function(List<Movie> movie) loadedShow,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? isLoading,
    TResult? Function(NetworkExceptions networkExceptions)? isError,
    TResult? Function(List<Movie> movie)? loadedShow,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function(NetworkExceptions networkExceptions)? isError,
    TResult Function(List<Movie> movie)? loadedShow,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'MovieState.initial()';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isLoading,
    required TResult Function(NetworkExceptions networkExceptions) isError,
    required TResult Function(List<Movie> movie) loadedShow,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? isLoading,
    TResult? Function(NetworkExceptions networkExceptions)? isError,
    TResult? Function(List<Movie> movie)? loadedShow,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function(NetworkExceptions networkExceptions)? isError,
    TResult Function(List<Movie> movie)? loadedShow,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }
}

abstract class _Initial implements MovieState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc

class _$_IsLoading implements _IsLoading {
  const _$_IsLoading();

  @override
  String toString() {
    return 'MovieState.isLoading()';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isLoading,
    required TResult Function(NetworkExceptions networkExceptions) isError,
    required TResult Function(List<Movie> movie) loadedShow,
  }) {
    return isLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? isLoading,
    TResult? Function(NetworkExceptions networkExceptions)? isError,
    TResult? Function(List<Movie> movie)? loadedShow,
  }) {
    return isLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function(NetworkExceptions networkExceptions)? isError,
    TResult Function(List<Movie> movie)? loadedShow,
    required TResult orElse(),
  }) {
    if (isLoading != null) {
      return isLoading();
    }
    return orElse();
  }
}

abstract class _IsLoading implements MovieState {
  const factory _IsLoading() = _$_IsLoading;
}

/// @nodoc

class _$_IsError implements _IsError {
  const _$_IsError(this.networkExceptions);

  @override
  final NetworkExceptions networkExceptions;

  @override
  String toString() {
    return 'MovieState.isError(networkExceptions: $networkExceptions)';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isLoading,
    required TResult Function(NetworkExceptions networkExceptions) isError,
    required TResult Function(List<Movie> movie) loadedShow,
  }) {
    return isError(networkExceptions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? isLoading,
    TResult? Function(NetworkExceptions networkExceptions)? isError,
    TResult? Function(List<Movie> movie)? loadedShow,
  }) {
    return isError?.call(networkExceptions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function(NetworkExceptions networkExceptions)? isError,
    TResult Function(List<Movie> movie)? loadedShow,
    required TResult orElse(),
  }) {
    if (isError != null) {
      return isError(networkExceptions);
    }
    return orElse();
  }
}

abstract class _IsError implements MovieState {
  const factory _IsError(final NetworkExceptions networkExceptions) =
      _$_IsError;

  NetworkExceptions get networkExceptions;
}

/// @nodoc

class _$_LoadedShow implements _LoadedShow {
  const _$_LoadedShow(final List<Movie> movie) : _movie = movie;

  final List<Movie> _movie;
  @override
  List<Movie> get movie {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_movie);
  }

  @override
  String toString() {
    return 'MovieState.loadedShow(movie: $movie)';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isLoading,
    required TResult Function(NetworkExceptions networkExceptions) isError,
    required TResult Function(List<Movie> movie) loadedShow,
  }) {
    return loadedShow(movie);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? isLoading,
    TResult? Function(NetworkExceptions networkExceptions)? isError,
    TResult? Function(List<Movie> movie)? loadedShow,
  }) {
    return loadedShow?.call(movie);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function(NetworkExceptions networkExceptions)? isError,
    TResult Function(List<Movie> movie)? loadedShow,
    required TResult orElse(),
  }) {
    if (loadedShow != null) {
      return loadedShow(movie);
    }
    return orElse();
  }
}

abstract class _LoadedShow implements MovieState {
  const factory _LoadedShow(final List<Movie> movie) = _$_LoadedShow;

  List<Movie> get movie;
}
