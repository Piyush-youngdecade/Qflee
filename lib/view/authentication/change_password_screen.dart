import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../utilities/app_button.dart';
import '../../utilities/app_color.dart';
import '../../utilities/app_constant.dart';
import '../../utilities/app_font.dart';
import '../../utilities/app_header.dart';
import '../../utilities/app_language.dart';
import '../../utilities/custom_password.dart';

class ChangePassword extends StatefulWidget {
  static String routeName = './ChangePassword';
  const ChangePassword({Key? key}) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  TextEditingController currentPasswordTextEditingController =
      TextEditingController();

  TextEditingController newPasswordTextEditingController =
      TextEditingController();

  TextEditingController confirmPasswordTextEditingController =
      TextEditingController();

  bool isPasswordVisible = true;
  bool isNewPasswordVisible = true;
  bool isConfirmPasswordVisible = true;
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  List<dynamic> guidelinesList = <dynamic>[
    {
      "id": 1,
      "guidelines": AppLanguage.miniMumLenghtText[language],
    },
    {
      "id": 2,
      "guidelines": AppLanguage.upperAndLowerText[language],
    },
    {
      "id": 3,
      "guidelines": AppLanguage.numberDigitext[language],
    },
    {
      "id": 4,
      "guidelines": AppLanguage.specialCharactorText[language],
    },
  ];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: AppColor.secondaryColor,
        statusBarIconBrightness: Brightness.dark));
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: AppColor.secondaryColor,
        body: SafeArea(
            child: Container(
          width: MediaQuery.of(context).size.width * 100 / 100,
          height: MediaQuery.of(context).size.height * 100 / 100,
          color: AppColor.secondaryColor,
          child: Column(
            children: [
              AppHeader(
                text: AppLanguage.changePasswordText[language],
                onPress: () {
                  Navigator.pop(context);
                },
              ),
              Expanded(
                  child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 4 / 100,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 90 / 100,
                      child: Text(
                        AppLanguage.currentPasswordText[language],
                        style: TextStyle(
                            color: AppColor.primaryColor,
                            fontFamily: AppFont.fontFamily,
                            fontWeight: FontWeight.w500,
                            fontSize: 14),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 1 / 100,
                    ),
                    CustomPasswordTextFormField(
                      controller: currentPasswordTextEditingController,
                      fillColorStatus: 0,
                      hintText: AppLanguage.enterCurrentPasswordText[language],
                      maxLength: AppConstant.passwordLength,
                      readOnly: false,
                      keyboardtype: TextInputType.text,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 2 / 100,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 90 / 100,
                      child: Text(
                        AppLanguage.newPasswordText[language],
                        style: TextStyle(
                            color: AppColor.primaryColor,
                            fontFamily: AppFont.fontFamily,
                            fontWeight: FontWeight.w500,
                            fontSize: 14),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 1 / 100,
                    ),
                    CustomPasswordTextFormField(
                      controller: newPasswordTextEditingController,
                      fillColorStatus: 0,
                      hintText: AppLanguage.enterNewPasswordText[language],
                      maxLength: AppConstant.passwordLength,
                      readOnly: false,
                      keyboardtype: TextInputType.text,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 2 / 100,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 90 / 100,
                      child: Text(
                        AppLanguage.confirmNewPasswordText[language],
                        style: TextStyle(
                            color: AppColor.primaryColor,
                            fontFamily: AppFont.fontFamily,
                            fontWeight: FontWeight.w500,
                            fontSize: 14),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 1 / 100,
                    ),
                    CustomPasswordTextFormField(
                      controller: confirmPasswordTextEditingController,
                      fillColorStatus: 0,
                      hintText:
                          AppLanguage.enterConfirmNewPasswordText[language],
                      maxLength: AppConstant.passwordLength,
                      readOnly: false,
                      keyboardtype: TextInputType.text,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 4 / 100,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 90 / 100,
                      child: Text(
                        AppLanguage.passwordGuidelinesText[language],
                        style: TextStyle(
                            color: AppColor.primaryColor,
                            fontFamily: AppFont.fontFamily,
                            fontWeight: FontWeight.w500,
                            fontSize: 14),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 1 / 100,
                    ),
                    Wrap(
                        runSpacing: 12,
                        spacing: 15.0,
                        alignment: WrapAlignment.center,
                        children: List.generate(guidelinesList.length, (index) {
                          return Column(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width *
                                    85 /
                                    100,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          1.5 /
                                          100,
                                      height:
                                          MediaQuery.of(context).size.width *
                                              1.5 /
                                              100,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(100),
                                          color: AppColor.silverColor),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          1 /
                                          100,
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          82 /
                                          100,
                                      child: Text(
                                        guidelinesList[index]['guidelines']
                                            .toString(),
                                        style: TextStyle(
                                            color: AppColor.silverColor,
                                            fontFamily: AppFont.fontFamily,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          );
                        })),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 6 / 100,
                    ),
                    AppButton(
                        text: AppLanguage.saveButtonText[language],
                        onPress: () {
                          Navigator.pop(context);
                        }),
                  ],
                ),
              ))
            ],
          ),
        )),
      ),
    );
  }
}
