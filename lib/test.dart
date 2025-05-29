// lib/view/widget/onboarding/auth/otp_screen.dart

import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OTP Verification'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const Text(
              'أدخل رمز التحقق المرسل إلى هاتفك',
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            // هنا نستخدم OtpTextField من الحزمة
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
              
              },
            ),

          ],
        ),
      ),
    );
  }
}
