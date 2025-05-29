import 'package:flutter/material.dart';

import '../../../../core/constant/color.dart';

class Textsignup extends StatelessWidget {
  final String text;
  final String texttow;
  final void Function()? onTap;
  const Textsignup({super.key, required this.text, required this.texttow,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         Text(text),
        InkWell(
          onTap:onTap,
          child:  Text(
            texttow,
            style:const TextStyle(
              color: AppColorApp.primaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    )
    ;
  }
}
