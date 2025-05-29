import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopi/core/constant/color.dart';
import 'package:shopi/view/widget/onboarding/auth/logoauth.dart';
import 'package:shopi/view/widget/onboarding/auth/customtexttitleauth.dart';
import 'package:shopi/view/widget/onboarding/auth/customtextbodyauth.dart';
import 'package:shopi/view/widget/onboarding/auth/customtextformauth.dart';
import 'package:shopi/view/widget/onboarding/auth/custombuttonauth.dart';

import '../../../../controller/auth/forgetpassword_controller.dart';
import '../../../controller/auth/checkemail_controller.dart';

class Checkemail extends StatelessWidget {
  const Checkemail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CheckemailControllerImp controller = Get.put(CheckemailControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColorApp.backgroundcolor,
        elevation: 0,
        title: Text(
          "Forget Password",
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
            const Customtexttitleauth(text: "Chack Email"),
            const SizedBox(height: 8),
            const Customtextbodyauth(
              text: "please Enter Your Email To Receive A verification Code ",
            ),

            Customtextformauth(
              hinttext: "Enter Your Email",
              labeltext: "Email",
              iconData: Icons.email_outlined,
              mycontroller: controller.email,
            ),

            const SizedBox(height: 20),
            Custombuttonauth(
              text: "Check Up",
              onPressed: () {
                controller.goToSuccessSignUp();
              },
            ),
          ],
        ),
      ),
    );
  }
}
