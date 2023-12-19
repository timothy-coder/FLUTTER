import 'package:flutter/material.dart';
import 'package:flutter_project_app/common/widgets/appbar/appbar.dart';
import 'package:flutter_project_app/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:flutter_project_app/common/widgets/icons/t_circular_icon.dart';
import 'package:flutter_project_app/common/widgets/images/t_circular_image.dart';
import 'package:flutter_project_app/common/widgets/list_tiles/settings_menu_tile.dart';
import 'package:flutter_project_app/common/widgets/texts/section_heading.dart';
import 'package:flutter_project_app/utils/constants/colors.dart';
import 'package:flutter_project_app/utils/constants/image_strings.dart';
import 'package:flutter_project_app/utils/constants/sizes.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/list_tiles/user_profile_tile.dart';
import '../profile/profile.dart';
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
                    TUserProfileTile(onPressed:()=>Get.to(()=>const ProfileScreen())),
                    const SizedBox(height: TSizes.spaceBtwSections,),
                  ],
                )
            ),
            ///body
            Padding(
                padding: const EdgeInsets.all(TSizes.defaultSpace),
                child: Column(
                  children: [
                    const TSectionHeading(title: 'Ajustes de Cuenta',showActionButton: false,),
                    const SizedBox(height: TSizes.spaceBtwItems),

                    const TSettingsMenuTile(icon: Iconsax.safe_home, title: 'Mi cuenta', subtitle: 'Set'),
                    const TSettingsMenuTile(icon: Iconsax.shopping_cart, title: 'Mi carrito', subtitle: 'Set'),
                    const TSettingsMenuTile(icon: Iconsax.bag_tick, title: 'Mi orden', subtitle: 'Set'),
                    const TSettingsMenuTile(icon: Iconsax.bank, title: 'Cuenta de Banco', subtitle: 'Set'),
                    const TSettingsMenuTile(icon: Iconsax.discount_shape, title: 'Cupones', subtitle: 'Set'),
                    const TSettingsMenuTile(icon: Iconsax.notification, title: 'Notificaciones', subtitle: 'Set'),
                    const TSettingsMenuTile(icon: Iconsax.security_card, title: 'Privacidad de Cuenta', subtitle: 'Set'),

                    const SizedBox(height: TSizes.spaceBtwSections),
                    const TSectionHeading(title: 'App Configuracion',showActionButton: false),
                    const SizedBox(height: TSizes.spaceBtwItems),
                    const TSettingsMenuTile(icon: Iconsax.document_upload, title: 'Cargar Datos', subtitle: 'Subir datos'),
                    TSettingsMenuTile(
                      icon: Iconsax.location,
                      title: 'GeoLocation',
                      subtitle: 'subtitle',
                      trailing: Switch(value: true, onChanged: (value) {}),
                    ),
                    TSettingsMenuTile(
                        icon: Iconsax.security_user,
                        title: 'Safe Mode',
                        subtitle: 'subtitle',
                        trailing: Switch(value: false, onChanged: (value) {})
                    ),
                    TSettingsMenuTile(
                        icon: Iconsax.image,
                        title: 'HD Image',
                        subtitle: 'subtitle',
                        trailing: Switch(value: false, onChanged: (value) {})
                    ),
                  ],
                ),
            )
          ],
        ),
      ),
    );
  }
}
