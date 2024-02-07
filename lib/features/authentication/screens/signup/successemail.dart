import 'package:flutter/material.dart';
import 'package:t_store/common/styles/spacing_styles.dart';


import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../../../utils/helpers/helper_functions.dart';

class SuccessEmailScreen extends StatelessWidget {
   SuccessEmailScreen({super.key, required this.image, required this.title, required this.subtitle, required this.onPressed});
final String image,title,subtitle;
final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Padding(padding: TSpacingStyles.paddingwithAppBarHeight,
          child: Column(
            children: [
              Image(
                image: AssetImage(image),
                width: THelperFunctions.screenWidth() * 0.6,
              ),
              SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              Text(
                title,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),

              SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              Text(
                subtitle,
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: onPressed ,child: Text(TTexts.tContinue),),
              ),
            ],
          ),),
      ),
    );
  }
}
