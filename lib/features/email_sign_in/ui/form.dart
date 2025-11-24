import 'package:future/entities/user/view_model/user_notifier_provider.dart';
import 'package:future/features/email_sign_in/model/email_sign_in_schema.dart';
import 'package:future/features/email_sign_in/view_model/email_sign_in_notifier_provide.dart';
import 'package:future/shared/constants/spacing.dart';
import 'package:future/shared/extensions/async_value_extensions.dart';
import 'package:future/shared/extensions/build_context_extensions.dart';
import 'package:future/shared/ui/button.dart';
import 'package:future/shared/ui/text_field.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart' hide AsyncValue;
import 'package:future/shared/state/async_value.dart';

class LoginForm extends ConsumerStatefulWidget {
  const LoginForm({super.key});

  @override
  ConsumerState<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends ConsumerState<LoginForm> {
  final _formKey = GlobalKey<FormState>();

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    ref.listen<AsyncValue<void>>(emailSignInNotifierProvider, (_, state) {
      state.showSnackBarOnError(context);
    });
    final emailSignInState = ref.watch(emailSignInNotifierProvider);

    return Form(
      key: _formKey,
      child: Column(
        children: [
          LabeledTextFormField(
            label: "Email",
            hintText: "Enter your email",
            controller: _emailController,
            validator: EmailSignInSchema.email,
            disabled: emailSignInState.isLoading,
          ),
          AppSpacing.gapV16,
          LabeledTextFormField(
            label: "Password",
            hintText: "Enter your password",
            controller: _passwordController,
            obscureText: true,
            validator: EmailSignInSchema.password,
            disabled: emailSignInState.isLoading,
          ),
          AppSpacing.gapV24,
          Button(
            isLoading: emailSignInState.isLoading,
            variant: ButtonVariant.primary,
            onPressed: () async {
              if (_formKey.currentState!.validate()) {
                context.hideKeyboard();
                await ref
                    .read(emailSignInNotifierProvider.notifier)
                    .signInWithEmail(
                      _emailController.text.trim(),
                      _passwordController.text.trim(),
                    );
                ref.read(userNotifierProvider.notifier).getCurrentUser();
              }
            },
            child: const Text("Sign In"),
          ),
        ],
      ),
    );
  }
}
