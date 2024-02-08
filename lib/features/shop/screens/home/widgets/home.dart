import 'package:flutter/material.dart';
import 'package:t_store/common/appbar/appbar.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

import '../../../../../common/products_cart/cart_menu_icon.dart';
import '../../../../../common/widgets/custom_shapes/containers/tprimaryHeader.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {

    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TprimaryHeaderContainer(
              child: Column(
                children: [

                  // AppBar
                  TAppBarWidget()

                  // SearchBar
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TAppBarWidget extends StatelessWidget {
  const TAppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            TTexts.homeAppbarTitle,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: TColors.grey),
          ),
          Text(
            TTexts.homeAppbarSubTitle,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: TColors.white),
          ),
        ],
      ),
      actions: [
        TCartCounter(onPressed: (){},iconColor: Colors.white,)
      ],
    );
  }
}


