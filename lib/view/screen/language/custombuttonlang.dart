import 'package:flutter/material.dart';
import 'package:shopi/core/constant/color.dart';

class Custombuttonlang extends StatelessWidget {
  final String textButton;
  final void Function()? onPressed;
  const Custombuttonlang({super.key, required this.textButton, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 100),
      width: double.infinity,
      child: MaterialButton(
        color: AppColorApp.primaryColor,
        onPressed: onPressed,         // ← هنا استخدم الـ callback الممرّر
        textColor: Colors.white,
        child: Text(
          textButton,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
