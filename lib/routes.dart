import 'package:get/get.dart';
import 'package:shopi/core/middlware/mymiddlware.dart';
import 'package:shopi/localization/Language.dart';
import 'package:shopi/view/screen/OnBoarding.dart';
import 'package:shopi/view/screen/auth/forgetpassword/success_resetpassword.dart';
import 'package:shopi/view/screen/auth/forgetpassword/verifycodesignup.dart';
import 'package:shopi/view/screen/auth/login.dart';
import 'package:shopi/view/screen/auth/forgetpassword/resetpassword.dart';
import 'package:shopi/view/screen/auth/signup.dart';
import 'package:shopi/view/screen/auth/forgetpassword/success_signup.dart';
import 'package:shopi/view/screen/auth/forgetpassword/verifycode.dart';
import 'package:shopi/view/screen/home.dart';
import 'package:shopi/view/screen/homescreen.dart';

import 'view/screen/auth/forgetpassword/forgetpassword.dart';
import 'core/constant/routes.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(
    name: "/",
    page: () => const Language(),
    middlewares: [MyMiddleWare()],
  ),

  GetPage(name: AppRoutes.login, page: () => const Login()),
  GetPage(name: AppRoutes.signup, page: () => const SignUp()),
  GetPage(name: AppRoutes.forgetPssword, page: () => const ForgetPassword()),
  GetPage(name: AppRoutes.verfiyCode, page: () => const Verifycode()),
  GetPage(
    name: AppRoutes.verfiyCodesignup,
    page: () => const Verifycodesignup(),
  ),
  GetPage(name: AppRoutes.resetPassword, page: () => const Resetpassword()),
  GetPage(
    name: AppRoutes.successResetpassword,
    page: () => const SuccessResetpassword(),
  ),
  GetPage(name: AppRoutes.successSignUp, page: () => const SuccessSignup()),
  GetPage(name: AppRoutes.onBoarding, page: () => const Onboarding()),
  GetPage(name: AppRoutes.home, page: () => const Homescreen()),
];
