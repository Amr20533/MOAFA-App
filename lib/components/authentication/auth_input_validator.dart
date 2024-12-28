import 'package:get/get.dart';

class AuthInputValidators{
  static String validateEmail(String value) {
    if (value.isEmpty) {
      return  "Please enter your email address.";
    } else if (!GetUtils.isEmail(value)) {
      return "Please enter a valid email address.";
    } else {
      return '';
    }
  }

  static String validatePhone(String value) {
    if (value.isEmpty) {
      return "Please enter your phone number.";
    } else if (!GetUtils.isPhoneNumber(value)) {
      return "Please enter a valid phone number.";
    } else {
      return '';
    }
  }

  static String validateNationalId(String value) {
    if (value.isEmpty) {
      return "Please provide your National ID.";
    } else if (value.length != 14) {
      return "National ID must be 14 digits.";
    } else {
      return '';
    }
  }

  static String validatePassword(String value) {
    if (value.isEmpty) {
      return "Please create a password.";
    } else if (value.length < 8 || !RegExp(r'(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~])').hasMatch(value)) {
      return "Password must include uppercase, lowercase, number, and special character.";
    } else {
      return '';
    }
  }
}