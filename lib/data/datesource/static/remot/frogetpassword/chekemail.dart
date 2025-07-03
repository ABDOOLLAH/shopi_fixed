import 'package:shopi/core/class/crud.dart';
import 'package:shopi/linkapi.dart';


class CheckEmailData {
  Crud crud;

  CheckEmailData(this.crud);

  postData( String email ) async {
    var response = await crud.postData(Applink.checkEmail, {

      "email":email,
    });
    return response.fold((l) => l, (r) => r);
  }
}
