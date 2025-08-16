import 'package:shopi/core/class/crud.dart';
import 'package:shopi/linkapi.dart';

class ItemsData {
  Crud crud;
  ItemsData(this.crud);
  getData(String id) async {
    var response = await crud.postData(Applink.items, {"id" : id.toString()});
    return response.fold((l) => l, (r) => r);
  }
}