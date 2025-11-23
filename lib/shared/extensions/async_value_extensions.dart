import 'package:flutter/material.dart';
import 'package:future/shared/extensions/build_context_extensions.dart';
import 'package:future/shared/state/async_value.dart';

extension AsyncValueExtensions<T> on AsyncValue<T> {
  bool get isLoading => this is AsyncLoading<T>;

  T? get data => this is AsyncData<T> ? (this as AsyncData<T>).value : null;

  void showSnackBarOnError(BuildContext context) {
    if (this is AsyncError<T>) {
      final error = this as AsyncError<T>;
      context.showErrorSnackBar(error.message);
    }
  }
}
