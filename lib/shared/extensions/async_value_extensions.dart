import 'package:flutter/material.dart';
import 'package:future/shared/extensions/build_context_extensions.dart';
import 'package:future/shared/state/async_value.dart';

extension AsyncValueExtensions on AsyncValue<void> {
  bool get isLoading => this is AsyncLoading<void>;

  void showSnackBarOnError(BuildContext context) {
    if (this is AsyncError<void>) {
      final error = this as AsyncError<void>;
      context.showErrorSnackBar(error.message);
    }
  }
}
