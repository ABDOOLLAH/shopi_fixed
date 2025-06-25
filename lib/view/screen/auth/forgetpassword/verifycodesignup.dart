import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:shopi/controller/auth/verifycodesignup_controller.dart';
import 'package:shopi/core/class/statusrequest.dart';
import 'package:shopi/core/constant/color.dart';
import 'package:shopi/view/widget/onboarding/auth/customtexttitleauth.dart';
import 'package:shopi/view/widget/onboarding/auth/customtextbodyauth.dart';
import 'package:shopi/view/widget/onboarding/auth/custombuttonauth.dart';

import '../../../../controller/auth/verifycode_controller.dart';

class Verifycodesignup extends StatelessWidget {
  const Verifycodesignup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(VerifycodeControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColorApp.backgroundcolor,
        elevation: 0,
        title: Text(
          "Verifcation Code",
          style: Theme.of(
            context,
          ).textTheme.titleLarge!.copyWith(color: AppColorApp.grey),
        ),
      ),
      body: GetBuilder<VerifycodesignupControllerImp>(
        builder: (controller) => controller.statusRequest ==
            StatusRequest.loading
            ? const Center(
          child: Text("Loading ...."),
        )
            : Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
          child: ListView(
            children: [
              const SizedBox(height: 20),
              const Customtexttitleauth(text: "Check Code"),
              const SizedBox(height: 8),
              const Customtextbodyauth(
                text: "Please Enter Digit Code sent To",
              ),

              OtpTextField(
                fieldWidth: 50.0,
                borderRadius: BorderRadius.circular(20),
                numberOfFields: 5,
                borderColor: const Color(0xFF512DA8),
                showFieldAsBox: true,
                // عند تغيير أي خانة
                onCodeChanged: (String code) {
                  // يمكنك إضافة منطق التحقق عندما يكتمل الإدخال
                },
                // عند ملء جميع الخانات
                onSubmit: (String verificationCode) {
                  controller.goTosuccessSignUp(verificationCode);
                },
              ),
              const SizedBox(height: 20),
              Custombuttonauth(
                text: "Check Up",
                onPressed: () {
                  // TODO: Handle sign in logic
                },
              ),
            ],
          ),
        ),
      ),),
    );
  }
}
