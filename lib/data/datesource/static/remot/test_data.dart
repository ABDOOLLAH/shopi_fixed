import 'package:shopi/core/class/crud.dart';

import '../../../../linkapi.dart';

class TestData {
  Crud crud;

  TestData(this.crud);

  getData() async {
    var response = await crud.postDate(Applink.test, {});
   return response.fold((1)=>1, (r) => r);
  }
}