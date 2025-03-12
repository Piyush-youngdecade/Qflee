import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../utilities/app_color.dart';
import '../../utilities/app_constant.dart';
import '../../utilities/app_font.dart';
import '../../utilities/app_header.dart';
import '../../utilities/app_language.dart';

class RewardPointsScreen extends StatefulWidget {
  static String routeName = "./RewardPointsScreen";
  const RewardPointsScreen({super.key});

  @override
  State<RewardPointsScreen> createState() => _RewardPointsScreenState();
}

class _RewardPointsScreenState extends State<RewardPointsScreen> {
  int status = 1;
  List<dynamic> rewardList = <dynamic>[
    {
      "id": 1,
      "queue": AppLanguage.allText[language],
    },
    {
      "id": 2,
      "queue": AppLanguage.normalText[language],
    },
    {
      "id": 3,
      "queue": AppLanguage.premiumText[language],
    },
    {
      "id": 4,
      "queue": AppLanguage.groupText[language],
    },
  ];

  List<dynamic> referralList = <dynamic>[
    {
      'id': 1,
      "allDetails": "Swapped Queue Successfully (Premium)",
      "normal": "Swapped Queue Successfully ",
      "premium": "Booked Premium Queue",
      "group": "Checked in with 3 members",
      "point": "+30",
      "time": "23-03-2025",
    },
    {
      'id': 2,
      "allDetails": "Joined Normal Queue",
      "normal": "Joined Normal Queue",
      "premium": "Swapped Queue Successfully ",
      "group": "Booked Group Queue",
      "point": "+10",
      "time": "24-02-2025",
    },
    {
      'id': 3,
      "allDetails": "Redeemed Free Skip",
      "normal": " Joined Normal Queue",
      "premium": "Redeemed Free Skip",
      "group": "Checked in with 3 members",
      "point": "-200",
      "time": "20-01-2025",
    },
    {
      'id': 4,
      "allDetails": "Booked Premium Queue",
      "normal": "Joined Normal Queue ",
      "premium": "Redeemed Free Skip",
      "group": "Booked Group Queue",
      "point": "-30",
      "time": "21-02-2025",
    },
    {
      'id': 5,
      "allDetails": "Redeemed Free Skip",
      "normal": "Swapped Queue Successfully ",
      "premium": "Swapped Position ",
      "group": "Checked in with 3 members",
      "point": "+20",
      "time": "23-03-2025",
    },
    {
      'id': 6,
      "allDetails": "Joined Normal Queue",
      "normal": "Joined Normal Queue",
      "premium": "Booked Premium Queue",
      "group": "Checked in with 3 members",
      "point": "+50",
      "time": "24-02-2025",
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
                child: Column(children: [
                  SizedBox(
                      height: MediaQuery.of(context).size.height * 1 / 100),
                  AppHeader(
                      text: AppLanguage.rewardsAndReferralsText[language],
                      onPress: () {
                        Navigator.pop(context);
                      }),
                  SizedBox(
                      height: MediaQuery.of(context).size.height * 2 / 100),
                  Container(
                    width: MediaQuery.of(context).size.width * 90 / 100,
                    // padding:
                    //     const EdgeInsets.symmetric(vertical: 12, horizontal: 5),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: AppColor.themeColor,
                      // border: Border.all(
                      //     color: Colors.white,
                      //     width: 4.0,
                      //     style: BorderStyle.solid),
                      boxShadow: const [
                        BoxShadow(
                          color: AppColor.themeColor,
                          blurRadius: 3,
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 86 / 100,
                          padding:
                              EdgeInsets.symmetric(horizontal: 5, vertical: 4),
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width:
                                    MediaQuery.of(context).size.width * 1 / 100,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    AppLanguage.queuepointText[language],
                                    style: TextStyle(
                                        color: AppColor.secondaryColor,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: AppFont.fontFamily),
                                  ),
                                  Text(
                                    "2600",
                                    style: TextStyle(
                                        color: AppColor.secondaryColor,
                                        fontSize: 38,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: AppFont.fontFamily),
                                  ),
                                ],
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width *
                                    30 /
                                    100,
                                height: MediaQuery.of(context).size.width *
                                    30 /
                                    100,
                                child: Image.asset(
                                  './assets/icons/coin.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                      height: MediaQuery.of(context).size.height * 3 / 100),
                  Container(
                    width: MediaQuery.of(context).size.width * 100 / 100,
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: AppColor.shadowColor,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Wrap(
                            runSpacing: 15.0,
                            spacing: 15.0,
                            alignment: WrapAlignment.center,
                            children: List.generate(rewardList.length, (index) {
                              return Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        status = rewardList[index]['id'];
                                      });
                                    },
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 12, vertical: 3),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4),
                                        color: rewardList[index]['id'] == status
                                            ? AppColor.themeColor
                                            : AppColor.transparentColor,
                                      ),
                                      child: Text(
                                        rewardList[index]['queue'],
                                        style: TextStyle(
                                            color: rewardList[index]['id'] ==
                                                    status
                                                ? AppColor.secondaryColor
                                                : AppColor.themeColor,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: AppFont.fontFamily),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            })),
                      ],
                    ),
                  ),
                  SizedBox(
                      height: MediaQuery.of(context).size.height * 3 / 100),
                  Wrap(
                      children: List.generate(referralList.length, (index) {
                    return Column(
                      children: [
                        Container(
                          width:
                              MediaQuery.of(context).size.width * 90 / 100,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        status == 1
                                            ? referralList[index]
                                                ["allDetails"]
                                            : status == 2
                                                ? referralList[index]
                                                    ["normal"]
                                                : status == 3
                                                    ? referralList[index]
                                                        ["premium"]
                                                    : referralList[index]
                                                        ["group"],
                                        style: const TextStyle(
                                            color: AppColor.primaryColor,
                                            fontFamily: AppFont.fontFamily,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 13),
                                      ),
                                      SizedBox(
                                        height: MediaQuery.of(context)
                                                .size
                                                .height *
                                            0.5 /
                                            100,
                                      ),
                                      Container(
                                        width: MediaQuery.of(context)
                                                .size
                                                .width *
                                            90 /
                                            100,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment
                                                  .spaceBetween,
                                          children: [
                                            Text(
                                              referralList[index]["point"] +
                                                  " Points",
                                              style: TextStyle(
                                                  color: AppColor.grayColor,
                                                  fontFamily:
                                                      AppFont.fontFamily,
                                                  fontWeight:
                                                      FontWeight.w400,
                                                  fontSize: 14),
                                            ),
                                            Text(
                                              referralList[index]["time"],
                                              style: TextStyle(
                                                  color: AppColor.grayColor,
                                                  fontFamily:
                                                      AppFont.fontFamily,
                                                  fontWeight:
                                                      FontWeight.w500,
                                                  fontSize: 10),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: MediaQuery.of(context)
                                                .size
                                                .height *
                                            1 /
                                            100,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width:
                              MediaQuery.of(context).size.width * 90 / 100,
                          height: MediaQuery.of(context).size.height *
                              0.1 /
                              100,
                          color: AppColor.lightBorderColor,
                        ),
                        SizedBox(
                          height:
                              MediaQuery.of(context).size.height * 2 / 100,
                        ),
                      ],
                    );
                  })),
             
             
             
                ]))));
  }
}
