import 'package:flutter/material.dart';
import 'package:shopi/core/constant/color.dart';

class Custombuttonauth extends StatelessWidget {
  final String text;
  final void Function()? onPressed;

  const Custombuttonauth({super.key, required this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const EdgeInsets.only(top: 10),
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        padding:const EdgeInsets.symmetric(vertical: 13),
        onPressed: onPressed,
        child:Text(text),
        color: AppColorApp.primaryColor,
        textColor: Colors.white,
      ),
    );
  }
}
