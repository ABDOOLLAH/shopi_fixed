import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopi/core/class/statusrequest.dart';
import 'package:shopi/core/constant/color.dart';
import 'package:shopi/view/widget/onboarding/auth/customtexttitleauth.dart';
import 'package:shopi/view/widget/onboarding/auth/customtextbodyauth.dart';
import 'package:shopi/view/widget/onboarding/auth/customtextformauth.dart';
import 'package:shopi/view/widget/onboarding/auth/custombuttonauth.dart';

import '../../../../controller/frogetpassword/resetpassword_controller.dart';
import '../../../../core/functions/validinput.dart';

class Resetpassword extends StatelessWidget {
  const Resetpassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(ResetpasswordControllerImp());
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
      body: GetBuilder<ResetpasswordControllerImp>(
        builder:
            (controller) =>
                controller.statusRequest == StatusRequest.loading
                    ? Center(child: Text('Loding...'))
                    : Container(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 30,
                        ),
                        child: ListView(
                          children: [
                            const SizedBox(height: 20),
                            const Customtexttitleauth(text: "New Password"),
                            const SizedBox(height: 8),
                            const Customtextbodyauth(
                              text: "Please enter new  Password",
                            ),

                            Customtextformauth(
                              isNumber: false,

                              valid: (val) {
                                return validInput(val!, 5, 33, "password");
                              },
                              hinttext: "Enter Your New Password",
                              labeltext: "Password",
                              iconData: Icons.email_outlined,
                              mycontroller: controller.repassword,
                            ),
                            Customtextformauth(
                              isNumber: false,

                              valid: (val) {
                                return validInput(val!, 5, 33, "repassword");
                              },
                              hinttext: "Re Enter Your New Password",
                              labeltext: "Password",
                              iconData: Icons.email_outlined,
                              mycontroller: controller.repassword,
                            ),

                            const SizedBox(height: 20),
                            Custombuttonauth(
                              text: "Save",
                              onPressed: () {
                                controller.goToSuccessResetPassword();
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
      ),
    );
  }
}
