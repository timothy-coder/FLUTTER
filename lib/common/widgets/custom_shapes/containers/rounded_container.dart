import 'package:flutter/material.dart';
import 'package:flutter_project_app/utils/constants/colors.dart';
import 'package:flutter_project_app/utils/constants/sizes.dart';
<<<<<<< Updated upstream
class TRoundedContainer extends StatelessWidget {
  const TRoundedContainer({
    super.key,
    this.width,
    this.height,
    this.radius=TSizes.cardRadiusLg,
    this.child,
    this.showBorder= false,
    this.borderColor=TColors.borderPrimary,
    this.backgroundColor=TColors.white,
    this.padding,
    this.margin
  });
=======

class TRoundedContainer extends StatelessWidget {
  const TRoundedContainer({
    Key? key,
    this.child,
    this.width,
    this.height,
    this.margin,
    this.padding,
    this.showBorder = false,
    this.radius = TSizes.cardRadiusLg,
    this.backgroundColor = TColors.white,
    this.borderColor = TColors.borderPrimary,
  }) : super(key: key);
>>>>>>> Stashed changes

  final double? width;
  final double? height;
  final double radius;
  final Widget? child;
  final bool showBorder;
<<<<<<< Updated upstream
  final Color borderColor;
  final Color backgroundColor;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
=======
  final Color backgroundColor;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final Color borderColor;
>>>>>>> Stashed changes

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(radius),
<<<<<<< Updated upstream
        border: showBorder ? Border.all(color: borderColor):null,
=======
        border: showBorder ? Border.all(color: borderColor) : null,
>>>>>>> Stashed changes
      ),
      child: child,
    );
  }
}
<<<<<<< Updated upstream
=======

>>>>>>> Stashed changes
