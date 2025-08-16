class Applink {
  static const String host = "http://192.168.1.132/ecommerce";

  static const String test = "$host/test.php";

  // صحح upload → uploads
  static const String imageBase       = "$host/uploads";
  static const String imageCategories = "$imageBase/categories";
  static const String imageItems      = "$imageBase/items";

  static const String signUp       = "$host/auth/signup.php";
  static const String login        = "$host/auth/login.php";
  static const String verifySignUp = "$host/auth/verifycode.php";

  static const String checkEmail   = "$host/forgetpassword/checkemail.php";
  static const String verifyCodeFP = "$host/forgetpassword/verifycode.php";
  static const String resetPassword= "$host/forgetpassword/resetpassword.php";

  static const String home = "$host/home.php";
  static const String items = "$host/items/items.php"  ;

}
