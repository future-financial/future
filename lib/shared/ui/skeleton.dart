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
      period: const Duration(milliseconds: 1500),
      gradient: LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [
          AppColors.gray100,
          AppColors.gray50,
          AppColors.offWhite,
          AppColors.gray50,
          AppColors.gray100,
        ],
        stops: const [0.0, 0.35, 0.5, 0.65, 1.0],
      ),
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: AppColors.offWhite,
          shape: shape,
          borderRadius: shape == BoxShape.circle ? null : borderRadius,
        ),
      ),
    );
  }
}
