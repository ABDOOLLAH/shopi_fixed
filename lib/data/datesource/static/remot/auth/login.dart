import 'package:shopi/core/class/crud.dart';
import 'package:shopi/linkapi.dart';


class LoginData {
  Crud crud;

  LoginData(this.crud);

  postData(String username,String password,String email,String phone) async {
    var response = await crud.postData(Applink.signUp, {

      "password":password,
      "email":email,
    });
    return response.fold((l) => l, (r) => r);
  }
}
