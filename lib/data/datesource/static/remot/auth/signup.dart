import 'package:shopi/core/class/crud.dart';
import 'package:shopi/linkapi.dart';


class SignupData {
  Crud crud;

  SignupData(this.crud);

  postData(String username,String password,String email,String phone) async {
    var response = await crud.postData(Applink.signUp, {
      "username":username,
      "password":password,
      "email":email,
      "phone":phone,
    });
    return response.fold((l) => l, (r) => r);
  }
}
