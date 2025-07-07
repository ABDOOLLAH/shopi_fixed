import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopi/controller/home_controller.dart';
import 'package:shopi/core/constant/color.dart';
import 'package:shopi/data/model/categoriesmodel.dart';
import 'package:shopi/linkapi.dart';

class ListCategoriesHome extends GetView<HomeControllerImp> {
  const ListCategoriesHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.separated(
        separatorBuilder: (context, index) => SizedBox(width: 10.w),
        itemCount: controller.categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Categories(
            categoriesModel:
            CategoriesModel.fromJson(controller.categories[index]),
          );
        },
      ),
    );
  }
}

class Categories extends StatelessWidget {
  final CategoriesModel categoriesModel;
  const Categories({Key? key, required this.categoriesModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: AppColorApp.thirdColor,
            borderRadius: BorderRadius.circular(20.r),
          ),
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          height: 70.h,
          width: 70.w,
          child: SvgPicture.network(
            "${Applink.imagesCategories}/${categoriesModel.categoriesImage}",
            color: AppColorApp.secoundColor,
          ),
        ),
        SizedBox(height: 5.h),
        Text(
          categoriesModel.categoriesName!,
          style: TextStyle(
            fontSize: 13.sp,
            color: AppColorApp.black,
          ),
        ),
      ],
    );
  }
}
