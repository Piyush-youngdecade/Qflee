
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../utilities/app_button.dart';
import '../../utilities/app_color.dart';
import '../../utilities/app_constant.dart';
import '../../utilities/app_font.dart';
import '../../utilities/app_image.dart';
import '../../utilities/app_language.dart';
import '../../utilities/custom_input.dart';
import '../../utilities/custom_password.dart';
import '../content_screen/content_screen.dart';
import 'login_screen.dart';
import 'otp_verify_screen.dart';

class Signup extends StatefulWidget {
  static String routeName = "./Signup";
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController firstnameTextEditingController =
      TextEditingController();
  TextEditingController lastnameTextEditingController = TextEditingController();
  TextEditingController citynameTextEditingController = TextEditingController();
  TextEditingController dobTextEditingController = TextEditingController();

  TextEditingController mobileTextEditingController = TextEditingController();
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();
  TextEditingController confirmpasswordTextEditingController =
      TextEditingController();
  TextEditingController searchTextEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
          height: MediaQuery.of(context).size.height * 100 / 100,
          child: Column(
            children: [
              Expanded(
                  flex: 1,
                  child: SingleChildScrollView(
                      child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 5 / 100,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 90 / 100,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              AppLanguage.createAccountText[language],
                              style: TextStyle(
                                  color: AppColor.primaryColor,
                                  fontSize: 36,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: AppFont.fontFamily),
                            ),
                            Text(
                              AppLanguage
                                  .createAccountDescriptionText[language],
                              style: TextStyle(
                                  color: AppColor.silverColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: AppFont.fontFamily),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 2 / 100,
                      ),
                      CustomTextFormField(
                        controller: firstnameTextEditingController,
                        image: AppImage.userNameIcon,
                        hintText: AppLanguage.firstNameInputText[language],
                        keyboardtype: TextInputType.text,
                        maxLength: AppConstant.firstnameLength,
                        fillColorStatus: 0,
                        readOnly: false,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 2 / 100,
                      ),
                      CustomTextFormField(
                        controller: lastnameTextEditingController,
                        image: AppImage.userNameIcon,
                        hintText: AppLanguage.lastNameInputText[language],
                        keyboardtype: TextInputType.text,
                        maxLength: AppConstant.lastnameLength,
                        fillColorStatus: 0,
                        readOnly: false,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 2 / 100,
                      ),
                      CustomTextFormField(
                        controller: mobileTextEditingController,
                        image: AppImage.phoneIcon,
                        hintText: AppLanguage.mobileNumberText[language],
                        keyboardtype: TextInputType.phone,
                        maxLength: AppConstant.mobileLength,
                        fillColorStatus: 0,
                        readOnly: false,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 2 / 100,
                      ),
                      CustomTextFormField(
                        controller: emailTextEditingController,
                        image: AppImage.emailIcon,
                        hintText: AppLanguage.emailInputText[language],
                        keyboardtype: TextInputType.text,
                        maxLength: AppConstant.emailMaxLength,
                        fillColorStatus: 0,
                        readOnly: false,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 2 / 100,
                      ),
                      CustomPasswordTextFormField(
                        controller: passwordTextEditingController,
                        hintText: AppLanguage.passwordText[language],
                        keyboardtype: TextInputType.text,
                        maxLength: AppConstant.passwordLength,
                        fillColorStatus: 0,
                        readOnly: false,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 2 / 100,
                      ),
                      CustomPasswordTextFormField(
                        controller: confirmpasswordTextEditingController,
                        hintText:
                            AppLanguage.confirmPasswordInputText[language],
                        keyboardtype: TextInputType.text,
                        maxLength: AppConstant.passwordLength,
                        fillColorStatus: 0,
                        readOnly: false,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 5 / 100,
                      ),
                      AppButton(
                          text: AppLanguage.signUpText[language],
                          onPress: () { Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                OTP()));}),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 2 / 100,
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width * 85 / 100,
                          child: Text.rich(
                              textAlign: TextAlign.center,
                              TextSpan(children: [
                                TextSpan(
                                  text:
                                      "  ${AppLanguage.signUpText[language]} ",
                                  style: const TextStyle(
                                      color: AppColor.primaryColor,
                                      fontFamily: AppFont.fontFamily,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14),
                                ),
                                TextSpan(
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      Navigator.pushNamed(
                                          context, Content.routeName,
                                          arguments: ContentClass(
                                              header: AppLanguage
                                                      .termsAndConditionText[
                                                  language],
                                              contenttype: ""));
                                    },
                                  text: AppLanguage
                                      .termsAndConditionText[language],
                                  style: const TextStyle(
                                      decoration: TextDecoration.underline,
                                      color: AppColor.primaryColor,
                                      fontFamily: AppFont.fontFamily,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14),
                                ),
                                TextSpan(
                                  text: " ${AppLanguage.andText[language]} ",
                                  style: const TextStyle(
                                      color: AppColor.primaryColor,
                                      fontFamily: AppFont.fontFamily,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14),
                                ),
                                TextSpan(
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      Navigator.pushNamed(
                                          context, Content.routeName,
                                          arguments: ContentClass(
                                              header: AppLanguage
                                                  .privacyPolicyText[language],
                                              contenttype: ""));
                                    },
                                  text: AppLanguage.privacyPolicyText[language],
                                  style: const TextStyle(
                                      decoration: TextDecoration.underline,
                                      color: AppColor.primaryColor,
                                      fontFamily: AppFont.fontFamily,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14),
                                )
                              ]))),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 3 / 100),
                      Container(
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width * 80 / 100,
                        child: Row(
                          children: [
                            Text(
                              AppLanguage.alreadyAccountText[language] + " ",
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
                                        builder: (context) => Login()));
                              },
                              child: Text(
                                AppLanguage.signInText[language],
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
                    ],
                  )))
            ],
          ),
        )),
      ),
    );
  }
}
