import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../utilities/app_color.dart';
import '../../utilities/app_constant.dart';
import '../../utilities/app_font.dart';
import '../../utilities/app_image.dart';
import '../../utilities/app_language.dart';

class QfleeAccessCode extends StatefulWidget {
  static String routeName = './QfleeAccessCode';
  const QfleeAccessCode({super.key});

  @override
  State<QfleeAccessCode> createState() => _QfleeAccessCodeState();
}

class _QfleeAccessCodeState extends State<QfleeAccessCode> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: AppColor.secondaryColor,
        statusBarIconBrightness: Brightness.dark));
    return Scaffold(
      body: SafeArea(
          child: Container(
        color: AppColor.secondaryColor,
        width: MediaQuery.of(context).size.width * 100 / 100,
        height: MediaQuery.of(context).size.height * 100 / 100,
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 90 / 100,
              margin: EdgeInsets.symmetric(vertical: 9),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 7 / 100,
                    height: MediaQuery.of(context).size.width * 7 / 100,
                    child: Image.asset(AppImage.aboutUsIcon),
                  ),
                  Text(AppLanguage.qfleeAccessCodeText[language],
                      style: TextStyle(
                          color: AppColor.primaryColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          fontFamily: AppFont.fontFamily)),
                  Container(
                    width: MediaQuery.of(context).size.width * 7 / 100,
                    height: MediaQuery.of(context).size.width * 7 / 100,
                    child: Image.asset(AppImage.aboutUsIcon),
                  )
                ],
              ),
            ),
            Expanded(
                flex: 1,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 7 / 100),
                      Container(
                        width: MediaQuery.of(context).size.width * 90 / 100,
                        height: MediaQuery.of(context).size.width * 90 / 100,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("./assets/icons/qrcode.png"),
                              fit: BoxFit.cover),
                        ),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 5 / 100),
                      Container(
                        padding: EdgeInsets.symmetric(
                            vertical:
                                MediaQuery.of(context).size.height * 1 / 100,
                            horizontal:
                                MediaQuery.of(context).size.width * 15 / 100),
                        decoration: BoxDecoration(
                            color: AppColor.themeColor,
                            borderRadius: BorderRadius.circular(12)),
                        child: Text("S1234",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: AppColor.secondaryColor,
                                fontSize: 44,
                                fontWeight: FontWeight.w700,
                                fontFamily: AppFont.fontFamily)),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 4 / 100),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 90 / 100,
                        child: Text(
                            "28 February 2025," +
                                "10:00 ${AppLanguage.amText[language]} - 02:00 ${AppLanguage.pmText[language]}",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: AppColor.silverColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                fontFamily: AppFont.fontFamily)),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 2 / 100),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 90 / 100,
                        child: Text("The Golden Fork",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: AppColor.primaryColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                fontFamily: AppFont.fontFamily)),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 90 / 100,
                        child: Text("245 Maple Street, Rivertown, TX 75001",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: AppColor.silverColor,
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                fontFamily: AppFont.fontFamily)),
                      )
                    ],
                  ),
                ))
          ],
        ),
      )),
    );
  }
}
