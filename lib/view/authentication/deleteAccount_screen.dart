import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../utilities/app_button.dart';
import '../../utilities/app_color.dart';
import '../../utilities/app_constant.dart';
import '../../utilities/app_font.dart';
import '../../utilities/app_header.dart';
import '../../utilities/app_language.dart';
import 'login_screen.dart';

class DeleteAccount extends StatefulWidget {
  static String routeName = "./DeleteAccount";
  const DeleteAccount({super.key});

  @override
  State<DeleteAccount> createState() => _DeleteAccountState();
}

class _DeleteAccountState extends State<DeleteAccount> {
  TextEditingController deleteTextEditingController = TextEditingController();
  int fillColorStatus = 0;

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
                    height: MediaQuery.of(context).size.height * 100 / 100,
                    width: MediaQuery.of(context).size.width * 100 / 100,
                    color: AppColor.secondaryColor,
                    child: Column(children: [
                      AppHeader(
                          text: AppLanguage.deleteAccountText[language],
                          onPress: () {
                            Navigator.pop(context);
                          }),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 3 / 100),
                      Container(
                        width: MediaQuery.of(context).size.width * 90 / 100,
                        child: Text(AppLanguage.deleteReasonText[language],
                            style: const TextStyle(
                              fontWeight: FontWeight.w400,
                              fontFamily: AppFont.fontFamily,
                              color: AppColor.primaryColor,
                              fontSize: 12,
                            )),
                      ),

                      SizedBox(
                          height: MediaQuery.of(context).size.height * 3 / 100),
                      //----------- Message Input -------------
                      Container(
                        width: MediaQuery.of(context).size.width * 90 / 100,
                        child: TextFormField(
                          style:
                              TextStyle(height: 1, color: AppColor.textColor),
                          keyboardType: TextInputType.multiline,
                          controller: deleteTextEditingController,
                          maxLines: 7,
                          maxLength: AppConstant.describeLength,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: AppColor.textinputBorderColor,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(11)),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: AppColor.textinputBorderColor,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(11)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: AppColor.textinputBorderColor,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(11)),
                              ),
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 18, horizontal: 15),
                              fillColor: AppColor.secondaryColor,
                              filled: true,
                              counterText: '',
                              hintText: AppLanguage.reasonText[language],
                              hintStyle: AppConstant.textFilledStyle),
                        ),
                      ),

                      SizedBox(
                        height: MediaQuery.of(context).size.height * 4 / 100,
                      ),
                      AppButton(
                        text: AppLanguage.submitButtonText[language],
                        onPress: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Login()),
                          );
                        },
                      ),
                    ])))));
  }
}
