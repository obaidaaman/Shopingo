import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/login_signup/social_buttons.dart';
import 'package:t_store/features/authentication/screens/signup/emailverify.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

import '../../../../common/widgets/login_signup/form_divider.dart';
import '../../../../utils/constants/colors.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                TTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),

              const SizedBox(
                height: TSizes.spaceBtwInputFields,
              ),

              /// Form
              TFormSignUp(dark: dark),
              const SizedBox(
                height: TSizes.spaceBtwInputFields,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 24,
                    height: 24,
                    child: Checkbox(value: true, onChanged: (value) {}),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text.rich(TextSpan(children: [
                    TextSpan(
                        text: '${TTexts.iAgreeTo}',
                        style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(
                        text: ' ${TTexts.privacyPolicy}',
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .apply(
                            decoration: TextDecoration.underline,
                            decorationColor: dark
                                ? TColors.white
                                : TColors.primary)),
                    TextSpan(
                        text: ' ${TTexts.and}',
                        style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(
                        text: ' ${TTexts.termsOfUse}',
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .apply(
                            decoration: TextDecoration.underline,
                            decorationColor:
                            dark ? TColors.white : TColors.primary))
                  ]))
                ],
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections / 3,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(() => VerifyEmail());
                  },
                  child: Text(TTexts.signUp),
                ),
              ),
              SizedBox(
                height: TSizes.spaceBtwInputFields,
              ),
              TFormDivider(
                  isdark: dark, text: TTexts.orSignUpWith.capitalize!),
              SizedBox(
                height: TSizes.spaceBtwInputFields,
              ),
              TSocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}

class TFormSignUp extends StatelessWidget {
  const TFormSignUp({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TextFormField(
                expands: false,
                decoration: const InputDecoration(
                    hintText: TTexts.firstName,
                    prefixIcon: Icon(Iconsax.user)),
              ),
            ),
            const SizedBox(
              width: TSizes.spaceBtwSections,
            ),
            Expanded(
              child: TextFormField(
                expands: false,
                decoration: const InputDecoration(
                    hintText: TTexts.lastName,
                    prefixIcon: Icon(Iconsax.user)),
              ),
            )
          ],
        ),
        const SizedBox(
          height: TSizes.spaceBtwInputFields,
        ),
        TextFormField(
          expands: false,
          decoration: const InputDecoration(
              labelText: TTexts.username,
              prefixIcon: Icon(Iconsax.user_edit)),
        ),
        const SizedBox(
          height: TSizes.spaceBtwInputFields,
        ),
        TextFormField(
          expands: false,
          decoration: const InputDecoration(
              hintText: TTexts.email,
              prefixIcon: Icon(Iconsax.direct)),
        ),
        const SizedBox(
          height: TSizes.spaceBtwInputFields,
        ),
        TextFormField(
          expands: false,
          decoration: const InputDecoration(
              hintText: TTexts.phoneNo,
              prefixIcon: Icon(Iconsax.call)),
        ),
        const SizedBox(
          height: TSizes.spaceBtwInputFields,
        ),
        TextFormField(
          expands: false,
          obscureText: true,
          decoration: const InputDecoration(
              hintText: TTexts.password,
              prefixIcon: Icon(Iconsax.eye_slash)),
        ),

      ],
    )
    );
  }
}
