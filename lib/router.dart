
import 'package:flutter/material.dart';

import 'core/constant/routes.dart';
import 'featuers/auth/view/signup_page.dart';
import 'featuers/auth/view/login_page.dart';
import 'featuers/auth/view/success_resetpassword.dart';
import 'featuers/auth/view/success_signup.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoute.login: (context) => const Login(),
  AppRoute.signUp: (context) => const SignUp(),
  AppRoute.successResetpassword: (context) => const SuccessResetPassword(),
  AppRoute.successSignUp: (context) => const SuccessSignUp(),

};