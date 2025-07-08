// lib/data/model/categoriesmodel.dart

class CategoriesModel {
  final String categoriesId;
  final String categoriesName;
  final String categoriesNameAr;
  final String categoriesImage;
  final String categoriesDatetime;

  CategoriesModel({
    required this.categoriesId,
    required this.categoriesName,
    required this.categoriesNameAr,
    required this.categoriesImage,
    required this.categoriesDatetime,
  });

  factory CategoriesModel.fromJson(Map<String, dynamic> json) {
    return CategoriesModel(
      categoriesId: json['categories_id'].toString(),
      categoriesName: json['categories_name'].toString(),
      categoriesNameAr: json['categories_name_ar'].toString(),
      categoriesImage: json['categories_image'].toString(),
      categoriesDatetime: json['categories_datatime'].toString(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'categories_id':       categoriesId,
      'categories_name':     categoriesName,
      'categories_name_ar':  categoriesNameAr,
      'categories_image':    categoriesImage,
      'categories_datatime': categoriesDatetime,
    };
  }
}
