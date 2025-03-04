import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../utilities/app_button.dart';
import '../../utilities/app_color.dart';
import '../../utilities/app_constant.dart';
import '../../utilities/app_font.dart';
import '../../utilities/app_header.dart';
import '../../utilities/app_language.dart';
import '../../utilities/custom_password.dart';
import 'login_screen.dart';

class ResetPassword extends StatefulWidget {
  static String routeName = "./ResetPassword";
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  TextEditingController passwordTextEditingController = TextEditingController();
  TextEditingController confirmpasswordTextEditingController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: AppColor.secondaryColor,
        statusBarIconBrightness: Brightness.dark));
    return WillPopScope(
      onWillPop: () {
        sureGoBackBottomSheet(context);
        return Future.value(false);
      },
      child: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
            body: SafeArea(
          child: Container(
              height: MediaQuery.of(context).size.height * 100 / 100,
              width: MediaQuery.of(context).size.width * 100 / 100,
              color: AppColor.secondaryColor,
              child: Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: SingleChildScrollView(
                      physics: NeverScrollableScrollPhysics(),
                      child: Column(
                        children: [
                          SizedBox(
                            height:
                                MediaQuery.of(context).size.height * 2 / 100,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 90 / 100,
                            child: Row(
                              children: [
                                AppHeader(
                                    text:
                                        AppLanguage.resetPasswordText[language],
                                    onPress: () {
                                      sureGoBackBottomSheet(context);
                                    }),
                              ],
                            ),
                          ),
                          SizedBox(
                            height:
                                MediaQuery.of(context).size.height * 2 / 100,
                          ),
                          Column(
                            children: [
                              // -----------Password Text Input -------------
                              CustomPasswordTextFormField(
                                  readOnly: false,
                                  fillColorStatus: 0,
                                  controller: passwordTextEditingController,
                                  hintText:
                                      AppLanguage.newPasswordText[language],
                                  keyboardtype: TextInputType.visiblePassword,
                                  maxLength: AppConstant.passwordLength),

                              SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      1.5 /
                                      100),

                              // ----------- Confirm Password Text Input -------------
                              CustomPasswordTextFormField(
                                  readOnly: false,
                                  fillColorStatus: 0,
                                  controller:
                                      confirmpasswordTextEditingController,
                                  hintText: AppLanguage
                                      .confirmPasswordInputText[language],
                                  keyboardtype: TextInputType.visiblePassword,
                                  maxLength: AppConstant.passwordLength),

                              SizedBox(
                                height: MediaQuery.of(context).size.height *
                                    6 /
                                    100,
                              ),

                              AppButton(
                                text: AppLanguage.updateButtonText[language],
                                onPress: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Login()),
                                  );
                                },
                              )
                            ],
                          ),
                          SizedBox(
                            height:
                                MediaQuery.of(context).size.height * 50 / 100,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )),
        )),
      ),
    );
  }

  void sureGoBackBottomSheet(BuildContext context) {
    Widget cancelButton = TextButton(
      child: Text(
        AppLanguage.noText[language],
        style: TextStyle(
            fontFamily: AppFont.fontFamily,
            color: AppColor.redcolor,
            fontSize: 14,
            fontWeight: FontWeight.w600),
      ),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );
    Widget continueButton = TextButton(
      child: Text(
        AppLanguage.yesText[language],
        style: TextStyle(
            fontFamily: AppFont.fontFamily,
            color: AppColor.primaryColor,
            fontSize: 14,
            fontWeight: FontWeight.w600),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Login(),
          ),
        );
      },
    );

    AlertDialog alert = AlertDialog(
      title: Text(
        AppLanguage.backText[language],
        style: TextStyle(
            fontFamily: AppFont.fontFamily,
            color: AppColor.primaryColor,
            fontSize: 20,
            fontWeight: FontWeight.w500),
      ),
      content: Text(
        AppLanguage.sureGoBackText[language],
        style: TextStyle(
            fontFamily: AppFont.fontFamily,
            color: AppColor.primaryColor,
            fontSize: 16,
            fontWeight: FontWeight.w400),
      ),
      actions: [
        cancelButton,
        continueButton,
      ],
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
