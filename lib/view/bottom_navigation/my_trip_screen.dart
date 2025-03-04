import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../utilities/app_color.dart';
import '../../utilities/app_constant.dart';
import '../../utilities/app_font.dart';
import '../../utilities/app_image.dart';
import '../../utilities/app_language.dart';

class MyTrip extends StatefulWidget {
  static String routeName = './MyTrip';
  const MyTrip({super.key});

  @override
  State<MyTrip> createState() => _MyTripState();
}

class _MyTripState extends State<MyTrip> {
  List bookings = [
    {
      "id": 1,
      "month": "Jan",
      "date": "06",
      "year": "2025",
      "title": "Ocean Explorer 3000",
      "title1": "Luxury Yacht",
      "title2": "Fintas Beach",
      "time": "08:00",
      "hour": "4",
      "status": AppLanguage.pendingText[language]
    },
    {
      "id": 2,
      "month": "Jan",
      "date": "06",
      "year": "2025",
      "title": "Ocean Explorer 3000",
      "title1": "Fishing Boat",
      "title2": "Fintas Beach",
      "time": "08:00",
      "hour": "4",
      "status": AppLanguage.ongoingText[language]
    },
    {
      "id": 3,
      "month": "Jan",
      "date": "06",
      "year": "2025",
      "title": "Ocean Explorer 3000",
      "title1": "Fishing Boat",
      "title2": "Fintas Beach",
      "time": "08:00",
      "hour": "4",
      "status": AppLanguage.completedText[language]
    }
  ];
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
            Container(
                width: MediaQuery.of(context).size.width * 90 / 100,
                margin: EdgeInsets.symmetric(vertical: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      AppLanguage.bookingsText[language],
                      style: TextStyle(
                          color: AppColor.primaryColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          fontFamily: AppFont.fontFamily),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 10 / 100,
                      height: MediaQuery.of(context).size.width * 10 / 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(AppImage.filterIcon)),
                          color: AppColor.secondaryColor,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 7,
                                spreadRadius: 3,
                                color: AppColor.shadowColor.withOpacity(0.3))
                          ]),
                    ),
                  ],
                )),
            Expanded(
                flex: 1,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 2 / 100),
                      Container(
                        width: MediaQuery.of(context).size.width * 90 / 100,
                        child: Wrap(
                          runSpacing: 15.0,
                          children: List.generate(bookings.length, (index) {
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width *
                                      18 /
                                      100,
                                  height: MediaQuery.of(context).size.height *
                                      15 /
                                      100,
                                  padding: EdgeInsets.symmetric(vertical: 9),
                                  decoration: BoxDecoration(
                                      color: AppColor.themeColor,
                                      borderRadius: BorderRadius.circular(16)),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        bookings[index]['month'],
                                        style: TextStyle(
                                            color: AppColor.secondaryColor,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: AppFont.fontFamily),
                                      ),
                                      Text(
                                        bookings[index]['date'],
                                        style: TextStyle(
                                            color: AppColor.secondaryColor,
                                            fontSize: 36,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: AppFont.fontFamily),
                                      ),
                                      Text(
                                        bookings[index]['year'],
                                        style: TextStyle(
                                            color: AppColor.secondaryColor,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: AppFont.fontFamily),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width *
                                      70 /
                                      100,
                                  height: MediaQuery.of(context).size.height *
                                      15 /
                                      100,
                                  padding: EdgeInsets.symmetric(
                                      vertical: 15, horizontal: 15),
                                  decoration: BoxDecoration(
                                      color: AppColor.creamColor,
                                      borderRadius: BorderRadius.circular(16)),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            children: [
                                              Text(
                                                bookings[index]['title'],
                                                style: TextStyle(
                                                    color:
                                                        AppColor.primaryColor,
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w600,
                                                    fontFamily:
                                                        AppFont.fontFamily),
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    bookings[index]['title1'],
                                                    style: TextStyle(
                                                        color:
                                                            AppColor.grayColor,
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontFamily:
                                                            AppFont.fontFamily),
                                                  ),
                                                  SizedBox(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width *
                                                              1 /
                                                              100),
                                                  Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width *
                                                              1 /
                                                              100,
                                                      height:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width *
                                                              1 /
                                                              100,
                                                      decoration: BoxDecoration(
                                                          color: AppColor
                                                              .grayColor
                                                              .withOpacity(0.9),
                                                          shape:
                                                              BoxShape.circle)),
                                                  SizedBox(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width *
                                                              1 /
                                                              100),
                                                  Text(
                                                    bookings[index]['title2'],
                                                    style: TextStyle(
                                                        color:
                                                            AppColor.grayColor,
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontFamily:
                                                            AppFont.fontFamily),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                7 /
                                                100,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                7 /
                                                100,
                                            child: Image.asset(
                                                AppImage.rightArrow),
                                          )
                                        ],
                                      ),
                                      // SizedBox(
                                      //     height: MediaQuery.of(context)
                                      //             .size
                                      //             .height *
                                      //         2 /
                                      //         100),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                bookings[index]['time'] + "AM",
                                                style: TextStyle(
                                                    color:
                                                        AppColor.primaryColor,
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w600,
                                                    fontFamily:
                                                        AppFont.fontFamily),
                                              ),
                                              Text(
                                                AppLanguage
                                                    .startTimeText[language],
                                                style: TextStyle(
                                                    color:
                                                        AppColor.primaryColor,
                                                    fontSize: 10,
                                                    fontWeight: FontWeight.w500,
                                                    fontFamily:
                                                        AppFont.fontFamily),
                                              ),
                                            ],
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                bookings[index]['hour'] +
                                                    " " +
                                                    AppLanguage
                                                        .hourtext[language],
                                                style: TextStyle(
                                                    color:
                                                        AppColor.primaryColor,
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w600,
                                                    fontFamily:
                                                        AppFont.fontFamily),
                                              ),
                                              Text(
                                                AppLanguage
                                                    .bookingHoursText[language],
                                                style: TextStyle(
                                                    color:
                                                        AppColor.primaryColor,
                                                    fontSize: 10,
                                                    fontWeight: FontWeight.w500,
                                                    fontFamily:
                                                        AppFont.fontFamily),
                                              ),
                                            ],
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                bookings[index]['status'],
                                                style: TextStyle(
                                                    color: bookings[index]
                                                                ['status'] ==
                                                            "Pending"
                                                        ? AppColor.yellowColor
                                                        : bookings[index][
                                                                    'status'] ==
                                                                "Ongoing"
                                                            ? AppColor
                                                                .darkBlueColor
                                                            : AppColor
                                                                .themeColor,
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w600,
                                                    fontFamily:
                                                        AppFont.fontFamily),
                                              ),
                                              Text(
                                                AppLanguage.statuText[language],
                                                style: TextStyle(
                                                    color:
                                                        AppColor.primaryColor,
                                                    fontSize: 10,
                                                    fontWeight: FontWeight.w500,
                                                    fontFamily:
                                                        AppFont.fontFamily),
                                              ),
                                            ],
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            );
                          }),
                        ),
                      ),
                    ],
                  ),
                ))
          ],
        ),
      )),
    );
  }
}
