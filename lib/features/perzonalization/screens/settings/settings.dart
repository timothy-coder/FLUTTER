import 'package:flutter/material.dart';
import 'package:flutter_project_app/common/widgets/appbar/appbar.dart';
import 'package:flutter_project_app/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:flutter_project_app/common/widgets/icons/t_circular_icon.dart';
import 'package:flutter_project_app/common/widgets/images/t_circular_image.dart';
import 'package:flutter_project_app/common/widgets/texts/section_heading.dart';
import 'package:flutter_project_app/utils/constants/colors.dart';
import 'package:flutter_project_app/utils/constants/image_strings.dart';
import 'package:flutter_project_app/utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/list_tiles/user_profile_tile.dart';
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///Header
            TPrimaryHeaderContainer(
                child: Column(
                  children: [
                    ///Appbar
                    TAppBar(title: Text('Cuenta',style: Theme.of(context).textTheme.headlineMedium!.apply(color: TColors.white),),),

                    ///User profile card
                    const TUserProfileTile(),
                    const SizedBox(height: TSizes.spaceBtwSections,),
                  ],
                )
            ),
            ///body
            const Padding(
                padding: EdgeInsets.all(TSizes.defaultSpace),
                child: Column(
                  children: [
                    TSectionHeading(title: 'Ajustes de Cuenta'),
                    SizedBox(height: TSizes.spaceBtwItems)
                  ],
                ),
            )
          ],
        ),
      ),
    );
  }
}
