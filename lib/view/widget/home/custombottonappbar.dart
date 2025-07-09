import 'package:flutter/material.dart';
import 'package:shopi/core/constant/color.dart';

class CustomButtonAppBar extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final IconData iconData;
   final bool active;

   CustomButtonAppBar({
    Key? key,
    required this.text,
    required this.iconData,
      required this.active,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(iconData, color:active==true?AppColorApp.primaryColor: Colors.black),
          Text(
            text,
            style: TextStyle(color: active==true?AppColorApp.primaryColor: Colors.black),
          ),
        ],
      ),
    );
  }
}
