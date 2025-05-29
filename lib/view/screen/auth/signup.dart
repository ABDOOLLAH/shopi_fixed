import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopi/core/constant/color.dart';
import 'package:shopi/view/widget/onboarding/auth/customtexttitleauth.dart';
import 'package:shopi/view/widget/onboarding/auth/customtextbodyauth.dart';
import 'package:shopi/view/widget/onboarding/auth/customtextformauth.dart';
import 'package:shopi/view/widget/onboarding/auth/custombuttonauth.dart';

import '../../../controller/auth/singup_controller.dart';
import '../../widget/onboarding/auth/textsignup.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SingupControllerImp controller = Get.put(SingupControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColorApp.backgroundcolor,
        elevation: 0,
        title: Text(
          "Sign Up",
          style: Theme.of(
            context,
          ).textTheme.titleLarge!.copyWith(color: AppColorApp.grey),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
        child: ListView(
          children: [
            const SizedBox(height: 20),
            const Customtexttitleauth(text: "Welcome Back"),
            const SizedBox(height: 8),
            const Customtextbodyauth(
              text: "Sign Up with your Email and Password",
            ),
            const SizedBox(height: 15),
            Customtextformauth(
              hinttext: "Enter Your Email",
              labeltext: "Email",
              iconData: Icons.email_outlined,
              mycontroller: controller.email,
            ),
            Customtextformauth(
              hinttext: "Enter Your UserName",
              labeltext: "UserName",
              iconData: Icons.person_outlined,
              mycontroller: controller.username,
            ),
            Customtextformauth(
              hinttext: "Enter Your Phone Number",
              labeltext: "Phone",
              iconData: Icons.phone_outlined,
              mycontroller: controller.phone,
            ),
            const SizedBox(height: 20),
            Customtextformauth(
              hinttext: "Enter Your Password",
              labeltext: "Password",
              iconData: Icons.lock_outline,
              mycontroller: controller.password,
            ),
            const SizedBox(height: 40),

            const SizedBox(height: 20),
            Custombuttonauth(
              text: "Sign Up",
              onPressed: () {
                controller.singup();
              },
            ),
            const SizedBox(height: 20),
            Textsignup(
              text: " have an account? ",
              texttow: " Sign In ",
              onTap: () {
                controller.goToSignIn();
              },
            ),
          ],
        ),
      ),
    );
  }
}
