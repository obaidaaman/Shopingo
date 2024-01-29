import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../screens/login/login.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  final pageController = PageController();

  Rx<int> currentPageIndex = 0.obs;

  /// Update Current Index when Page Scroll
  void updatePageIndicator(index) => currentPageIndex.value = index;

  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  void nextPage() {
    if (currentPageIndex.value < 2) {
      int page = currentPageIndex.value + 1;
      pageController.animateToPage(page,
          duration: Duration(milliseconds: 300), curve: Curves.ease);
    } else {
      Get.offAll(const LoginPage(),
          curve: Curves.ease, duration: Duration(milliseconds: 300));
    }
  }

  void skipPage() {
    Get.offAll(const LoginPage(),
        curve: Curves.ease, duration: Duration(milliseconds: 300));
  }
}
