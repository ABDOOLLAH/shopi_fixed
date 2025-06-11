import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopi/controller/test_controller.dart';
import 'package:shopi/core/class/statusrequest.dart';

class TestView extends StatelessWidget {
  const TestView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(TestController());

    return Scaffold(
      appBar: AppBar(title: const Text('Data')),
      body: GetBuilder<TestController>(builder: (controller) {
        if (controller.Statusrequest == Statusrequest.loading) {
          return const Center(child: Text("Loading..."));
        } else if (controller.Statusrequest == StatusRequest.offlineFailure) {
          return const Center(child: Text('Offline'));
        } else if (controller.statusRequest == StatusRequest.failure) {
          return const Center(child: Text('Failed'));
        } else {
          return const Center(child: Text('Success'));
        }
      }),
    );
  }
}
