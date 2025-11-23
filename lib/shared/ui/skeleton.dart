import 'package:flutter/widgets.dart';
import 'package:future/shared/constants/colors.dart';
import 'package:shimmer/shimmer.dart';

class Skeleton extends StatelessWidget {
  final double? width;
  final double? height;
  final BoxShape shape;
  final BorderRadiusGeometry? borderRadius;

  const Skeleton({
    super.key,
    this.width,
    this.height,
    this.shape = BoxShape.rectangle,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer(
      direction: ShimmerDirection.ltr,
      period: const Duration(milliseconds: 2000),
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [AppColors.gray100, AppColors.gray50, AppColors.gray50],
        stops: const [0.1, 0.3, 0.5],
      ),
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: AppColors.gray50,
          shape: shape,
          borderRadius: shape == BoxShape.circle ? null : borderRadius,
        ),
      ),
    );
  }
}
