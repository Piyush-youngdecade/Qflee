import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../utilities/app_color.dart';
import '../../utilities/app_constant.dart';
import '../../utilities/app_font.dart';
import '../../utilities/app_image.dart';
import '../../utilities/app_language.dart';

class NotificationScreen extends StatefulWidget {
  static String routeName = "./NotificationScreen";
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  List<dynamic> notificationList = [
    {
      'id': 1,
      "name": "Kam Davis.",
      "time": "2min",
      "stuats": "is Live",
      "userProfile": "./assets/icons/userProfile1.jpg",
    },
    {
      'id': 2,
      "name": "Jakob Majors.",
      "time": "20min",
      "stuats": "upload Post",
      "userProfile": "./assets/icons/userProfile4.jpg",
    },
    {
      'id': 3,
      "name": "Dan Jack.",
      "time": "1hr",
      "stuats": "mentioned Comment",
      "userProfile": "./assets/icons/userProfile3.jpg",
    },
    {
      'id': 4,
      "name": "Dior Davis ",
      "time": "3hr",
      "stuats": "and 40 other like your post",
      "userProfile": "./assets/icons/userProfile5.jpg",
    },
  ];
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: AppColor.secondaryColor,
        statusBarIconBrightness: Brightness.dark));
    return Scaffold(
      body: SafeArea(
          child: Container(
        width: MediaQuery.of(context).size.width * 100 / 100,
        height: MediaQuery.of(context).size.height * 100 / 100,
        color: AppColor.secondaryColor,
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 2 / 100,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 90 / 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 6 / 100,
                      height: MediaQuery.of(context).size.width * 6 / 100,
                      child: Image.asset(
                        AppImage.backIcon,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text(
                    AppLanguage.notificationsText[language],
                    style: TextStyle(
                        color: AppColor.primaryColor,
                        fontFamily: AppFont.fontFamily,
                        fontWeight: FontWeight.w600,
                        fontSize: 18),
                  ),
                  Text(
                    AppLanguage.clearAllText[language],
                    style: TextStyle(
                        color: AppColor.primaryColor,
                        fontFamily: AppFont.fontFamily,
                        fontWeight: FontWeight.w600,
                        fontSize: 14),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 3 / 100,
            ),
            Expanded(
              flex: 1,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Wrap(
                        children:
                            List.generate(notificationList.length, (index) {
                      return Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 92 / 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                  color: AppColor.textinputBorderColor,
                                )),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      2 /
                                      100,
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width *
                                      86 /
                                      100,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        child: Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              11 /
                                              100,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              11 /
                                              100,
                                          child: Image.asset(
                                            notificationList[index]
                                                ["userProfile"],
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                2 /
                                                100,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                72 /
                                                100,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  notificationList[index]
                                                      ["name"],
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      color:
                                                          AppColor.primaryColor,
                                                      fontFamily:
                                                          AppFont.fontFamily,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 12),
                                                ),
                                                Text(
                                                  notificationList[index]
                                                      ["stuats"],
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      color: AppColor.textColor,
                                                      fontFamily:
                                                          AppFont.fontFamily,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 12),
                                                ),
                                                if (notificationList[index]
                                                        ["id"] ==
                                                    3)
                                                  Text(
                                                    "Kam Davis",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        color: AppColor
                                                            .primaryColor,
                                                        fontFamily:
                                                            AppFont.fontFamily,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 12),
                                                  ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.5 /
                                                  100,
                                            ),
                                            Text(
                                              notificationList[index]["time"],
                                              style: TextStyle(
                                                  color: AppColor.textColor,
                                                  fontFamily:
                                                      AppFont.fontFamily,
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 12),
                                            ),
                                            SizedBox(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.2 /
                                                  100,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      2 /
                                      100,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height:
                                MediaQuery.of(context).size.height * 2 / 100,
                          ),
                        ],
                      );
                    })),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 2 / 100,
            )
          ],
        ),
      )),
    );
  }
}
