import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../utilities/app_button.dart';
import '../../utilities/app_color.dart';
import '../../utilities/app_constant.dart';
import '../../utilities/app_header.dart';
import '../../utilities/app_image.dart';
import '../../utilities/app_language.dart';
import '../../utilities/custom_input.dart';
import 'forgetPassword_otpverify_screen.dart';

class ForgotPassword extends StatefulWidget {
  static String routeName = './ForgotPassword';
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  TextEditingController mobileTextEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: AppColor.secondaryColor,
        statusBarIconBrightness: Brightness.dark));
    return GestureDetector(
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
                      child: Column(
                        children: [
                          SizedBox(
                            height:
                                MediaQuery.of(context).size.height * 1 / 100,
                          ),
                          AppHeader(
                              text: AppLanguage
                                  .onTheWayText[language],
                              onPress: () {
                                Navigator.pop(context);
                              }),

                          SizedBox(
                            height:
                                MediaQuery.of(context).size.height * 3 / 100,
                          ),

                          // --------------Mobile Number -------------
                          CustomTextFormField(
                              readOnly: false,
                              fillColorStatus: 0,
                              controller: mobileTextEditingController,
                              hintText:
                                  AppLanguage.mobileNumberText[language],
                              image: AppImage.upArrowIcon,
                              keyboardtype: TextInputType.number,
                              maxLength: AppConstant.fullnameLength),

                          SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 4 / 100),

                          AppButton(
                              text: AppLanguage.sendButtonText[language],
                              onPress: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const ForgetPasswordOtpVerify()),
                                );
                              }),
                        ],
                      ),
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
