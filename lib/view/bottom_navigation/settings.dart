import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../utilities/app_color.dart';
import '../../utilities/app_constant.dart';
import '../../utilities/app_font.dart';
import '../../utilities/app_image.dart';
import '../../utilities/app_language.dart';
import '../authentication/change_password_screen.dart';
import '../authentication/contactUs_screen.dart';
import '../authentication/deleteAccount_screen.dart';
import '../authentication/login_screen.dart';
import '../content_screen/content_screen.dart';
import '../other_screen/faq_screen.dart';
import '../other_screen/reward_points.dart';
import '../other_screen/wallet_screen.dart';
import 'my_qflee.dart';

class Settings extends StatefulWidget {
  static String routeName = './Settings';
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: AppColor.secondaryColor,
        statusBarIconBrightness: Brightness.dark));
    return Scaffold(
      body: SafeArea(
          child: Container(
        color: AppColor.secondaryColor,
        width: MediaQuery.of(context).size.width * 100 / 100,
        height: MediaQuery.of(context).size.height * 100 / 100,
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 2 / 100),
            Text(AppLanguage.settingsText[language],
                style: const TextStyle(
                    color: AppColor.primaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    fontFamily: AppFont.fontFamily)),
            SizedBox(height: MediaQuery.of(context).size.height * 2 / 100),
            Expanded(
                flex: 1,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 2 / 100),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 90 / 100,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              AppLanguage.personalText[language],
                              style: TextStyle(
                                color: AppColor.silverColor,
                                fontFamily: AppFont.fontFamily,
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                              ),
                            ),
                            SettingRow(
                              title: AppLanguage.changePasswordText[language],
                              leadingIcon: AppImage.changePassword,
                              onPress: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ChangePassword()));
                              },
                            ),
                            SettingRow(
                              title:
                                  AppLanguage.rewardsAndReferralsText[language],
                              leadingIcon: AppImage.rewardicon,
                              onPress: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const RewardPointsScreen()));
                              },
                            ),
                            SettingRow(
                              title: AppLanguage.myWalletText[language],
                              leadingIcon: AppImage.walleticon,
                              onPress: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const MyWalletScreen()));
                              },
                            ),
                            SettingRow(
                              title: AppLanguage.helpAndSupportText[language],
                              leadingIcon: AppImage.helpSupport,
                              onPress: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ContactUs()));
                              },
                            ),
                            SettingRow(
                              title: AppLanguage.faqText[language],
                              leadingIcon: AppImage.faqIcon,
                              onPress: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => FAQ()));
                              },
                            ),
                            SizedBox(
                                height: MediaQuery.of(context).size.height *
                                    3 /
                                    100),
                            Text(
                              AppLanguage.accountText[language],
                              style: TextStyle(
                                color: AppColor.silverColor,
                                fontFamily: AppFont.fontFamily,
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                              ),
                            ),
                            SettingRow(
                              title:
                                  AppLanguage.termsAndConditionText[language],
                              leadingIcon: AppImage.termsConditionIcon,
                              onPress: () {
                                Navigator.pushNamed(context, Content.routeName,
                                    arguments: ContentClass(
                                        header: AppLanguage
                                            .termsAndConditionText[language],
                                        contenttype: ""));
                              },
                            ),
                            SettingRow(
                              title: AppLanguage.privacyPolicyText[language],
                              leadingIcon: AppImage.privacyPolicy,
                              onPress: () {
                                Navigator.pushNamed(context, Content.routeName,
                                    arguments: ContentClass(
                                        header: AppLanguage
                                            .privacyPolicyText[language],
                                        contenttype: ""));
                              },
                            ),
                            SettingRow(
                              title: AppLanguage.aboutUsText[language],
                              leadingIcon: AppImage.aboutUsIcon,
                              onPress: () {
                                Navigator.pushNamed(context, Content.routeName,
                                    arguments: ContentClass(
                                        header:
                                            AppLanguage.aboutUsText[language],
                                        contenttype: ""));
                              },
                            ),
                            SettingRow(
                              title: AppLanguage.rateAppText[language],
                              leadingIcon: AppImage.rateIcon,
                              onPress: () {},
                            ),
                            SettingRow(
                              title: AppLanguage.shareAppText[language],
                              leadingIcon: AppImage.shareIcon,
                              onPress: () {},
                            ),
                            SettingRow(
                              title: AppLanguage.deleteAccountText[language],
                              leadingIcon: AppImage.deleteIcon,
                              onPress: () {
                                deleteAccountPopUp(context);
                              },
                            ),
                            SettingRow(
                                title: AppLanguage.logOutText[language],
                                leadingIcon: AppImage.logOutIcon,
                                onPress: () {
                                  logOutPopUp(context);
                                })
                          ],
                        ),
                      )
                    ],
                  ),
                )),
          ],
        ),
      )),
    );
  }

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
                      width: MediaQuery.of(context).size.width * 82 / 100,
                      //    height: MediaQuery.of(context).size.height * 36 / 100,
                      padding: const EdgeInsets.symmetric(
                          vertical: 40, horizontal: 15),
                      decoration: BoxDecoration(
                          color: AppColor.secondaryColor,
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        children: [
                          Center(
                            child: SizedBox(
                              width:
                                  MediaQuery.of(context).size.width * 15 / 100,
                              height:
                                  MediaQuery.of(context).size.width * 15 / 100,
                              child: Image.asset(
                                AppImage.deleteAccountIcon,
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
                                MediaQuery.of(context).size.height * 1 / 100,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 65 / 100,
                            child: Text(
                              AppLanguage.sureDeleteText[language],
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  color: AppColor.primaryColor,
                                  fontFamily: AppFont.fontFamily,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15),
                            ),
                          ),
                          SizedBox(
                            height:
                                MediaQuery.of(context).size.height * 4 / 100,
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
                                      32 /
                                      100,
                                  height: MediaQuery.of(context).size.height *
                                      5 /
                                      100,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: AppColor.themeColor),
                                      borderRadius: BorderRadius.circular(7)),
                                  child: Text(
                                    AppLanguage.cancelText[language],
                                    style: const TextStyle(
                                        color: AppColor.grayColor,
                                        fontFamily: AppFont.fontFamily,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width:
                                    MediaQuery.of(context).size.width * 3 / 100,
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
                                      32 /
                                      100,
                                  height: MediaQuery.of(context).size.height *
                                      5 /
                                      100,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: AppColor.themeColor,
                                      borderRadius: BorderRadius.circular(7)),
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
                      width: MediaQuery.of(context).size.width * 85 / 100,
                      padding: const EdgeInsets.symmetric(
                          vertical: 30, horizontal: 15),
                      decoration: BoxDecoration(
                          color: AppColor.secondaryColor,
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        children: [
                          Center(
                            child: SizedBox(
                              width:
                                  MediaQuery.of(context).size.width * 15 / 100,
                              height:
                                  MediaQuery.of(context).size.width * 15 / 100,
                              child: Image.asset(
                                AppImage.aboutUsIcon,
                                // fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(
                            height:
                                MediaQuery.of(context).size.height * 3 / 100,
                          ),
                          Text(
                            AppLanguage.sureLogoutText[language],
                            style: const TextStyle(
                                color: AppColor.primaryColor,
                                fontFamily: AppFont.fontFamily,
                                fontWeight: FontWeight.w600,
                                fontSize: 16),
                          ),
                          SizedBox(
                            height:
                                MediaQuery.of(context).size.height * 5 / 100,
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
                                      26 /
                                      100,
                                  height: MediaQuery.of(context).size.height *
                                      5 /
                                      100,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: AppColor.themeColor),
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Text(
                                    AppLanguage.noText[language],
                                    style: const TextStyle(
                                        color: AppColor.textColor,
                                        fontFamily: AppFont.fontFamily,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width:
                                    MediaQuery.of(context).size.width * 3 / 100,
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
                                      26 /
                                      100,
                                  height: MediaQuery.of(context).size.height *
                                      5 /
                                      100,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: AppColor.themeColor,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Text(
                                    AppLanguage.yesText[language],
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

class SettingRow extends StatelessWidget {
  final String title;
  final String leadingIcon;
  final Function onPress;

  const SettingRow({
    Key? key,
    required this.title,
    required this.leadingIcon,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onPress(),
      child: Container(
        width: MediaQuery.of(context).size.width * 90 / 100,
        margin: EdgeInsets.symmetric(vertical: 9),
        child: Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 5 / 100,
              height: MediaQuery.of(context).size.width * 5 / 100,
              alignment: Alignment.center,
              child: Image.asset(
                leadingIcon,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: MediaQuery.of(context).size.width * 4 / 100),
            Container(
              width: MediaQuery.of(context).size.width * 80 / 100,
              child: Text(
                title,
                style: TextStyle(
                  color: AppColor.primaryColor,
                  fontFamily: AppFont.fontFamily,
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
