import 'package:doctor/components/authentication/auth_input_validator.dart';
import 'package:doctor/components/reusable/default_snack_bar.dart';
import 'package:doctor/core/controllers/animation/login_animation_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController{

  late Rx<TextEditingController> email;
  late Rx<TextEditingController> password;
  final LoginAnimationController loginAnimationController = Get.find();
  RxBool _secure = true.obs;
  RxBool get secure => _secure;
  RxString emailError = ''.obs;
  RxString passwordError = ''.obs;

  void toggleSecurePassword(){
    _secure.value = !_secure.value;
  }


  void validateEmail() {
    emailError.value = AuthInputValidators.validateEmail(email.value.text);
  }

  void validatePassword() {
    passwordError.value = AuthInputValidators.validatePassword(password.value.text);
  }


  void login() {
    String emailError = AuthInputValidators.validateEmail(email.value.text);
    String passwordError = AuthInputValidators.validatePassword(password.value.text);

    if (emailError.isNotEmpty) {
      defaultSnackBar(Get.context!, message: emailError);
      return;
    }

    if (passwordError.isNotEmpty) {
      defaultSnackBar(Get.context!, message: passwordError);
      return;
    }

    // Proceed with login logic if validations pass
    defaultSnackBar(Get.context!, message: 'Login Successful!');
  }


  @override
  void onInit() {
    email = TextEditingController().obs;
    password = TextEditingController().obs;
    super.onInit();
  }

  @override
  void dispose() {
    email.value.dispose();
    password.value.dispose();
    super.dispose();
  }
}