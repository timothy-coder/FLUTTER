import 'package:flutter/material.dart';
import 'package:flutter_project_app/features/authentication/controllers/signup/signup_controller.dart';
import 'package:flutter_project_app/features/authentication/screens/signup/verify_email.dart';
import 'package:flutter_project_app/features/authentication/screens/signup/widgets/terms_conditions_checkbox.dart';
import 'package:flutter_project_app/utils/validators/validation.dart';
import 'package:iconsax/iconsax.dart';
import 'package:get/get.dart';
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
    final controller=Get.put(SignUpController());
    final dark = THelperFunctions.isDarkMode(context);
    return Form(
      key: controller.signupFormKey,
      child: Column(
      children: [
        ///First & Last Name
        Row(
          children: [
            Expanded(
              child: TextFormField(
                controller: controller.firstname,
                validator: (value)=>TValidator.validateEmptyText('First Name', value),
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
                controller: controller.lastname,
                validator: (value)=>TValidator.validateEmptyText('Last Name', value),
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
          controller: controller.username,
          validator: (value)=>TValidator.validateEmptyText('UserName', value),
          expands: false,
          decoration: const InputDecoration(
            labelText: TTexts.username,
            prefixIcon: Icon(Iconsax.user_edit),
          ),
        ),
        ///Email
        TextFormField(
          controller: controller.email,
          validator: (value)=>TValidator.validateEmail(value),
          expands: false,
          decoration: const InputDecoration(
            labelText: TTexts.email,
            prefixIcon: Icon(Iconsax.direct),
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwInputFields,),
        ///Phone Number
        TextFormField(
          controller: controller.phonenumber,
          validator: (value)=>TValidator.validateEmptyText('Phone Number', value),
          expands: false,
          decoration: const InputDecoration(
            labelText: TTexts.phoneNo,
            prefixIcon: Icon(Iconsax.call),
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwInputFields,),
        ///Password
        TextFormField(
          controller: controller.password,
          validator: (value)=>TValidator.validatePassword(value),
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
