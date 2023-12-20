import 'package:flutter/material.dart';
import 'package:flutter_project_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:flutter_project_app/utils/constants/colors.dart';
import 'package:flutter_project_app/utils/constants/sizes.dart';
import 'package:flutter_project_app/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';
class TSingleAddress extends StatelessWidget {
  const TSingleAddress({
    super.key,
    required this.selectedAddress
  });

  final bool selectedAddress;
  @override
  Widget build(BuildContext context) {
    final dark=THelperFunctions.isDarkMode(context);
    return TRoundedContainer(
      width: double.infinity,
      showBorder: true,
      backgroundColor: selectedAddress ? TColors.primary.withOpacity(0.5) : Colors.transparent,
      borderColor: selectedAddress
          ? Colors.transparent
          : dark
            ? TColors.darkerGrey
            : TColors.grey,
      margin: const EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            child: Icon(
              selectedAddress ? Iconsax.tick_circle5 : null,
              color: selectedAddress
                  ? dark
                    ? TColors.light
                    : TColors.dark
                  :null,
            ),
          ),
          Column(
            children: [
              Text(
                  '8234 Timy',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: TSizes.sm,
              )
            ],
          )
        ],
      ),
    );
  }
}
