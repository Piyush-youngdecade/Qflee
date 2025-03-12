import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import '../../utilities/app_button.dart';
import '../../utilities/app_color.dart';
import '../../utilities/app_constant.dart';
import '../../utilities/app_font.dart';
import '../../utilities/app_header.dart';
import '../../utilities/app_image.dart';
import '../../utilities/app_language.dart';
import '../../utilities/custom_input.dart';

class ContactUs extends StatefulWidget {
  static String routeName = "./ContactUs";
  const ContactUs({super.key});

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController nameTextEditingController = TextEditingController();
  TextEditingController messageTextEditingController = TextEditingController();
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
                  width: MediaQuery.of(context).size.width * 100 / 100,
                  height: MediaQuery.of(context).size.height * 100 / 100,
                  color: AppColor.secondaryColor,
                  child: Column(children: [
                    AppHeader(
                        text: AppLanguage.contactUsText[language],
                        onPress: () {
                          Navigator.pop(context);
                        }),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 2 / 100,
                    ),
                    Expanded(
                      flex: 1,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            SizedBox(
                                height: MediaQuery.of(context).size.height *
                                    2 /
                                    100),
                            Container(
                              width:
                                  MediaQuery.of(context).size.width * 90 / 100,
                              child: Text(
                                AppLanguage.nameInputText[language],
                                style: TextStyle(
                                  color: AppColor.primaryColor,
                                  fontFamily: AppFont.fontFamily,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                            SizedBox(
                                height: MediaQuery.of(context).size.height *
                                    1 /
                                    100),
                            // -----------first Number -------------
                            CustomTextFormField(
                              controller: nameTextEditingController,
                              image: AppImage.userNameIcon,
                              hintText: AppLanguage.enterNameText[language],
                              keyboardtype: TextInputType.name,
                              maxLength: AppConstant.firstnameLength,
                              fillColorStatus: 0,
                              readOnly: false,
                            ),

                            SizedBox(
                                height: MediaQuery.of(context).size.height *
                                    1.5 /
                                    100),
                            Container(
                              width:
                                  MediaQuery.of(context).size.width * 90 / 100,
                              child: Text(
                                AppLanguage.emailInputText[language],
                                style: TextStyle(
                                  color: AppColor.primaryColor,
                                  fontFamily: AppFont.fontFamily,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                            SizedBox(
                                height: MediaQuery.of(context).size.height *
                                    1 /
                                    100),
                            // ----------- email Input -------------
                            CustomTextFormField(
                              controller: emailTextEditingController,
                              image: AppImage.emailIcon,
                              hintText: AppLanguage.enterEmailText[language],
                              keyboardtype: TextInputType.name,
                              maxLength: AppConstant.firstnameLength,
                              fillColorStatus: 0,
                              readOnly: false,
                            ),
                            SizedBox(
                                height: MediaQuery.of(context).size.height *
                                    1.5 /
                                    100),
                            Container(
                              width:
                                  MediaQuery.of(context).size.width * 90 / 100,
                              child: Text(
                                AppLanguage.descriptionText[language],
                                style: TextStyle(
                                  color: AppColor.primaryColor,
                                  fontFamily: AppFont.fontFamily,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                            SizedBox(
                                height: MediaQuery.of(context).size.height *
                                    1 /
                                    100),

                            // ----------- Message Input -------------
                            Container(
                              width:
                                  MediaQuery.of(context).size.width * 90 / 100,
                              child: TextFormField(
                                style: TextStyle(
                                    height: 1, color: AppColor.textColor),
                                keyboardType: TextInputType.multiline,
                                controller: messageTextEditingController,
                                maxLines: 7,
                                maxLength: AppConstant.describeLength,
                                decoration: InputDecoration(
                                    prefixIcon: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              5 /
                                              100,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              5 /
                                              100,
                                          child: Image.asset(
                                            AppImage.editIcon,
                                          ),
                                        ),
                                        SizedBox(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                11 /
                                                100),
                                      ],
                                    ),
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
                                        vertical: 20, horizontal: 15),
                                    fillColor: AppColor.secondaryColor,
                                    filled: true,
                                    counterText: '',
                                    hintText:
                                        AppLanguage.descriptionText[language],
                                    hintStyle: AppConstant.textFilledStyle),
                              ),
                            ),

                            SizedBox(
                                height: MediaQuery.of(context).size.height *
                                    8 /
                                    100),
                            AppButton(
                                text: AppLanguage.submitButtonText[language],
                                onPress: () {
                                  Navigator.pop(
                                    context,
                                  );
                                }),
                            SizedBox(
                                height: MediaQuery.of(context).size.height *
                                    5 /
                                    100),
                          ],
                        ),
                      ),
                    )
                  ])))),
    );
  }
}
