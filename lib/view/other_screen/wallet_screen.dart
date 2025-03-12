import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../utilities/app_color.dart';
import '../../utilities/app_constant.dart';
import '../../utilities/app_header.dart';
import '../../utilities/app_language.dart';

class MyWalletScreen extends StatefulWidget {
    static String routeName = './MyWalletScreen';
  const MyWalletScreen({super.key});

  @override
  State<MyWalletScreen> createState() => _MyWalletScreenState();
}

class _MyWalletScreenState extends State<MyWalletScreen> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: AppColor.secondaryColor,
        statusBarIconBrightness: Brightness.dark));
    return Scaffold(
        body: SafeArea(
            child: Container(
                width: MediaQuery.of(context).size.width * 100 / 100,
                height: MediaQuery.of(context).size.height * 100 / 100,
                color: AppColor.secondaryColor,
                child: Column(children: [
                  SizedBox(
                      height: MediaQuery.of(context).size.height * 1 / 100),
                  AppHeader(
                      text: AppLanguage.myWalletText[language],
                      onPress: () {
                        Navigator.pop(context);
                      }),
                  SizedBox(
                      height: MediaQuery.of(context).size.height * 2 / 100),
                ]))));
  }
}
