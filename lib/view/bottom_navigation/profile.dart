// ignore_for_file: sized_box_for_whitespace
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../utilities/app_button.dart';
import '../../utilities/app_color.dart';
import '../../utilities/app_constant.dart';
import '../../utilities/app_font.dart';
import '../../utilities/app_image.dart';
import '../../utilities/app_language.dart';
import '../../utilities/profile_custom_field.dart';

class Profile extends StatefulWidget {
  static String routeName = "./Profile";
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  TextEditingController nameTextEditingController = TextEditingController();
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController phoneTextEditingController = TextEditingController();
  TextEditingController cityTextEditingController = TextEditingController();
  TextEditingController genderTextEditingController = TextEditingController();
  TextEditingController occupationTextEditingController =
      TextEditingController();
  TextEditingController stateTextEditingController = TextEditingController();
  TextEditingController dobTextEditingController = TextEditingController();
  TextEditingController maritalTextEditingController = TextEditingController();
  TextEditingController educationTextEditingController =
      TextEditingController();
  TextEditingController monthlyIncomeTextEditingController =
      TextEditingController();
  // TextEditingController stateTextEditingController = TextEditingController();

  bool otherInformation = false;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: AppColor.secondaryColor,
        statusBarIconBrightness: Brightness.dark));
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: WillPopScope(
        onWillPop: () async {
          return false;
        },
        child: Scaffold(
            body: SafeArea(
                child: Container(
                    height: MediaQuery.of(context).size.height * 100 / 100,
                    width: MediaQuery.of(context).size.width * 100 / 100,
                    color: AppColor.secondaryColor,
                    child: Column(
                      children: [
                        SizedBox(
                            height:
                                MediaQuery.of(context).size.height * 1.5 / 100),
                        Text(
                          AppLanguage.profileText[language],
                          style: TextStyle(
                              color: AppColor.primaryColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              fontFamily: AppFont.fontFamily),
                        ),
                        SizedBox(
                            height:
                                MediaQuery.of(context).size.height * 2 / 100),
                        Expanded(
                          child: SingleChildScrollView(
                              child: Column(
                            children: [
                              SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      1 /
                                      100),
                              SizedBox(),
                              Container(
                                width: MediaQuery.of(context).size.width *
                                    80 /
                                    100,
                                alignment: Alignment.topRight,
                                child: Text(
                                  AppLanguage.editText[language],
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                      color: AppColor.themeColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: AppFont.fontFamily),
                                ),
                              ),
                              SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      1.4 /
                                      100),
                              Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                        85 /
                                        100,
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 12, horizontal: 5),
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                      color: AppColor.secondaryColor,
                                      // border: Border.all(
                                      //     color: Colors.white,
                                      //     width: 4.0,
                                      //     style: BorderStyle.solid),
                                      boxShadow: const [
                                        BoxShadow(
                                          color: AppColor.primaryColor,
                                          blurRadius: 3,
                                        ),
                                      ],
                                    ),
                                    child: Column(
                                      children: [
                                        SizedBox(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                5 /
                                                100),
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              90 /
                                              100,
                                          color: Colors.transparent,
                                          child: Text(
                                            AppLanguage.primaryInformationText[
                                                language],
                                            style: TextStyle(
                                                color: AppColor.themeColor,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                                fontFamily: AppFont.fontFamily),
                                          ),
                                        ),
                                        SizedBox(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.5 /
                                                100),
                                        //---------------------Name-----------
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              90 /
                                              100,
                                          child: Text(
                                            AppLanguage.fullNameText[language],
                                            style: TextStyle(
                                                color:
                                                    AppColor.hintTextinputColor,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                                fontFamily: AppFont.fontFamily),
                                          ),
                                        ),
                                        ProfileCustomField(
                                          readOnly: false,
                                          controller: nameTextEditingController,
                                          label: '',
                                          fillColorStatus: 0,
                                          keyboardtype: TextInputType.text,
                                          maxLength:
                                              AppConstant.firstnameLength,
                                          hintText: 'Lincoln Curtis',
                                        ),
                                        SizedBox(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                1.5 /
                                                100),
                                        //---------------------mobile number-----------
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              90 /
                                              100,
                                          child: Text(
                                            AppLanguage
                                                .contactNumberText[language],
                                            style: TextStyle(
                                                color:
                                                    AppColor.hintTextinputColor,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                                fontFamily: AppFont.fontFamily),
                                          ),
                                        ),
                                        ProfileCustomField(
                                          readOnly: false,
                                          controller:
                                              phoneTextEditingController,
                                          label: '',
                                          fillColorStatus: 0,
                                          keyboardtype: TextInputType.phone,
                                          maxLength:
                                              AppConstant.firstnameLength,
                                          hintText: 'Lincoln Curtis',
                                        ),
                                        SizedBox(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                1.5 /
                                                100),
                                        //---------------------email-----------
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              90 /
                                              100,
                                          child: Text(
                                            AppLanguage.emailIDText[language],
                                            style: TextStyle(
                                                color:
                                                    AppColor.hintTextinputColor,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                                fontFamily: AppFont.fontFamily),
                                          ),
                                        ),
                                        ProfileCustomField(
                                          readOnly: false,
                                          controller:
                                              emailTextEditingController,
                                          label: '',
                                          fillColorStatus: 0,
                                          keyboardtype:
                                              TextInputType.emailAddress,
                                          maxLength: AppConstant.emailMaxLength,
                                          hintText: 'lincoin@gmail.com',
                                        ),
                                        SizedBox(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                1.5 /
                                                100),

                                        //---------------------gender-----------
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              90 /
                                              100,
                                          child: Text(
                                            AppLanguage.genderText[language],
                                            style: TextStyle(
                                                color:
                                                    AppColor.hintTextinputColor,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                                fontFamily: AppFont.fontFamily),
                                          ),
                                        ),
                                        ProfileCustomField(
                                          readOnly: false,
                                          controller:
                                              genderTextEditingController,
                                          label: '',
                                          fillColorStatus: 0,
                                          keyboardtype: TextInputType.text,
                                          maxLength:
                                              AppConstant.firstnameLength,
                                          hintText: 'Female',
                                        ),
                                        SizedBox(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                1.5 /
                                                100),

                                        //---------------------Occupation-----------
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              90 /
                                              100,
                                          child: Text(
                                            AppLanguage
                                                .occupationText[language],
                                            style: TextStyle(
                                                color:
                                                    AppColor.hintTextinputColor,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                                fontFamily: AppFont.fontFamily),
                                          ),
                                        ),
                                        ProfileCustomField(
                                          readOnly: false,
                                          controller:
                                              occupationTextEditingController,
                                          label: '',
                                          fillColorStatus: 0,
                                          keyboardtype: TextInputType.text,
                                          maxLength:
                                              AppConstant.firstnameLength,
                                          hintText: 'Business',
                                        ),
                                        SizedBox(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                1.5 /
                                                100),
                                        //---------------------city----------
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              90 /
                                              100,
                                          child: Text(
                                            AppLanguage.stateText[language],
                                            style: TextStyle(
                                                color:
                                                    AppColor.hintTextinputColor,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                                fontFamily: AppFont.fontFamily),
                                          ),
                                        ),
                                        ProfileCustomField(
                                          readOnly: false,
                                          controller:
                                              stateTextEditingController,
                                          label: '',
                                          fillColorStatus: 0,
                                          keyboardtype: TextInputType.text,
                                          maxLength:
                                              AppConstant.firstnameLength,
                                          hintText: 'Madhya Pradesh',
                                        ),
                                        SizedBox(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                1.5 /
                                                100),
                                        //---------------------state-----------
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              90 /
                                              100,
                                          child: Text(
                                            AppLanguage.cityText[language],
                                            style: TextStyle(
                                                color:
                                                    AppColor.hintTextinputColor,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                                fontFamily: AppFont.fontFamily),
                                          ),
                                        ),
                                        ProfileCustomField(
                                          readOnly: false,
                                          controller: cityTextEditingController,
                                          label: '',
                                          fillColorStatus: 0,
                                          keyboardtype: TextInputType.text,
                                          maxLength:
                                              AppConstant.firstnameLength,
                                          hintText: 'Riverton',
                                        ),
                                        SizedBox(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                3 /
                                                100),

                                        //---------------------other Information-----------
                                        Column(
                                          children: [
                                            GestureDetector(
                                              onTap: () {
                                                setState(() {
                                                  // otherStatus = 1;
                                                  otherInformation =
                                                      !otherInformation;
                                                });
                                                print("otherStatus");
                                              },
                                              child: Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    90 /
                                                    100,
                                                color: Colors.transparent,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      AppLanguage
                                                              .otherInformationText[
                                                          language],
                                                      style: TextStyle(
                                                          color: AppColor
                                                              .themeColor,
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontFamily: AppFont
                                                              .fontFamily),
                                                    ),
                                                    Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width *
                                                              5 /
                                                              100,
                                                      height:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width *
                                                              5 /
                                                              100,
                                                      child: Image.asset(
                                                        otherInformation
                                                            ? AppImage
                                                                .opendropIcon
                                                            : AppImage
                                                                .drophideIcon,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            if (otherInformation)
                                              Column(
                                                children: [
                                                  SizedBox(
                                                      height:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height *
                                                              1.5 /
                                                              100),
                                                  //---------------------Date of Birth-----------
                                                  Container(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            90 /
                                                            100,
                                                    child: Text(
                                                      AppLanguage.dateOfBirth[
                                                          language],
                                                      style: TextStyle(
                                                          color: AppColor
                                                              .hintTextinputColor,
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontFamily: AppFont
                                                              .fontFamily),
                                                    ),
                                                  ),
                                                  ProfileCustomField(
                                                    readOnly: true,
                                                    controller:
                                                        dobTextEditingController,
                                                    label: '',
                                                    fillColorStatus: 0,
                                                    keyboardtype:
                                                        TextInputType.phone,
                                                    maxLength: AppConstant
                                                        .firstnameLength,
                                                    hintText: '04/01/2002',
                                                  ),
                                                  SizedBox(
                                                      height:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height *
                                                              1.5 /
                                                              100),
                                                  //---------------------Marital Status-----------
                                                  Container(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            90 /
                                                            100,
                                                    child: Text(
                                                      AppLanguage
                                                              .maritalStatusText[
                                                          language],
                                                      style: TextStyle(
                                                          color: AppColor
                                                              .hintTextinputColor,
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontFamily: AppFont
                                                              .fontFamily),
                                                    ),
                                                  ),
                                                  ProfileCustomField(
                                                    readOnly: false,
                                                    controller:
                                                        maritalTextEditingController,
                                                    label: '',
                                                    fillColorStatus: 0,
                                                    keyboardtype:
                                                        TextInputType.text,
                                                    maxLength: AppConstant
                                                        .firstnameLength,
                                                    hintText: 'Single',
                                                  ),
                                                  SizedBox(
                                                      height:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height *
                                                              1.5 /
                                                              100),

                                                  //---------------------Education-----------
                                                  Container(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            90 /
                                                            100,
                                                    child: Text(
                                                      AppLanguage.educationText[
                                                          language],
                                                      style: TextStyle(
                                                          color: AppColor
                                                              .hintTextinputColor,
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontFamily: AppFont
                                                              .fontFamily),
                                                    ),
                                                  ),
                                                  ProfileCustomField(
                                                    readOnly: false,
                                                    controller:
                                                        educationTextEditingController,
                                                    label: '',
                                                    fillColorStatus: 0,
                                                    keyboardtype:
                                                        TextInputType.text,
                                                    maxLength: AppConstant
                                                        .firstnameLength,
                                                    hintText: 'Post Graduate',
                                                  ),
                                                  SizedBox(
                                                      height:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height *
                                                              1.5 /
                                                              100),
                                                  //---------------------Marital Status-----------
                                                  Container(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            90 /
                                                            100,
                                                    child: Text(
                                                      AppLanguage
                                                              .monthlyIncomeText[
                                                          language],
                                                      style: TextStyle(
                                                          color: AppColor
                                                              .hintTextinputColor,
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontFamily: AppFont
                                                              .fontFamily),
                                                    ),
                                                  ),
                                                  ProfileCustomField(
                                                    readOnly: false,
                                                    controller:
                                                        monthlyIncomeTextEditingController,
                                                    label: '',
                                                    fillColorStatus: 0,
                                                    keyboardtype:
                                                        TextInputType.phone,
                                                    maxLength: AppConstant
                                                        .passwordLength,
                                                    hintText: '8000',
                                                  ),
                                                  SizedBox(
                                                      height:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height *
                                                              1.5 /
                                                              100),
                                                ],
                                              ),
                                            SizedBox(
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    6 /
                                                    100),
                                            AppButton(
                                                text: AppLanguage
                                                    .updateButtonText[language],
                                                onPress: () {
                                                  Navigator.pop(context);
                                                })
                                          ],
                                        ),
                                        SizedBox(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                1.5 /
                                                100),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    left: 0,
                                    top: MediaQuery.of(context).size.height *
                                        -5 /
                                        100,
                                    child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                21 /
                                                100,
                                        height:
                                            MediaQuery.of(context).size.width *
                                                21 /
                                                100,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(100),

                                          gradient: AppColor.themeGradient,
                                          // border: Border.all(
                                          //     color: AppColor.secondaryColor,
                                          //     width: 2),
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    17 /
                                                    100,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    17 /
                                                    100,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            100),
                                                    // color: AppColor.themeColor,
                                                    // gradient:
                                                    //     AppColor.themeGradient,
                                                    border: Border.all(
                                                        color: AppColor
                                                            .secondaryColor,
                                                        width: 1),
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                        "./assets/icons/profileImage1.jpg",
                                                      ),
                                                      fit: BoxFit.cover,
                                                    ))),
                                          ],
                                        )),
                                  ),
                                ],
                              ),
                              SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      3 /
                                      100),
                            ],
                          )),
                        )
                      ],
                    )))),
      ),
    );
  }
}
