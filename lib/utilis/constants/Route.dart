import 'package:flutter/material.dart';
import 'package:flutter_pharmacy_web/utilis/constants/route_name.dart';

import 'package:get/get.dart';

import '../../controllers/authcontroller.dart';
import '../../controllers/checkboxcontroller.dart';
import '../../view/Auth/Login_view.dart';
import '../../view/Auth/sign_up_ordinary_member.dart';

class GetPageList {
  static List<GetPage> pages = [
    GetPage(
        name: RouteName.loginScreen,
        page: () => login(),
        binding: BindingsBuilder(() {
          Get.lazyPut(() => authController());
          Get.lazyPut(() => checkboxController());
        })),
    GetPage(
        name: RouteName.signUp,
        page: () => SignUpOrdinaryMember(),
        binding: BindingsBuilder(() {
          Get.lazyPut(() => authController());
        }))
  ];
}
