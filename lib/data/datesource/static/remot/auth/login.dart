import 'package:shopi/core/class/crud.dart';
import 'package:shopi/linkapi.dart';


class LoginData {
  Crud crud;

  LoginData(this.crud);

  postData(String password,String email) async {
    var response = await crud.postData(Applink.login, {

      "password":password,
      "email":email,
    });
    return response.fold((l) => l, (r) => r);
  }
}
