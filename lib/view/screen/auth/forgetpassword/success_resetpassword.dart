import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopi/controller/auth/successresetpassword_controller.dart';
import 'package:shopi/core/constant/color.dart';

import '../../../widget/onboarding/auth/custombuttonauth.dart';

class SuccessResetpassword extends StatelessWidget {

  const SuccessResetpassword({super.key});

  @override
  Widget build(BuildContext context) {
    SuccessResetPasswordControllerImp controller=
    Get.put(SuccessResetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColorApp.backgroundcolor,
        elevation: 0,
        title: Text(
          "Success",
          style: Theme.of(
            context,
          ).textTheme.titleLarge!.copyWith(color: AppColorApp.grey),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            const Center(child: Icon(Icons.check_circle_outline,size: 200,color: AppColorApp.primaryColor,)),
            Text("data",),
            Spacer(),
            Container(
              width: double.infinity,
              child: Custombuttonauth(
                text: "Go To Login",
                onPressed: () {

                  controller.gotToPageLogin();
                },
              ),
            ),
            SizedBox(height: 30,)
          ],
        ),
      ),
    );
  }
}
