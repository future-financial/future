import 'package:flutter/material.dart';

enum ButtonVariant { primary, outlined, ghost, danger }

class Button extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget child;
  final bool isLoading;
  final ButtonVariant variant;

  const Button({
    super.key,
    required this.onPressed,
    required this.child,
    this.variant = ButtonVariant.primary,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    // Pilih style
    final ButtonStyle style;
    switch (variant) {
      case ButtonVariant.primary:
        style = ElevatedButton.styleFrom(
          backgroundColor: theme.colorScheme.primary,
          foregroundColor: theme.colorScheme.onPrimary,
        );
        break;

      case ButtonVariant.outlined:
        style = OutlinedButton.styleFrom(
          side: BorderSide(color: theme.colorScheme.primary),
          foregroundColor: theme.colorScheme.primary,
        );
        break;

      case ButtonVariant.ghost:
        style = TextButton.styleFrom(
          foregroundColor: theme.colorScheme.primary,
          backgroundColor: Colors.transparent,
        );
        break;

      case ButtonVariant.danger:
        style = ElevatedButton.styleFrom(
          backgroundColor: theme.colorScheme.error,
          foregroundColor: theme.colorScheme.onError,
        );
        break;
    }

    // Warna spinner sesuai varian
    Color spinnerColor = switch (variant) {
      ButtonVariant.primary => theme.colorScheme.onPrimary,
      ButtonVariant.outlined => theme.colorScheme.primary,
      ButtonVariant.ghost => theme.colorScheme.primary,
      ButtonVariant.danger => theme.colorScheme.onError,
    };

    final Widget content = isLoading
        ? SizedBox(
            width: 18,
            height: 18,
            child: CircularProgressIndicator(
              strokeWidth: 2,
              color: spinnerColor,
            ),
          )
        : child;

    // Factory tombol sesuai varian
    return switch (variant) {
      ButtonVariant.primary || ButtonVariant.danger => ElevatedButton(
        onPressed: isLoading ? null : onPressed,
        style: style,
        child: content,
      ),

      ButtonVariant.outlined => OutlinedButton(
        onPressed: isLoading ? null : onPressed,
        style: style,
        child: content,
      ),

      ButtonVariant.ghost => TextButton(
        onPressed: isLoading ? null : onPressed,
        style: style,
        child: content,
      ),
    };
  }
}
