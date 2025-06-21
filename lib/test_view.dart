import 'package:shopi/controller/test_controller.dart';
import 'package:shopi/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/class/handlingdateview.dart';

class TestView extends StatelessWidget {
  const TestView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(TestController());
    return Scaffold(

      appBar: AppBar(title: Text("Title") ,
        backgroundColor: AppColorApp.primaryColor,
      ),
      body: GetBuilder<TestController>(builder: (controller) {
        return HandlingDataView(
            statusRequest: controller.statusRequest,
            widget: ListView.builder(
                itemCount: controller.data.length,
                itemBuilder: (context, index) {
                  return Text("${controller.data}");
                }));
      }),
    );
  }
}