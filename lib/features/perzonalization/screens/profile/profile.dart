import 'package:flutter/material.dart';
import 'package:flutter_project_app/common/widgets/appbar/appbar.dart';
import 'package:flutter_project_app/common/widgets/images/t_circular_image.dart';
import 'package:flutter_project_app/common/widgets/texts/section_heading.dart';
import 'package:flutter_project_app/features/perzonalization/screens/profile/widgets/profile_menu.dart';
import 'package:flutter_project_app/utils/constants/image_strings.dart';
import 'package:flutter_project_app/utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        showBackArrow: true,
        title: Text('Perfil'),
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const TCircularImage(image: TImages.primero,width: 80,height: 80,),
                    TextButton(onPressed: (){}, child: const Text('Cambiar foto de Perfil')),
                  ],
                ),
              ),
              const SizedBox(height: TSizes.spaceBtwItems/2),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems),
              const TSectionHeading(title: 'Informacion de Perfil',showActionButton: false,),
              const SizedBox(height: TSizes.spaceBtwItems),
              TProfileMenu(onPressed: () {  }, title: 'Nombre', value: 'timothy@',),
              TProfileMenu(onPressed: () {  }, title: 'Nombre de usuario', value: 'timothy@',),

              const SizedBox(height: TSizes.spaceBtwItems),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems),

              TProfileMenu(onPressed: () {  }, title: 'Id usuario',icon: Iconsax.copy, value: '1234',),
              TProfileMenu(onPressed: () {  }, title: 'E-mail', value: 'timothy@',),
              TProfileMenu(onPressed: () {  }, title: 'Phone Number', value: '987654321',),
              TProfileMenu(onPressed: () {  }, title: 'Genero', value: 'masculino',),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems),

              Center(
                child: TextButton(
                  onPressed: (){},
                  child: const Text('Cerrar Cuenta',style: TextStyle(color: Colors.red),),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
