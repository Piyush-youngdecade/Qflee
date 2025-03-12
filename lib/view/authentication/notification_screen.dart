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
  List<dynamic> notificationList = <dynamic>[
    {
      'id': 1,
      "type": "Queue Update",
      "details":
          "Your table is almost ready - estimated wait time : 10 minutes.",
      "time": "23-03-2025",
    },
    {
      'id': 2,
      "type": "Swap Request",
      "details": "Rahul has offered to swap positions with you. Check details!",
      "time": "24-02-2025",
    },
    {
      'id': 3,
      "type": "Offer Alert",
      "details":
          "Special discount available for priority queue access. Tap for more info.",
      "time": "20-01-2025",
    },
    {
      'id': 4,
      "type": "Payment Confirmation",
      "details": "Your swap fee of ₹500 has been successfully processed.",
      "time": "21-02-2025",
    },
    {
      'id': 5,
      "type": "Queue Update",
      "details":
          "Your table is almost ready - estimated wait time : 10 minutes.",
      "time": "23-03-2025",
    },
    {
      'id': 6,
      "type": "Swap Request",
      "details": "Rahul has offered to swap positions with you. Check details!",
      "time": "24-02-2025",
    },
    {
      'id': 7,
      "type": "Offer Alert",
      "details":
          "Special discount available for priority queue access. Tap for more info.",
      "time": "20-01-2025",
    },
    {
      'id': 8,
      "type": "Payment Confirmation",
      "details": "Your swap fee of ₹500 has been successfully processed.",
      "time": "21-02-2025",
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
                            width: MediaQuery.of(context).size.width * 90 / 100,
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(100),
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                10 /
                                                100,
                                        height:
                                            MediaQuery.of(context).size.width *
                                                10 /
                                                100,
                                        child: Image.asset(
                                          AppImage.notificationIcon,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          2 /
                                          100,
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          72 /
                                          100,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text.rich(
                                              //  textAlign: TextAlign.center,
                                              TextSpan(children: [
                                            TextSpan(
                                              text: notificationList[index]
                                                      ["type"] +
                                                  " : ",
                                              style: TextStyle(
                                                  color: AppColor.primaryColor,
                                                  fontFamily:
                                                      AppFont.fontFamily,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 13),
                                            ),
                                            TextSpan(
                                              text: notificationList[index]
                                                  ["details"],
                                              style: const TextStyle(
                                                  color: AppColor.primaryColor,
                                                  fontFamily:
                                                      AppFont.fontFamily,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 13),
                                            ),
                                          ])),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Text(
                                                notificationList[index]["time"],
                                                style: TextStyle(
                                                    color: AppColor.grayColor,
                                                    fontFamily:
                                                        AppFont.fontFamily,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 10),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                2 /
                                                100,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 90 / 100,
                            height:
                                MediaQuery.of(context).size.height * 0.1 / 100,
                            color: AppColor.grayColor,
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
