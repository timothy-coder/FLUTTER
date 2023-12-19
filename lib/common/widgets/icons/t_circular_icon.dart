import 'package:flutter/material.dart';
import 'package:flutter_project_app/utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';
class TCircularIcon extends StatelessWidget {
  const TCircularIcon({
    super.key,
    this.width,
    this.height,
    this.size=TSizes.lg,
    required this.icon,
    this.color,
    this.backgroundColor,
    this.onPressed,
  });

  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor != null
            ? TColors.black.withOpacity(0.9)
            : TColors.white.withOpacity(0.9),
        borderRadius: BorderRadius.circular(100),

      ),
      child: IconButton(onPressed: onPressed,icon: Icon(icon,color: color,size: size,),),
    );
  }
}
