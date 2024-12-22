import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController{

  late Rx<TextEditingController> nId;
  late Rx<TextEditingController> phone;
  late Rx<TextEditingController> email;
  late Rx<TextEditingController> password;

  RxBool _secure = true.obs;
  RxBool get secure => _secure;

  void toggleSecurePassword(){
    _secure.value = !_secure.value;
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