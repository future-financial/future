import 'package:form_validator/form_validator.dart';

class LoginSchema {
  static final String? Function(String?) email = ValidationBuilder()
      .email('Please enter a valid email address')
      .required('Email is required')
      .build();

  static final String? Function(String?) password = ValidationBuilder()
      .minLength(6, 'Password must be at least 6 characters long')
      .required('Password is required')
      .build();
}
