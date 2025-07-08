// lib/data/model/itemsmodel.dart

class ItemsModel {
  final String itemsId;
  final String itemsName;
  final String itemsNameAr;
  final String itemsDesc;
  final String itemsDescAr;
  final String itemsImage;
  final String itemsCount;
  final String itemsActive;
  final String itemsPrice;
  final String itemsDiscount;
  final String itemsDate;
  final String itemsCat;
  final String categoriesId;
  final String categoriesName;
  final String categoriesNameAr;
  final String categoriesImage;
  final String categoriesDatetime;

  ItemsModel({
    required this.itemsId,
    required this.itemsName,
    required this.itemsNameAr,
    required this.itemsDesc,
    required this.itemsDescAr,
    required this.itemsImage,
    required this.itemsCount,
    required this.itemsActive,
    required this.itemsPrice,
    required this.itemsDiscount,
    required this.itemsDate,
    required this.itemsCat,
    required this.categoriesId,
    required this.categoriesName,
    required this.categoriesNameAr,
    required this.categoriesImage,
    required this.categoriesDatetime,
  });

  factory ItemsModel.fromJson(Map<String, dynamic> json) {
    return ItemsModel(
      itemsId: json['items_id'].toString(),
      itemsName: json['items_name'].toString(),
      itemsNameAr: json['items_name_ar'].toString(),
      itemsDesc: json['items_desc'].toString(),
      itemsDescAr: json['items_desc_ar'].toString(),
      itemsImage: json['items_image'].toString(),
      itemsCount: json['items_count'].toString(),
      itemsActive: json['items_activ'].toString(),
      itemsPrice: json['items_price'].toString(),
      itemsDiscount: json['items_discount'].toString(),
      itemsDate: json['items_data'].toString(),
      itemsCat: json['items_cat'].toString(),
      categoriesId: json['categories_id'].toString(),
      categoriesName: json['categories_name'].toString(),
      categoriesNameAr: json['categories_name_ar'].toString(),
      categoriesImage: json['categories_image'].toString(),
      categoriesDatetime: json['categories_datatime'].toString(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'items_id':        itemsId,
      'items_name':      itemsName,
      'items_name_ar':   itemsNameAr,
      'items_desc':      itemsDesc,
      'items_desc_ar':   itemsDescAr,
      'items_image':     itemsImage,
      'items_count':     itemsCount,
      'items_activ':     itemsActive,
      'items_price':     itemsPrice,
      'items_discount':  itemsDiscount,
      'items_data':      itemsDate,
      'items_cat':       itemsCat,
      'categories_id':        categoriesId,
      'categories_name':      categoriesName,
      'categories_name_ar':   categoriesNameAr,
      'categories_image':     categoriesImage,
      'categories_datatime':  categoriesDatetime,
    };
  }
}
