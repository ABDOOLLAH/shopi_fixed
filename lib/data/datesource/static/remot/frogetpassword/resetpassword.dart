import 'package:shopi/core/class/crud.dart';
import 'package:shopi/linkapi.dart';


class ResetPasswordData {
  Crud crud;

  ResetPasswordData(this.crud);

  postData( String password,String email ) async {
    var response = await crud.postData(Applink.resetpassword, {
      "email":email,
      "password":password,

    });
    return response.fold((l) => l, (r) => r);
  }
}
