import 'package:doctor/components/reusable/textFieldsLoginSignup.dart';
import 'package:doctor/core/controllers/authentication/sign_up_controller.dart';
import 'package:doctor/utils/styles/used_styles.dart';
import 'package:doctor/view/User/authentication/login.dart';
import 'package:doctor/view/User/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SingUpScreen extends GetView<SignUpController> {
  const SingUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children: [
                Row(
                  children: [
                    Spacer(),
                    ClipRect(
                      child: Align(
                        alignment: AlignmentDirectional.bottomEnd,
                        heightFactor: 0.4,
                        child: Image.asset(
                          "assets/Asset 7@10x.png",
                          scale: 3,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Spacer(),
                    ClipRect(
                      child: Align(
                        alignment: AlignmentDirectional.bottomStart,
                        heightFactor: 0.58,
                        widthFactor: 0.7,
                        child: Image.asset(
                          "assets/Asset 6@10x.png",
                          scale: 2.9,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Spacer(
                      flex: 6,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 35),
                      child: Image.asset(
                        "assets/Asset 5@10x.png",
                        scale: 3.8,
                      ),
                    ),
                    Spacer(
                      flex: 1,
                    )
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome",
                    style: MyStyles.headersize(MyStyles.blueColor),
                  ),
                  Padding(padding: EdgeInsets.fromLTRB(0, 0, 800, 0)),
                  Text("Please login or Sign up to continue",
                      style: MyStyles.notessize(MyStyles.grey)),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  Obx(() => DefaultTextFormField(
                    controller: controller.nId.value,
                    label: 'National ID',
                    keyboardType: TextInputType.number,
                  )),

                  Obx(() => DefaultTextFormField(
                    controller: controller.email.value,
                    label: 'Email or Phone',
                    keyboardType: TextInputType.emailAddress,
                  )),

                  Obx(() => DefaultTextFormField(
                    controller: controller.phone.value,
                    label: 'Phone Number',
                    keyboardType: TextInputType.phone,
                  )),
                  Obx(() {
                    bool secure = controller.secure.value == true;
                    return DefaultTextFormField(
                      controller: controller.password.value,
                      label: 'Password',
                      secure: controller.secure.value,
                      suffixIcon: GestureDetector(
                        onTap: (){
                          controller.toggleSecurePassword();
                        },
                        child: Icon(secure ? Icons.visibility : Icons.visibility_off, color: MyStyles.grey,),
                      ),
                      keyboardType:TextInputType.visiblePassword,
                    );
                  }),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {
                        Get.to(HomeScreen());
                      },
                      child: Text(
                        "Signup",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(
                            MediaQuery.of(context).size.width * 0.84,
                            MediaQuery.of(context).size.height * 0.07),
                        backgroundColor: MyStyles.blueColor,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Text(
                      'Already have an account?',
                      style: MyStyles.notessize(MyStyles.grey),
                    ),
                    TextButton(
                        onPressed: () {
                          Get.to(LogInScreen());
                        },
                        child: Text('Sign in',
                            style: MyStyles.notessize(MyStyles.blueColor))),
                  ]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
