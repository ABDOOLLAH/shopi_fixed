import 'package:shopi/core/class/crud.dart';
import 'package:shopi/linkapi.dart';

class VerifyCodeForgetPasswordData {
  Crud crud;

  VerifyCodeForgetPasswordData(this.crud);

  postData(String email, String verifycode) async {
    var response = await crud.postData(Applink.verifyCodeFP, {
      "email": email,
      "verifycode": verifycode,
    });
    return response.fold((l) => l, (r) => r);
  }
}
