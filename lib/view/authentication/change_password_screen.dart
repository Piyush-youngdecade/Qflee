import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../utilities/app_button.dart';
import '../../utilities/app_color.dart';
import '../../utilities/app_constant.dart';
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
                      height: MediaQuery.of(context).size.height * 3 / 100,
                    ),
                    CustomPasswordTextFormField(
                      controller: currentPasswordTextEditingController,
                      fillColorStatus: 0,
                      hintText: AppLanguage.currentPasswordText[language],
                      maxLength: AppConstant.passwordLength,
                      readOnly: false,
                      keyboardtype: TextInputType.text,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 2 / 100,
                    ),
                    CustomPasswordTextFormField(
                      controller: newPasswordTextEditingController,
                      fillColorStatus: 0,
                      hintText: AppLanguage.newPasswordText[language],
                      maxLength: AppConstant.passwordLength,
                      readOnly: false,
                      keyboardtype: TextInputType.text,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 2 / 100,
                    ),
                    CustomPasswordTextFormField(
                      controller: confirmPasswordTextEditingController,
                      fillColorStatus: 0,
                      hintText: AppLanguage.confirmNewPasswordText[language],
                      maxLength: AppConstant.passwordLength,
                      readOnly: false,
                      keyboardtype: TextInputType.text,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 6 / 100,
                    ),
                    AppButton(
                        text: AppLanguage.updateButtonText[language],
                        onPress: () {
                          Navigator.pop(context);
                        })
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
