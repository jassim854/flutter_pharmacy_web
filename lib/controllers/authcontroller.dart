import 'package:flutter/material.dart';
import 'package:get/get.dart';

class authController extends GetxController {
  TextEditingController emailContoller = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController cityOfBirthController = TextEditingController();
  TextEditingController dateOfBirthController = TextEditingController();
  RxBool dropDown = false.obs;
}
