import 'package:flutter/material.dart';
import 'package:flutter_project_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:flutter_project_app/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:flutter_project_app/utils/constants/enums.dart';
import 'package:flutter_project_app/utils/constants/image_strings.dart';
import 'package:flutter_project_app/utils/constants/sizes.dart';
import 'package:flutter_project_app/utils/helpers/helper_functions.dart';

import '../../../utils/constants/colors.dart';
import '../images/t_circular_image.dart';
class TBrandCard extends StatelessWidget {
  const TBrandCard({
    super.key,
    required this.showBorder,
    this.onTap
  });

  final bool showBorder;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    final isDark=THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: TRoundedContainer(
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        padding: const EdgeInsets.all(TSizes.sm),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
                child: TCircularImage(
                  isNetworkImage: false,
                  image: TImages.segundo,
                  backgroundColor: Colors.transparent,
                  overlayColor: isDark ? TColors.white : TColors.black,
                ),
            ),
            const SizedBox(width: TSizes.spaceBtwItems/2),
            Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const TBrandTitleTextWithVerifiedIcon(title: 'Genfar', brandTextSize: TextSizes.large),
                    Text(
                      '256 products',
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.labelMedium,),
                  ],
                ))
          ],
        ),
      ),
    );

  }
}
