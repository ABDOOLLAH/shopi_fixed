import 'package:shopi/core/class/crud.dart';

import '../../../../linkapi.dart';

class HomeData {
  Crud crud;

  HomeData(this.crud);

  getData() async {
    var response = await crud.postData(Applink.home, {});
    return response.fold((l) => l, (r) => r);
  }
}
