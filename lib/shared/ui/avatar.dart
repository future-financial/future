import 'package:flutter/material.dart';
import 'package:future/shared/constants/colors.dart';
import 'package:heroicons/heroicons.dart';
import 'skeleton.dart';

enum AvatarShape { circle, rounded }

class Avatar extends StatelessWidget {
  final String? imageUrl;
  final double size;
  final AvatarShape shape;
  final double borderRadius;
  const Avatar({
    super.key,
    required this.imageUrl,
    this.size = 90,
    this.shape = AvatarShape.rounded,
    this.borderRadius = 16,
  });

  @override
  Widget build(BuildContext context) {
    BorderRadius clipRadius = shape == AvatarShape.circle
        ? BorderRadius.circular(size / 2)
        : BorderRadius.circular(borderRadius);

    if (imageUrl == null || imageUrl!.isEmpty) {
      return _AvatarPlaceholder(
        size: size,
        shape: shape,
        borderRadius: borderRadius,
      );
    }

    return ClipRRect(
      borderRadius: clipRadius,
      child: Image.network(
        imageUrl!,
        width: size,
        height: size,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;

          return shape == AvatarShape.circle
              ? Skeleton(shape: BoxShape.circle)
              : Skeleton(width: size, height: size, borderRadius: clipRadius);
        },
        errorBuilder: (context, error, stackTrace) {
          return _AvatarPlaceholder(
            size: size,
            shape: shape,
            borderRadius: borderRadius,
          );
        },
      ),
    );
  }
}

class _AvatarPlaceholder extends StatelessWidget {
  const _AvatarPlaceholder({
    required this.size,
    required this.shape,
    required this.borderRadius,
  });

  final double size;
  final AvatarShape shape;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    BorderRadius clipRadius = shape == AvatarShape.circle
        ? BorderRadius.circular(size / 2)
        : BorderRadius.circular(borderRadius);

    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: AppColors.gray100,
        borderRadius: clipRadius,
      ),
      alignment: Alignment.center,
      child: HeroIcon(
        HeroIcons.user,
        size: size * 0.4,
        color: Theme.of(context).colorScheme.onSurface,
      ),
    );
  }
}
