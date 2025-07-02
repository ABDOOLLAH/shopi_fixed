class Applink {
  static const String server = "http://localhost/ecommerce";
  static const String test = "$server/test.php";

  //=====================auth===================//
  static const String signUp = "http://192.168.1.108/ecommerce/auth/signup.php";
  static const String Login = "http://192.168.1.108/ecommerce/auth/login.php";
  static const String Verifycodesignup =
      "http://192.168.1.108/ecommerce/auth/verfiycode.php";

  //=====================FrogetPassword===================//
  static const String checkemail =
      "http://192.168.1.108/ecommerce/forgetpasseord/checkemail.php";
  static const String resetpassword =
      "http://192.168.1.108/ecommerce/forgetpasseord/resetpassword.php";
  static const String verifycode =
      "http://192.168.1.108/ecommerce/forgetpasseord/verifycode.php";

  //=====================home===================//
  static const String homepage = "http://192.168.1.108/ecommerce/home.php";

  //========================== Image ============================
  static const String imageststatic =
      "http://192.168.1.108";
  static const String imagestCategories = "http://192.168.1.108/categories/";
  static const String imagestItems = "$imageststatic/items";
  // =============================================================
  //
}
