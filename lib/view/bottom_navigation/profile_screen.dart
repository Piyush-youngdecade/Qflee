// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../utilities/app_color.dart';
import '../../utilities/app_constant.dart';
import '../../utilities/app_font.dart';
import '../../utilities/app_image.dart';
import '../../utilities/app_language.dart';
import '../authentication/deleteAccount_screen.dart';
import '../authentication/login_screen.dart';

class Profile extends StatefulWidget {
  static String routeName = "./Profile";
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
                        Container(
                          height: MediaQuery.of(context).size.height * 23 / 100,
                          child: Stack(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width *
                                    100 /
                                    100,
                                height: MediaQuery.of(context).size.width *
                                    30 /
                                    100,
                                // color: AppColor.borderColor,
                                child: Image.asset(
                                  AppImage.profileScreenIcon,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const Positioned(
                                  top: 25,
                                  left: 18,
                                  child: Text(
                                    "Profile",
                                    style: TextStyle(
                                        color: AppColor.secondaryColor,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: AppFont.fontFamily),
                                  )),
                              Positioned(
                                top: MediaQuery.of(context).size.height *
                                    9 /
                                    100,
                                right: MediaQuery.of(context).size.width *
                                    38 /
                                    100,
                                child: Container(
                                  //margin: EdgeInsets.only(bottom: 100),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    border: Border.all(
                                        width: 3, color: AppColor.themeColor),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(100),
                                    child: Container(
                                      height:
                                          MediaQuery.of(context).size.width *
                                              22 /
                                              100,
                                      width: MediaQuery.of(context).size.width *
                                          22 /
                                          100,
                                      child: Image.asset(
                                        "./assets/icons/userProfile1.jpg",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: SingleChildScrollView(child: Container()),
                        )
                      ],
                    )))),
      ),
    );
  }

  //--------------------delete account bottom sheet--------------
  void deleteAccountPopUp(BuildContext context) {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        backgroundColor: AppColor.primaryColor.withOpacity(0.1),
        builder: (context) {
          return StatefulBuilder(builder: (context, setState) {
            return GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                width: MediaQuery.of(context).size.width * 100 / 100,
                height: MediaQuery.of(context).size.height * 100 / 100,
                color: AppColor.primaryColor.withOpacity(0.1),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 80 / 100,
                      //    height: MediaQuery.of(context).size.height * 36 / 100,
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 15),
                      decoration: BoxDecoration(
                          color: AppColor.secondaryColor,
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          Center(
                            child: SizedBox(
                              width:
                                  MediaQuery.of(context).size.width * 15 / 100,
                              height:
                                  MediaQuery.of(context).size.width * 15 / 100,
                              child: Image.asset(
                                AppImage.deleteAccountRedIcon,
                                // fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(
                            height:
                                MediaQuery.of(context).size.height * 3 / 100,
                          ),
                          Text(
                            AppLanguage.confirmDeleteText[language],
                            style: const TextStyle(
                                color: AppColor.primaryColor,
                                fontFamily: AppFont.fontFamily,
                                fontWeight: FontWeight.w600,
                                fontSize: 20),
                          ),
                          SizedBox(
                            height:
                                MediaQuery.of(context).size.height * .5 / 100,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 65 / 100,
                            child: Text(
                              AppLanguage.sureDeleteText[language],
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  color: AppColor.textColor,
                                  fontFamily: AppFont.fontFamily,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16),
                            ),
                          ),
                          SizedBox(
                            height:
                                MediaQuery.of(context).size.height * 3 / 100,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  width: MediaQuery.of(context).size.width *
                                      33 /
                                      100,
                                  height: MediaQuery.of(context).size.height *
                                      5 /
                                      100,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: AppColor.lightBlackColor),
                                      borderRadius: BorderRadius.circular(8)),
                                  child: Text(
                                    AppLanguage.cancelText[language],
                                    style: const TextStyle(
                                        color: AppColor.primaryColor,
                                        fontFamily: AppFont.fontFamily,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width:
                                    MediaQuery.of(context).size.width * 4 / 100,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const DeleteAccount()));
                                },
                                child: Container(
                                  width: MediaQuery.of(context).size.width *
                                      33 /
                                      100,
                                  height: MediaQuery.of(context).size.height *
                                      5 /
                                      100,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: AppColor.blueColor,
                                      borderRadius: BorderRadius.circular(8)),
                                  child: Text(
                                    AppLanguage.deleteText[language],
                                    style: const TextStyle(
                                        color: AppColor.secondaryColor,
                                        fontFamily: AppFont.fontFamily,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height:
                                MediaQuery.of(context).size.height * .5 / 100,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          });
        });
  }

  //==================log out bottom sheet================

  void logOutPopUp(BuildContext context) {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        backgroundColor: AppColor.primaryColor.withOpacity(0.1),
        builder: (context) {
          return StatefulBuilder(builder: (context, setState) {
            return GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                width: MediaQuery.of(context).size.width * 100 / 100,
                height: MediaQuery.of(context).size.height * 100 / 100,
                color: AppColor.primaryColor.withOpacity(0.1),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 70 / 100,
                      decoration: BoxDecoration(
                          color: AppColor.secondaryColor,
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        children: [
                          SizedBox(
                            height:
                                MediaQuery.of(context).size.height * 2 / 100,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 60 / 100,
                            child: Text(
                              AppLanguage.sureLogoutText[language],
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  color: AppColor.lightTextColor,
                                  fontFamily: AppFont.fontFamily,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18),
                            ),
                          ),
                          SizedBox(
                            height:
                                MediaQuery.of(context).size.height * 1 / 100,
                          ),
                          Container(
                            height:
                                MediaQuery.of(context).size.height * .1 / 100,
                            width: MediaQuery.of(context).size.width * 70 / 100,
                            color: AppColor.lightBorderColor,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  width: MediaQuery.of(context).size.width *
                                      34 /
                                      100,
                                  alignment: Alignment.center,
                                  child: Text(
                                    AppLanguage.cancelText[language],
                                    style: const TextStyle(
                                        color: AppColor.primaryColor,
                                        fontFamily: AppFont.fontFamily,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16),
                                  ),
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width *
                                    .2 /
                                    100,
                                height: MediaQuery.of(context).size.width *
                                    17 /
                                    100,
                                color: AppColor.lightBorderColor,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const Login()));
                                },
                                child: Container(
                                  width: MediaQuery.of(context).size.width *
                                      34 /
                                      100,
                                  alignment: Alignment.center,
                                  child: Text(
                                    AppLanguage.logOutText[language],
                                    style: const TextStyle(
                                        color: AppColor.primaryColor,
                                        fontFamily: AppFont.fontFamily,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          });
        });
  }
}

class PersonalSettingRow extends StatelessWidget {
  const PersonalSettingRow({
    Key? key,
    required this.title,
    required this.leadingIcon,
    required this.onPress,
    this.language,
  }) : super(key: key);

  final String title;
  final String leadingIcon;
  final Function onPress;
  final String? language;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          onPress();
        },
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 6),
              width: MediaQuery.of(context).size.width * 80 / 100,
              height: MediaQuery.of(context).size.height * 3 / 100,
              child: Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 6 / 100,
                    height: MediaQuery.of(context).size.width * 6 / 100,
                    child: Image.asset(leadingIcon),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 2 / 100,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 55 / 100,
                    child: Text(
                      title,
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        color: AppColor.primaryColor,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Text(
                    language ?? "",
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      color: AppColor.themeColor,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
