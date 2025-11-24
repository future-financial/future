import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:future/shared/constants/messages.dart';

@sealed
@immutable
abstract class AsyncValue<T> {
  const factory AsyncValue.data(T value) = AsyncData<T>;
  const factory AsyncValue.loading() = AsyncLoading<T>;
  const factory AsyncValue.error(
    Object error, [
    String message,
    StackTrace? stackTrace,
  ]) = AsyncError<T>;
}

class AsyncData<T> implements AsyncValue<T> {
  final T value;
  const AsyncData(this.value);
}

class AsyncLoading<T> implements AsyncValue<T> {
  const AsyncLoading();
}

class AsyncError<T> implements AsyncValue<T> {
  final Object error;
  final String message;
  final StackTrace? stackTrace;

  const AsyncError(
    this.error, [
    this.message = ErrorMessages.unknownError,
    this.stackTrace,
  ]);
}
