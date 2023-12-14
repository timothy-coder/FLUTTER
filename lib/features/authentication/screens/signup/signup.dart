import 'package:flutter/material.dart';
import 'package:flutter_project_app/common/widgets/login_signup/form_divider.dart';
import 'package:flutter_project_app/common/widgets/login_signup/social_buttons.dart';
import 'package:flutter_project_app/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:flutter_project_app/utils/constants/colors.dart';
import 'package:flutter_project_app/utils/constants/sizes.dart';
import 'package:flutter_project_app/utils/constants/text_strings.dart';
import 'package:flutter_project_app/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
class SignupScreen extends StatelessWidget{
  const SignupScreen({super.key});
  @override
  Widget build(BuildContext context){
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ///Title
              Text(TTexts.signUpTitle,style: Theme.of(context).textTheme.headlineMedium,),
              const SizedBox(height: TSizes.spaceBtwSections,),
              ///Form
              const TSignUpForm(),
              const SizedBox(height: TSizes.spaceBtwSections,),
              ///Divider
              TFormDivider(dividerText: TTexts.orSignUpWith.capitalize!),
              ///Social Buttons
              const TSocialButtons(),

            ],
          ),
        ),
      ),
    );
  }
}

