import 'package:flutter/material.dart';
import 'package:flutter_project_app/features/authentication/screens/signup/verify_email.dart';
import 'package:flutter_project_app/features/authentication/screens/signup/widgets/terms_conditions_checkbox.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/helpers/helper_functions.dart';
class TSignUpForm extends StatelessWidget {
  const TSignUpForm({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Form(child: Column(
      children: [
        ///First & Last Name
        Row(
          children: [
            Expanded(
              child: TextFormField(
                expands: false,
                decoration: const InputDecoration(
                  labelText: TTexts.firstName,
                  prefixIcon: Icon(Iconsax.user),
                ),
              ),
            ),
            const SizedBox(width: TSizes.spaceBtwInputFields,),
            Expanded(
              child: TextFormField(
                expands: false,
                decoration: const InputDecoration(
                  labelText: TTexts.lastName,
                  prefixIcon: Icon(Iconsax.user),
                ),
              ),
            ),


          ],
        ),
        const SizedBox(height: TSizes.spaceBtwInputFields,),
        ///Username
        TextFormField(
          expands: false,
          decoration: const InputDecoration(
            labelText: TTexts.username,
            prefixIcon: Icon(Iconsax.user_edit),
          ),
        ),
        ///Email
        TextFormField(
          expands: false,
          decoration: const InputDecoration(
            labelText: TTexts.email,
            prefixIcon: Icon(Iconsax.direct),
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwInputFields,),
        ///Phone Number
        TextFormField(
          expands: false,
          decoration: const InputDecoration(
            labelText: TTexts.phoneNo,
            prefixIcon: Icon(Iconsax.call),
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwInputFields,),
        ///Password
        TextFormField(
          obscureText: true,
          decoration: const InputDecoration(
            labelText: TTexts.password,
            prefixIcon: Icon(Iconsax.password_check),
            suffixIcon: Icon(Iconsax.eye_slash),
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwSections,),
        ///Terms&ConditionsCheckbox
        const TTermsAndConditionsCheckbox(),
        const SizedBox(height: TSizes.spaceBtwSections,),
        ///SignUpButton
        SizedBox(width: double.infinity,child: ElevatedButton(onPressed: ()=> Get.to(() => const VerifyEmailScreen()), child: Text(TTexts.createAccount),),)
      ],
    ),
    );
  }
}
