import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopi/core/constant/color.dart';
import 'package:shopi/view/widget/onboarding/auth/logoauth.dart';
import 'package:shopi/view/widget/onboarding/auth/customtexttitleauth.dart';
import 'package:shopi/view/widget/onboarding/auth/customtextbodyauth.dart';
import 'package:shopi/view/widget/onboarding/auth/customtextformauth.dart';
import 'package:shopi/view/widget/onboarding/auth/custombuttonauth.dart';

import '../../../../../controller/auth/singup_controller.dart';
import '../../../../controller/auth/resetpassword_controller.dart';
import '../../../widget/onboarding/auth/textsignup.dart';
import '../../../../controller/auth/forgetpassword_controller.dart';

class Resetpassword extends StatelessWidget {
  const Resetpassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ResetpasswordControllerImp controller = Get.put(ResetpasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColorApp.backgroundcolor,
        elevation: 0,
        title: Text(
          "Reset Password",
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
            const Customtexttitleauth(text: "New Password"),
            const SizedBox(height: 8),
            const Customtextbodyauth(
              text: "Please enter new  Password",
            ),

            Customtextformauth(
              hinttext: "Enter Your New Password",
              labeltext: "Password",
              iconData: Icons.email_outlined,
              mycontroller: controller.password,
            ),
            Customtextformauth(
              hinttext: "Re Enter Your New Password",
              labeltext: "Password",
              iconData: Icons.email_outlined,
              mycontroller: controller.repassword,
            ),

            const SizedBox(height: 20),
            Custombuttonauth(
              text: "Save",
              onPressed: () {
                // TODO: Handle sign in logic
              },
            ),
            const SizedBox(height: 20),
            Textsignup(
              text: " have an account? ",
              texttow: " Sign  ",
              onTap: () {
                controller.goToSuccessResetPassword();
              },
            ),
          ],
        ),
      ),
    );
  }
}
