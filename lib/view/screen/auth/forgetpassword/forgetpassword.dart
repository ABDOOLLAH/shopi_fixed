import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopi/core/class/handlingdateview.dart';
import 'package:shopi/core/constant/color.dart';
import 'package:shopi/view/widget/onboarding/auth/customtexttitleauth.dart';
import 'package:shopi/view/widget/onboarding/auth/customtextbodyauth.dart';
import 'package:shopi/view/widget/onboarding/auth/customtextformauth.dart';
import 'package:shopi/view/widget/onboarding/auth/custombuttonauth.dart';

import '../../../../core/functions/validinput.dart';
import '../../../../controller/frogetpassword/forgetpassword_controller.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(ForgetPasswordControllerImp());
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
      body: GetBuilder<ForgetPasswordControllerImp>(
        builder:
            (controller) => HandlingDataRequest(
              statusRequest: controller.statusRequest!,
              widget: Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 30,
                  ),
                  child: ListView(
                    children: [
                      const SizedBox(height: 20),
                      const Customtexttitleauth(text: "Chack Email"),
                      const SizedBox(height: 8),
                      const Customtextbodyauth(
                        text:
                            "please Enter Your Email To Receive A verification Code ",
                      ),

                      Customtextformauth(
                        isNumber: false,
                        valid: (val) {
                          return validInput(val!, 5, 100, "email");
                        },
                        hinttext: "Enter Your Email",
                        labeltext: "Email",
                        iconData: Icons.email_outlined,
                        mycontroller: controller.email,
                      ),

                      const SizedBox(height: 20),
                      Custombuttonauth(
                        text: "Check Up",
                        onPressed: () {
                          controller.checkemail();
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
      ),
    );
  }
}
