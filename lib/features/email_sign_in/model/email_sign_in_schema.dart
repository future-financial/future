import 'package:form_validator/form_validator.dart';

class EmailSignInSchema {
  static final String? Function(String?) email = ValidationBuilder()
      .email('Please enter a valid email address')
      .required('Email is required')
      .build();

  static final String? Function(String?) password = ValidationBuilder()
      .minLength(8, 'Password must be at least 8 characters long')
      .required('Password is required')
      .build();
}
