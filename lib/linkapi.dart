class Applink {
  static const String server = "http://192.168.1.113/ecommerce";
  static const String test = "$server/test.php";

  //=====================auth===================//
  static const String signUp = "$server/auth/signup.php";
  static const String login = "$server/auth/login.php";
  static const String verifyCodeSignup = "$server/auth/verfiycode.php";

  //=====================ForgetPassword===================//
  static const String checkEmail = "$server/forgetpasseord/checkemail.php";
  static const String resetPassword = "$server/forgetpasseord/resetpassword.php";
  static const String verifyCode = "$server/forgetpasseord/verifycode.php";

  //=====================home===================//
  static const String homepage = "$server/home.php";

  //========================== Image ============================//
  static const String imagesStatic = "http://192.168.1.110";
  static const String imagesCategories = "$imagesStatic/categories";
  static const String imagesItems = "$imagesStatic/items";
}
