import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:qflee/utilities/app_image.dart';
import '../../utilities/app_color.dart';
import 'login_screen.dart';

class Splash extends StatefulWidget {
  static String routeName = './Splash';
  Splash({super.key});

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  bool status = false;
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 3),
      () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Login()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: AppColor.themeColor,
        statusBarIconBrightness: Brightness.dark));
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width * 100 / 100,
          height: MediaQuery.of(context).size.height * 100 / 100,
          color: AppColor.themeColor,
          alignment: Alignment.center,
          child: Image.asset(
            AppImage.splashImage,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
