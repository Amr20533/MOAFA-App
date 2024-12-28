import 'package:doctor/components/authentication/auth_input_validator.dart';
import 'package:doctor/components/reusable/default_snack_bar.dart';
import 'package:doctor/core/controllers/animation/signup_animation_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController{

  late Rx<TextEditingController> nId;
  late Rx<TextEditingController> phone;
  late Rx<TextEditingController> email;
  late Rx<TextEditingController> password;
  final SignupAnimationController signupAnimationController = Get.find();
  RxString nIdError = ''.obs;
  RxString phoneError = ''.obs;
  RxString emailError = ''.obs;
  RxString passwordError = ''.obs;

  RxBool _secure = true.obs;
  RxBool get secure => _secure;

  void toggleSecurePassword(){
    _secure.value = !_secure.value;
  }

  void validateNId() {
    nIdError.value = AuthInputValidators.validateNationalId(nId.value.text);
  }

  void validatePhone() {
    phoneError.value = AuthInputValidators.validatePhone(phone.value.text);
  }

  void validateEmail() {
    emailError.value = AuthInputValidators.validateEmail(email.value.text);
  }

  void validatePassword() {
    passwordError.value = AuthInputValidators.validatePassword(password.value.text);
  }

  void signUp() {
    String emailError = AuthInputValidators.validateEmail(email.value.text);
    String phoneError = AuthInputValidators.validatePhone(phone.value.text);
    String nationalIdError = AuthInputValidators.validateNationalId(nId.value.text);
    String passwordError = AuthInputValidators.validatePassword(password.value.text);

    if (nationalIdError.isNotEmpty) {
      defaultSnackBar(Get.context!, message: nationalIdError);
      return;
    }

    if (emailError.isNotEmpty) {
      defaultSnackBar(Get.context!, message: emailError);
      return;
    }

    if (phoneError.isNotEmpty) {
      defaultSnackBar(Get.context!, message: phoneError);
      return;
    }

    if (passwordError.isNotEmpty) {
      defaultSnackBar(Get.context!, message: passwordError);
      return;
    }

    defaultSnackBar(Get.context!, message: 'Signup Successful');
  }


  @override
  void onInit() {
    nId = TextEditingController().obs;
    phone = TextEditingController().obs;
    email = TextEditingController().obs;
    password = TextEditingController().obs;
    super.onInit();
  }

  @override
  void dispose() {
    nId.value.dispose();
    phone.value.dispose();
    email.value.dispose();
    password.value.dispose();
    super.dispose();
  }
}