import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController{

  late Rx<TextEditingController> email;
  late Rx<TextEditingController> password;

  RxBool _secure = true.obs;
  RxBool get secure => _secure;

  void toggleSecurePassword(){
    _secure.value = !_secure.value;
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