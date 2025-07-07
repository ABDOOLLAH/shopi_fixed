import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget {
  final String titleappbar;
  final void Function()? onPressedIcon;
  final void Function()? onPressedSearch;

  const CustomAppBar({
    Key? key,
    required this.titleappbar,
    this.onPressedIcon,
    this.onPressedSearch,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent, // مهم لتجنب خلفية بيضاء
      child: Container(
        margin: EdgeInsets.only(top: 10.h),
        child: Row(
          children: [
            Expanded(
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: IconButton(
                    icon: Icon(Icons.search, size: 24.sp),
                    onPressed: onPressedSearch,
                  ),
                  hintText: titleappbar,
                  hintStyle: TextStyle(fontSize: 16.sp),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
              ),
            ),
            SizedBox(width: 10.w),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10.r),
              ),
              width: 60.w,
              padding: EdgeInsets.symmetric(vertical: 8.h),
              child: IconButton(
                onPressed: onPressedIcon,
                icon: Icon(
                  Icons.notifications_active_outlined,
                  size: 28.sp,
                  color: Colors.grey[600],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
