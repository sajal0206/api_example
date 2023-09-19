import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Routes/routes.dart';
import '../Utils/toast_messages.dart';

class LoginController extends GetxController {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  RxBool isPasswordSame = true.obs;

  // function to login user using email and password
  void loginUser(BuildContext context) {
    // Check if the email and password are not empty
    if (emailController.text.isEmpty || passwordController.text.isEmpty) {
      showErrorToast("Oops!", "Please provide email and password", context);
      return;
    } else {
      Get.offNamed(Routes.home);
    }
  }

  // function to create user using email and password
  void signUpUser(BuildContext context) {
    if (emailController.text != "" && passwordController.text != "") {
      if (passwordController.text == confirmPasswordController.text) {
        isPasswordSame.value = true;
        Get.offNamed(Routes.home);
      } else {
        isPasswordSame.value = false;
        showErrorToast("Oops!", "Passwords does not match", context);
      }
    } else {
      showErrorToast("Oops!", "Please provide email and passwords", context);
    }
    update();
  }

  // function to logout user
  Future<void> logout() async {
    Get.offNamed(Routes.login);
  }
}
