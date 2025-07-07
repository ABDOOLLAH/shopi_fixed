import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopi/core/constant/color.dart';

class CustomCardHome extends StatelessWidget {
  final String title;
  final String body;
  const CustomCardHome({Key? key, required this.title, required this.body})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15.h),
      child: Stack(
        children: [
          Container(
            alignment: Alignment.center,
            height: 150.h,
            decoration: BoxDecoration(
              color: AppColorApp.primaryColor,
              borderRadius: BorderRadius.circular(20.r),
            ),
            child: ListTile(
              title: Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.sp,
                ),
              ),
              subtitle: Text(
                body,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.sp,
                ),
              ),
            ),
          ),
          Positioned(
            top: -20.h,
            right: -20.w,
            child: Container(
              height: 160.h,
              width: 160.w,
              decoration: BoxDecoration(
                color: AppColorApp.secoundColor,
                borderRadius: BorderRadius.circular(160.r),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
