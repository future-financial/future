import 'package:future/features/login_with_email/model/login_schema.dart';
import 'package:future/features/login_with_email/ui/login_button.dart';
import 'package:future/shared/constants/spacing.dart';
import 'package:future/shared/ui/text_field.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          LabeledTextFormField(
            label: "Email",
            hintText: "Enter your email",
            validator: LoginSchema.email,
          ),
          AppSpacing.gapV16,
          LabeledTextFormField(
            label: "Password",
            hintText: "Enter your password",
            obscureText: true,
            validator: LoginSchema.password,
          ),
          AppSpacing.gapV24,
          LoginButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                // Process data.
                print("Form is valid");
              }
            },
          ),
        ],
      ),
    );
  }
}
