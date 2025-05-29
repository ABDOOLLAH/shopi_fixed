import 'package:flutter/cupertino.dart';
import 'package:shopi/view/screen/OnBoarding.dart';
import 'package:shopi/view/screen/auth/forgetpassword/success_resetpassword.dart';
import 'package:shopi/view/screen/auth/login.dart';
import 'package:shopi/view/screen/auth/forgetpassword/resetpassword.dart';
import 'package:shopi/view/screen/auth/signup.dart';
 import 'package:shopi/view/screen/auth/forgetpassword/success_signup.dart';
import 'package:shopi/view/screen/auth/forgetpassword/verifycode.dart';

import 'view/screen/auth/forgetpassword/forgetpassword.dart';
import 'core/constant/routes.dart';

Map<String, Widget Function(BuildContext)> routes = {
  //auth
  AppRoutes.login: (context) => const Login(),
  AppRoutes.signUp: (context) => const SignUp(),
  AppRoutes.forgetPssword: (context) => const ForgetPassword(),
  AppRoutes.verfiyCode: (context) => const Verifycode(),
  AppRoutes.resetPassword: (context) => const Resetpassword(),
  AppRoutes.successResetpassword: (context) => const SuccessResetPassword(),
  AppRoutes.successSignUp: (context) => const SuccessSignup(),
  //onBoarding
  AppRoutes.onBoarding: (context) => const Onboarding(),
};
