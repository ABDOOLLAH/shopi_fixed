import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopi/core/constant/color.dart';
import 'package:shopi/view/widget/onboarding/auth/logoauth.dart';
import 'package:shopi/view/widget/onboarding/auth/customtexttitleauth.dart';
import 'package:shopi/view/widget/onboarding/auth/customtextbodyauth.dart';
import 'package:shopi/view/widget/onboarding/auth/customtextformauth.dart';
import 'package:shopi/view/widget/onboarding/auth/custombuttonauth.dart';

import '../../../controller/auth/login_controller.dart';
import '../../widget/onboarding/auth/textsignup.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller = Get.put(LoginControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColorApp.backgroundcolor,
        elevation: 0,
        title: Text(
          "Sign In",
          style: Theme.of(
            context,
          ).textTheme.titleLarge!.copyWith(color: AppColorApp.grey),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
        child: ListView(
          children: [
            const Logoauth(),
            const SizedBox(height: 20),
            const Customtexttitleauth(text: "Welcome Back"),
            const SizedBox(height: 8),
            const Customtextbodyauth(
              text: "Sign in with your Email and Password",
            ),
            const SizedBox(height: 15),
             Customtextformauth(
              hinttext: "Enter Your Email",
              labeltext: "Email",
              iconData: Icons.email_outlined,
              mycontroller: controller.email,
            ),
            const SizedBox(height: 20),
             Customtextformauth(
              hinttext: "Enter Your Password",
              labeltext: "Password",
              iconData: Icons.lock_outline,
              mycontroller: controller.password,
            ),
            const SizedBox(height: 40),
            InkWell(
              onTap: (){
                controller.goToForgetPassword();
              },
              child: const Text(
                "Forget Password?",
                style: TextStyle(
                  color: AppColorApp.primaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Custombuttonauth(
              text: "Sign In",
              onPressed: () {
                // TODO: Handle sign in logic
              },
            ),
            const SizedBox(height: 20),
            Textsignup(
              text: "Don't have an account? ",
              texttow: "Sign Up",
              onTap: () {
                controller.goToSignUp;
              },
            ),
          ],
        ),
      ),
    );
  }
}
