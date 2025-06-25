import 'package:shopi/core/class/crud.dart';
import 'package:shopi/linkapi.dart';


class VerifycodesiginupDate {
  Crud crud;

  VerifycodesiginupDate(this.crud);

  postData(String email,String verfiycode) async {
    var response = await crud.postData(Applink.Verifycodesignup, {
      "email":email,
      "verfiycode":verfiycode,
    });
    return response.fold((l) => l, (r) => r);
  }
}
