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
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  TextEditingController currentPasswordTextEditingController = TextEditingController();
  TextEditingController newPasswordTextEditingController = TextEditingController();
  TextEditingController confirmPasswordTextEditingController = TextEditingController();

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
      statusBarIconBrightness: Brightness.dark,
    ));
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: AppColor.secondaryColor,
        body: SafeArea(
          child: Container(
            width: double.infinity,
            height: double.infinity,
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
                        SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                        _buildPasswordField(
                          label: AppLanguage.currentPasswordText[language],
                          hintText: AppLanguage.enterCurrentPasswordText[language],
                          controller: currentPasswordTextEditingController,
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                        _buildPasswordField(
                          label: AppLanguage.newPasswordText[language],
                          hintText: AppLanguage.enterNewPasswordText[language],
                          controller: newPasswordTextEditingController,
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                        _buildPasswordField(
                          label: AppLanguage.confirmNewPasswordText[language],
                          hintText: AppLanguage.enterConfirmNewPasswordText[language],
                          controller: confirmPasswordTextEditingController,
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height * 0.06),
                        _buildGuidelines(),
                        SizedBox(height: MediaQuery.of(context).size.height * 0.06),
                        AppButton(
                          text: AppLanguage.saveButtonText[language],
                          onPress: () {
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildPasswordField({
    required String label,
    required String hintText,
    required TextEditingController controller,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.9,
          child: Text(
            label,
            style: TextStyle(
              color: AppColor.primaryColor,
              fontFamily: AppFont.fontFamily,
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.01),
        CustomPasswordTextFormField(
          controller: controller,
          fillColorStatus: 0,
          hintText: hintText,
          maxLength: AppConstant.passwordLength,
          readOnly: false,
          keyboardtype: TextInputType.text,
        ),
      ],
    );
  }

  Widget _buildGuidelines() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.9,
          child: Text(
            AppLanguage.passwordGuidelinesText[language],
            style: TextStyle(
              color: AppColor.primaryColor,
              fontFamily: AppFont.fontFamily,
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.01),
        Wrap(
          runSpacing: 12,
          spacing: 15.0,
          alignment: WrapAlignment.start,
          children: guidelinesList.map((guideline) {
            return Container(
              width: MediaQuery.of(context).size.width * 0.9,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.015,
                    height: MediaQuery.of(context).size.width * 0.015,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: AppColor.silverColor,
                    ),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.01),
                  Expanded(
                    child: Text(
                      guideline['guidelines'].toString(),
                      style: TextStyle(
                        color: AppColor.silverColor,
                        fontFamily: AppFont.fontFamily,
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}