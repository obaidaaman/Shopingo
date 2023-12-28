import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

import '../../../../common/styles/spacing_styles.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isdark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyles.paddingwithAppBarHeight,
          child: Column(
            children: [
              /// Logo , Title & Sub-Title
              TLoginHeader(isdark: isdark),

              /// Form
              TLoginForm(),

              /// Divider
              TFormDivider(isdark: isdark,text:  TTexts.orSignInWith.capitalize!),

              SizedBox(height: TSizes.sm,),

              /// Social Buttons
              TSocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}

class TSocialButtons extends StatelessWidget {
  const TSocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: TColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon: Image(
              width: TSizes.iconMd,
              height: TSizes.iconMd,
              image: AssetImage(TImages.google),
            ),
          ),
        ),
        SizedBox(width: TSizes.spaceBtwItems,),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: TColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon: Image(
              width: TSizes.iconMd,
              height: TSizes.iconMd,
              image: AssetImage(TImages.facebook),
            ),
          ),
        )
      ],
    );
  }
}

class TFormDivider extends StatelessWidget {
  const TFormDivider({
    super.key,
    required this.isdark, required this.text,
  });

  final bool isdark;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: Divider(
            color: isdark ? TColors.darkGrey : TColors.grey,
            indent: 60,
            endIndent: 5,
            thickness: 0.5,
          ),
        ),
        Text(
         text,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Flexible(
          child: Divider(
            color: isdark ? TColors.darkGrey : TColors.grey,
            indent: 5,
            endIndent: 60,
            thickness: 0.5,
          ),
        )
      ],
    );
  }
}

class TLoginForm extends StatelessWidget {
  const TLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
      padding: const EdgeInsets.symmetric(
        vertical: TSizes.spaceBtwSections,
      ),
      child: Column(
        children: [

          /// Email
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.direct_right),
              labelText: TTexts.email,
            ),
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),

          /// Password
          TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.password_check),
                  labelText: TTexts.password,
                  suffixIcon: Icon(Iconsax.eye_slash))),
          SizedBox(
            height: TSizes.spaceBtwInputFields / 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Checkbox(value: true, onChanged: (value) {}),
                  const Text(TTexts.rememberMe)
                ],
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(TTexts.forgetPassword))
            ],
          ),
          SizedBox(
            height: TSizes.spaceBtwSections/5,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(TTexts.signIn),
            ),
          ),
          SizedBox(
            height: TSizes.spaceBtwItems,
          ),
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
              onPressed: () {},
              child: Text(TTexts.createAccount),
            ),
          )
        ],
      ),
    ));
  }
}

class TLoginHeader extends StatelessWidget {
  const TLoginHeader({
    super.key,
    required this.isdark,
  });

  final bool isdark;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          image: AssetImage(
              isdark ? TImages.lightAppLogo : TImages.darkAppLogo),
          height: 150,
        ),
        Text(
          TTexts.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        SizedBox(
          height: TSizes.sm,
        ),
        Text(
          TTexts.loginSubTitle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),

      ],
    );
  }
}
