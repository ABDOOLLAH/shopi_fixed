import 'package:get/get.dart';

validInput(String val, int min, int max, String type) {
  if (type == "username") {
    if (!GetUtils.isUsername(val)) {
      return "not valid username";
    }
  }
  if (type == "email") {
    if (!GetUtils.isEmail(val)) {
      return "not valid email";
    }
  }
  if (type == "phone") {
    if (!GetUtils.isPhoneNumber(val)) {
      return "not valid phone";
    }
  }
  if (val.isEmpty) {
    return "value cant be empty $min";
  }
  if (val.length > max) {
    return "value cant be larger than $max";
  }
  if (val.length < min) {
    return "value cant be larger than $min";
  }
}
