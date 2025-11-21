import 'package:future/shared/lib/supabase/instance.dart';
import 'package:flutter/material.dart';

extension BuildContextExtensions on BuildContext {
  double get screenWidth => MediaQuery.of(this).size.width;
  double get screenHeight => MediaQuery.of(this).size.height;
  bool get isAuthenticated {
    return supabase.auth.currentSession != null;
  }
}
