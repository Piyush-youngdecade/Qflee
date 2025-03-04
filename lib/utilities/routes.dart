import 'package:flutter/material.dart';
import '../view/authentication/change_password_screen.dart';
import '../view/authentication/deleteAccount_screen.dart';
import '../view/authentication/forgetPassword_otpverify_screen.dart';
import '../view/authentication/forgot_password_screen.dart';
import '../view/authentication/login_screen.dart';
import '../view/authentication/notification_screen.dart';
import '../view/authentication/otp_verify_screen.dart';
import '../view/authentication/signup_screen.dart';
import '../view/content_screen/content_screen.dart';

final Map<String, WidgetBuilder> routes = {
  Signup.routeName: (context) => const Signup(),
  Login.routeName: (context) => const Login(),
  OTP.routeName: (context) => const OTP(),
  ForgetPasswordOtpVerify.routeName: (context) =>
      const ForgetPasswordOtpVerify(),

  Content.routeName: (context) => const Content(),
  NotificationScreen.routeName: (context) => const NotificationScreen(),
  DeleteAccount.routeName: (context) => const DeleteAccount(),
  ChangePassword.routeName: (context) => const ChangePassword(),
  ForgotPassword.routeName: (context) => const ForgotPassword(),


};
