import 'package:flutter/material.dart';
import 'package:flutter_project_app/common/widgets/appbar/appbar.dart';
import 'package:flutter_project_app/utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';
class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        showBackArrow: true,
        title: Text('Agregar nueva cuenta'),
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Form(
            child: Column(
              children: [
                TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.user),labelText: 'Name')),
                const SizedBox(height: TSizes.spaceBtwInputFields),
                TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.mobile),labelText: 'Numero de Telefono')),
                const SizedBox(height: TSizes.spaceBtwInputFields),
                Row(
                  children: [
                    Expanded(
                        child: TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.building_3) ,labelText: 'Calle'))
                    ),
                    const SizedBox(height: TSizes.spaceBtwInputFields),
                    Expanded(
                        child: TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.building) ,labelText: 'Ciudad'))
                    ),
                  ],
                ),
                const SizedBox(height: TSizes.spaceBtwInputFields),
                TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.global),labelText: 'Pais')),
                const SizedBox(height: TSizes.defaultSpace),
                SizedBox(width: double.infinity,child: ElevatedButton(onPressed: (){},child: Text('Guardar'),),)

              ],
            ),
          ),
        ),
      ),
    );
  }
}
