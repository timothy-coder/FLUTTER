import 'package:flutter/cupertino.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';

class TRoundedImage extends StatelessWidget {
  const TRoundedImage({
    super.key,
    this.border,
    this.padding,
    this.onPressed,
    this.width,
    this.height,
    this.applyImageRadious = true,
    required this.imageUrl,
    this.fit = BoxFit.contain,
    this.backgroundColor = TColors.light,
    this.isNetworkImage = false,
    this.borderRadius = TSizes.md,
  });

  final double? width, height;
  final String imageUrl;
  final bool applyImageRadious;
  final BoxBorder? border;
  final Color backgroundColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onPressed;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onPressed,
        child: Container(
          width: width,
          height: height,
          padding: padding,
          decoration: BoxDecoration(border: border, color: backgroundColor, BorderRadius.circular(TSizes.md)),
          child: ClipRect(
            borderRadius: applyImageRadious ? BorderRadius.circular(TSizes.md) : BorderRadius.zero,
            child: Image(fit: fit, image: isNetworkImage ? NetworkImage(imageUrl) : AssetImage(imageUrl) as ImageProvider),
          ),
        )
    );
  }
}