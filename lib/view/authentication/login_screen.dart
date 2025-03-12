// ignore_for_file: sized_box_for_whitespace, deprecated_member_use, prefer_typing_uninitialized_variables, prefer_interpolation_to_compose_strings
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import '../../utilities/app_button.dart';
import '../../utilities/app_color.dart';
import '../../utilities/app_constant.dart';
import '../../utilities/app_font.dart';
import '../../utilities/app_footer.dart';
import '../../utilities/app_image.dart';
import '../../utilities/app_language.dart';
import '../../utilities/custom_input.dart';
import 'signup_screen.dart';

class Login extends StatefulWidget {
  static String routeName = "./Login";
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController mobileTextEditingController =
      TextEditingController(text: "+91 ");
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: AppColor.secondaryColor,
        statusBarIconBrightness: Brightness.dark));
    return WillPopScope(
      onWillPop: () {
        SystemChannels.platform.invokeMethod('SystemNavigator.pop');
        return Future.value(false);
      },
      child: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
          backgroundColor: AppColor.secondaryColor,
          body: SafeArea(
              child: Container(
                  color: AppColor.secondaryColor,
                  height: MediaQuery.of(context).size.height * 100 / 100,
                  width: MediaQuery.of(context).size.width * 100 / 100,
                  child: Column(
                    children: [
                      Expanded(
                          flex: 1,
                          child: SingleChildScrollView(
                              child: Column(
                            children: [
                              SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      5 /
                                      100),
                              Container(
                                alignment: Alignment.center,
                                width: MediaQuery.of(context).size.width *
                                    90 /
                                    100,
                                child: Text.rich(TextSpan(children: [
                                  TextSpan(
                                    text: AppLanguage.qfleeText[language],
                                    style: TextStyle(
                                        color: AppColor.themeColor,
                                        fontSize: 24,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: AppFont.fontFamily),
                                  ),
                                  TextSpan(
                                    text: AppLanguage.nextText[language],
                                    style: TextStyle(
                                        color: AppColor.themeColor,
                                        fontSize: 24,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: AppFont.fontFamily),
                                  ),
                                  TextSpan(
                                    text: AppLanguage.genQText[language],
                                    style: TextStyle(
                                        color: AppColor.themeColor,
                                        fontSize: 24,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: AppFont.fontFamily),
                                  ),
                                ])),
                              ),
                              SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      2 /
                                      100),
                              Container(
                                  width: MediaQuery.of(context).size.width *
                                      90 /
                                      100,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                7 /
                                                100,
                                        height:
                                            MediaQuery.of(context).size.width *
                                                7 /
                                                100,
                                        child: Image.asset(
                                            AppImage.normalQueueIcon),
                                      ),
                                      // SizedBox(
                                      //     width: MediaQuery.of(context)
                                      //             .size
                                      //             .width *
                                      //         1 /
                                      //         100),
                                      Text(
                                        AppLanguage.normalText[language],
                                        style: TextStyle(
                                            color: AppColor.grayColor,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: AppFont.fontFamily),
                                      ),
                                      SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              2 /
                                              100),
                                      Container(
                                        color: AppColor.lightBorderColor,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.2 /
                                                100,
                                        height:
                                            MediaQuery.of(context).size.width *
                                                4 /
                                                100,
                                      ),
                                      SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              1 /
                                              100),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                7 /
                                                100,
                                        height:
                                            MediaQuery.of(context).size.width *
                                                7 /
                                                100,
                                        child: Image.asset(
                                            AppImage.premiumQueueIcon),
                                      ),
                                      // SizedBox(
                                      //     width: MediaQuery.of(context)
                                      //             .size
                                      //             .width *
                                      //         1 /
                                      //         100),
                                      Text(
                                        AppLanguage.premiumText[language],
                                        style: TextStyle(
                                            color: AppColor.grayColor,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: AppFont.fontFamily),
                                      ),
                                      SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              2 /
                                              100),
                                      Container(
                                        color: AppColor.lightBorderColor,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.2 /
                                                100,
                                        height:
                                            MediaQuery.of(context).size.width *
                                                4 /
                                                100,
                                      ),
                                      SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              1 /
                                              100),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                7 /
                                                100,
                                        height:
                                            MediaQuery.of(context).size.width *
                                                7 /
                                                100,
                                        child: Image.asset(
                                            AppImage.groupQueueIcon),
                                      ),
                                      // SizedBox(
                                      //     width: MediaQuery.of(context)
                                      //             .size
                                      //             .width *
                                      //         1 /
                                      //         100),
                                      Text(
                                        AppLanguage.groupText[language],
                                        style: TextStyle(
                                            color: AppColor.grayColor,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: AppFont.fontFamily),
                                      ),
                                    ],
                                  )),
                              SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      7 /
                                      100),
                              Container(
                                width: MediaQuery.of(context).size.width *
                                    90 /
                                    100,
                                child: Text(
                                  AppLanguage
                                      .verifyYourPhoneNumberText[language],
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: AppColor.primaryColor,
                                      fontSize: 24,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: AppFont.fontFamily),
                                ),
                              ),
                              SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      7 /
                                      100),
                              CustomLabelTextFormField(
                                controller: mobileTextEditingController,
                                label: AppLanguage.mobileNumberText[language],
                                image: AppImage.aboutUsIcon,
                                hintText: "+91 ",
                                keyboardtype: TextInputType.number,
                                maxLength: AppConstant.mobileLength,
                                fillColorStatus: 0,
                                readOnly: false,
                              ),
                              SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      7 /
                                      100),
                              AppButton(
                                  text: AppLanguage.nextText[language],
                                  onPress: () {
                                    setState(() {
                                      AppConstant.selectFooterIndex = 0;
                                    });
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                MyFooterPage()));
                                  }),
                              SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      3 /
                                      100),
                              Container(
                                alignment: Alignment.center,
                                width: MediaQuery.of(context).size.width *
                                    80 /
                                    100,
                                child: Row(
                                  children: [
                                    Text(
                                      AppLanguage.dontAccountText[language] +
                                          " ",
                                      style: TextStyle(
                                          color: AppColor.primaryColor,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: AppFont.fontFamily),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Signup()));
                                      },
                                      child: Text(
                                        AppLanguage.createAccountText[language],
                                        style: TextStyle(
                                            color: AppColor.themeColor,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: AppFont.fontFamily),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                           
                           
                              SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      12 /
                                      100),
                              Container(
                                width: MediaQuery.of(context).size.width *
                                    90 /
                                    100,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          4.5 /
                                          100,
                                      height:
                                          MediaQuery.of(context).size.width *
                                              4.5 /
                                              100,
                                      child: Image.asset(AppImage.swapIcon),
                                    ),
                                    SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                2 /
                                                100),
                                    Text(
                                      AppLanguage.swapText[language],
                                      style: TextStyle(
                                          color: AppColor.darkBlueColor,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: AppFont.fontFamily),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ))),
                    ],
                  ))),
        ),
      ),
    );
  }
}
