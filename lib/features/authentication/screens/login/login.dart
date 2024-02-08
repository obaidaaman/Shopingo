import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/navigation_menu/nav_bar.dart';
import 'package:t_store/features/authentication/screens/signup/signup.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';
import '../../../../common/styles/spacing_styles.dart';
import '../../../../common/widgets/login_signup/form_divider.dart';
import '../../../../common/widgets/login_signup/social_buttons.dart';


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
              TFormDivider(isdark: isdark,text: TTexts.orSignInWith.capitalize!),

              const SizedBox(height: TSizes.sm,),

              /// Social Buttons
              const TSocialButtons()
            ],
          ),
        ),
      ),
    );
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
        const SizedBox(
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
          const SizedBox(
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
          const SizedBox(
            height: TSizes.spaceBtwSections/5,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
               Get.to(() => const NavigationMenu());
              },
              child: Text(TTexts.signIn),
            ),
          ),
          SizedBox(
            height: TSizes.spaceBtwItems,
          ),
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
              onPressed: () {
                
                Get.to(() => const SignUpScreen());
              },
              child: Text(TTexts.createAccount),
            ),
          )
        ],
      ),
    ));
  }
}

