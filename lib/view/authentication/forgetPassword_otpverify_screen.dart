import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pinput/pinput.dart';
import '../../utilities/app_button.dart';
import '../../utilities/app_color.dart';
import '../../utilities/app_constant.dart';
import '../../utilities/app_font.dart';
import '../../utilities/app_header.dart';
import '../../utilities/app_language.dart';
import 'ResetPassword_screen.dart';

class ForgetPasswordOtpVerify extends StatefulWidget {
  static String routeName = "./ForgetPasswordOtpVerify";
  const ForgetPasswordOtpVerify({super.key});

  @override
  State<ForgetPasswordOtpVerify> createState() =>
      _ForgetPasswordOtpVerifyState();
}

class _ForgetPasswordOtpVerifyState extends State<ForgetPasswordOtpVerify> {
  TextEditingController mobileTextEditingController = TextEditingController();

  bool resendText = true;
  TextEditingController pinController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: MediaQuery.of(context).size.width * 20 / 100,
      height: MediaQuery.of(context).size.width * 12 / 100,
      margin: const EdgeInsets.only(right: 5),
      textStyle: const TextStyle(
        fontSize: 23,
        fontFamily: AppFont.fontFamily,
        fontWeight: FontWeight.w600,
        color: AppColor.violetColor,
      ),
      decoration: BoxDecoration(
        // border: Border.all(color: AppColor.greyLightColor),
        color: AppColor.textfIllColor,
        borderRadius: BorderRadius.circular(8),
      ),
    );
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: AppColor.secondaryColor,
        statusBarIconBrightness: Brightness.dark));
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        backgroundColor: AppColor.secondaryColor,
        body: SafeArea(
          child: Container(
              width: MediaQuery.of(context).size.width * 100 / 100,
              color: AppColor.secondaryColor,
              child: Column(
                children: [
                  SizedBox(
                      height: MediaQuery.of(context).size.height * 1 / 100),
                  AppHeader(
                      text: "",
                      onPress: () {
                        Navigator.pop(context);
                      }),
                  SizedBox(
                      height: MediaQuery.of(context).size.height * 6 / 100),
                  Expanded(
                    flex: 1,
                    child: SingleChildScrollView(
                      physics: NeverScrollableScrollPhysics(),
                      child: Column(children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 3 / 100,
                        ),
                        Container(
                            alignment: Alignment.center,
                            child: Text(
                              AppLanguage.otpVerficationText[language],
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  color: AppColor.violetColor,
                                  fontSize: 30,
                                  fontFamily: AppFont.fontFamily,
                                  fontWeight: FontWeight.w800),
                            )),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 1 / 100,
                        ),
                        Container(
                            width: MediaQuery.of(context).size.width * 90 / 100,
                            alignment: Alignment.center,
                            child: Text(
                              AppLanguage.sentOtpText[language],
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  fontFamily: AppFont.fontFamily,
                                  color: AppColor.textinputBorderColor,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400),
                            )),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 90 / 100,
                          child: Column(
                            children: [
                              SizedBox(
                                height: MediaQuery.of(context).size.height *
                                    5 /
                                    100,
                              ),
                              Pinput(
                                controller: pinController,
                                defaultPinTheme: defaultPinTheme,
                                autofocus: true,
                                length: 6,
                                hapticFeedbackType:
                                    HapticFeedbackType.lightImpact,
                                onCompleted: (pin) {},
                                onChanged: (value) {},
                                cursor: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(bottom: 13),
                                      width: 15,
                                      height: 2,
                                      color: AppColor.violetColor,
                                    ),
                                  ],
                                ),
                                submittedPinTheme: defaultPinTheme.copyWith(
                                  decoration: defaultPinTheme.decoration!
                                      .copyWith(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          border: Border.all(
                                            color: AppColor.violetColor,
                                          )),
                                ),
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height *
                                    4 /
                                    100,
                              ),
                            ],
                          ),
                        ),
                        AppButton(
                            text: AppLanguage.verifyButtonText[language],
                            onPress: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const ResetPassword()),
                              );
                            }),
                        SizedBox(
                          height:
                              MediaQuery.of(context).size.height * 3.5 / 100,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 90 / 100,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                AppLanguage.didnotReciveOtpText[language],
                                style: const TextStyle(
                                    fontFamily: AppFont.fontFamily,
                                    color: AppColor.textinputBorderColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Text(
                                  AppLanguage.resendText[language],
                                  style: const TextStyle(
                                      fontFamily: AppFont.fontFamily,
                                      color: AppColor.redcolor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 2 / 100,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            AppLanguage.changePhoneNumberText[language],
                            style: const TextStyle(
                                fontFamily: AppFont.fontFamily,
                                decoration: TextDecoration.underline,
                                decorationColor: AppColor.primaryColor,
                                color: AppColor.primaryColor,
                                fontWeight: FontWeight.w700,
                                fontSize: 12),
                          ),
                        ),
                        SizedBox(
                          height:
                              MediaQuery.of(context).size.height * 26.5 / 100,
                        ),
                      ]),
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
