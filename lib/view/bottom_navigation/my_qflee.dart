import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import '../../utilities/app_color.dart';
import '../../utilities/app_constant.dart';
import '../../utilities/app_font.dart';
import '../../utilities/app_language.dart';
import '../other_screen/qflee_restaurant_screen.dart';

class MyQflee extends StatefulWidget {
  static String routeName = './MyQflee';
  const MyQflee({Key? key}) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _MyQfleeState createState() => _MyQfleeState();
}

class _MyQfleeState extends State<MyQflee> {
  int selectedListOfmyQflee = 1;
  List<dynamic> listOfQflee = <dynamic>[
    {
      "id": 1,
      "title": AppLanguage.allText[language],
    },
    {
      "id": 2,
      "title": AppLanguage.swapsText[language],
    },
    {
      "id": 3,
      "title": AppLanguage.executedText[language],
    },
    {
      "id": 4,
      "title": AppLanguage.premiumText[language],
    },
    {
      "id": 5,
      "title": AppLanguage.groupText[language],
    },
    {
      "id": 6,
      "title": AppLanguage.cancelledText[language],
    },
    {
      "id": 7,
      "title": AppLanguage.failedText[language],
    }
  ];

  int selectedIndex = 1;
  // allMyQfleeList
  List<dynamic> allMyQfleeList = <dynamic>[
    {
      "id": 1,
      "time": "30:00",
      "title": "The Golden Fork",
      "address": "245 Maple Street, Rivertown, TX 75001",
      "queueNumber": "S10",
    },
    {
      "id": 2,
      "time": "30:00",
      "title": "The Golden Fork",
      "address": "245 Maple Street, Rivertown, TX 75001",
      "queueNumber": "S10",
    },
    {
      "id": 3,
      "time": "30:00",
      "title": "The Golden Fork",
      "address": "245 Maple Street, Rivertown, TX 75001",
      "queueNumber": "S10",
    },
    {
      "id": 4,
      "time": "30:00",
      "title": "The Golden Fork",
      "address": "245 Maple Street, Rivertown, TX 75001",
      "queueNumber": "S10",
    }
  ];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: AppColor.secondaryColor,
        statusBarIconBrightness: Brightness.dark));
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: WillPopScope(
        onWillPop: () async {
          return false;
        },
        child: Scaffold(
          backgroundColor: AppColor.secondaryColor,
          body: SafeArea(
              child: Container(
            color: AppColor.secondaryColor,
            width: MediaQuery.of(context).size.width * 100 / 100,
            height: MediaQuery.of(context).size.height * 100 / 100,
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 90 / 100,
                  margin: EdgeInsets.symmetric(vertical: 10),
                  child: Text(AppLanguage.myQfleeText[language],
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          color: AppColor.primaryColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          fontFamily: AppFont.fontFamily)),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 2 / 100),
                Container(
                  width: MediaQuery.of(context).size.width * 90 / 100,
                  child: Wrap(
                    runSpacing: 12,
                    spacing: 10,
                    alignment: WrapAlignment.center,
                    children: List.generate(listOfQflee.length, (index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedListOfmyQflee = listOfQflee[index]["id"];
                          });
                        },
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 4, horizontal: 14),
                          decoration: BoxDecoration(
                              color: selectedListOfmyQflee ==
                                      listOfQflee[index]["id"]
                                  ? AppColor.lightPurpleColor
                                  : AppColor.secondaryColor,
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                  color: selectedListOfmyQflee !=
                                          listOfQflee[index]["id"]
                                      ? AppColor.grayColor
                                      : AppColor.lightPurpleColor,
                                  width: 1)),
                          child: Text(listOfQflee[index]["title"],
                              style: TextStyle(
                                  color: selectedListOfmyQflee ==
                                          listOfQflee[index]["id"]
                                      ? AppColor.themeColor
                                      : AppColor.silverColor,
                                  fontSize: 11,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: AppFont.fontFamily)),
                        ),
                      );
                    }),
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 3 / 100),
                          SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 3 / 100),
                          Wrap(
                              runSpacing: 8,
                              spacing: 5,
                              children:
                                  List.generate(allMyQfleeList.length, (index) {
                                return Column(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    QfleeRestaurantScreen()));
                                      },
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                90 /
                                                100,
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 8, horizontal: 12),
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color:
                                              allMyQfleeList[index]["id"] % 2 !=
                                                      0
                                                  ? AppColor.textgorundColor
                                                  : AppColor.containerColor,
                                          boxShadow: const [
                                            BoxShadow(
                                              color: AppColor.shadowColor,
                                              blurRadius: 8,
                                            ),
                                          ],
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      82 /
                                                      100,
                                                  alignment: Alignment.topRight,
                                                  child: Text(
                                                    "30:00 min",
                                                    textAlign: TextAlign.right,
                                                    style: TextStyle(
                                                        color:
                                                            AppColor.redcolor,
                                                        fontFamily:
                                                            AppFont.fontFamily,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 12),
                                                  ),
                                                ),
                                                Text(
                                                  allMyQfleeList[index]
                                                      ["title"],
                                                  style: TextStyle(
                                                      color:
                                                          AppColor.primaryColor,
                                                      fontFamily:
                                                          AppFont.fontFamily,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 14),
                                                ),
                                                // SizedBox(
                                                //   height: MediaQuery.of(context)
                                                //           .size
                                                //           .height *
                                                //       0.5 /
                                                //       100,
                                                // ),
                                                Text(
                                                  allMyQfleeList[index]
                                                      ["address"],
                                                  style: TextStyle(
                                                      color:
                                                          AppColor.silverColor,
                                                      fontFamily:
                                                          AppFont.fontFamily,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 12),
                                                ),
                                                // SizedBox(
                                                //   height: MediaQuery.of(context)
                                                //           .size
                                                //           .height *
                                                //       0.5 /
                                                //       100,
                                                // ),
                                                Row(
                                                  children: [
                                                    Text(
                                                      selectedListOfmyQflee == 2
                                                          ? AppLanguage
                                                                  .orignalQueueNumberText[
                                                              language]
                                                          : AppLanguage
                                                                  .queueNumberText[
                                                              language],
                                                      style: TextStyle(
                                                          color: AppColor
                                                              .hintTextinputColor,
                                                          fontFamily: AppFont
                                                              .fontFamily,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontSize: 13),
                                                    ),
                                                    Text(
                                                      " : " +
                                                          allMyQfleeList[index]
                                                              ["queueNumber"],
                                                      style: TextStyle(
                                                          color: AppColor
                                                              .themeColor,
                                                          fontFamily: AppFont
                                                              .fontFamily,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontSize: 13),
                                                    )
                                                  ],
                                                ),

                                                if (selectedListOfmyQflee == 2)
                                                  Row(
                                                    children: [
                                                      Text(
                                                        AppLanguage.newQueueNumberText[
                                                                language] +
                                                            " : ",
                                                        style: TextStyle(
                                                            color: AppColor
                                                                .hintTextinputColor,
                                                            fontFamily: AppFont
                                                                .fontFamily,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontSize: 13),
                                                      ),
                                                      Text(
                                                        "S5",
                                                        style: TextStyle(
                                                            color: AppColor
                                                                .themeColor,
                                                            fontFamily: AppFont
                                                                .fontFamily,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontSize: 13),
                                                      )
                                                    ],
                                                  ),

                                                if (selectedListOfmyQflee == 3)
                                                  Row(
                                                    children: [
                                                      Text(
                                                        AppLanguage.completionTimeText[
                                                                language] +
                                                            " : ",
                                                        style: TextStyle(
                                                            color: AppColor
                                                                .hintTextinputColor,
                                                            fontFamily: AppFont
                                                                .fontFamily,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontSize: 13),
                                                      ),
                                                      Text(
                                                        "S5",
                                                        style: TextStyle(
                                                            color: AppColor
                                                                .themeColor,
                                                            fontFamily: AppFont
                                                                .fontFamily,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontSize: 13),
                                                      )
                                                    ],
                                                  ),

                                                if (selectedListOfmyQflee != 3)
                                                  Container(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            82 /
                                                            100,
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          selectedListOfmyQflee ==
                                                                  6
                                                              ? AppLanguage
                                                                      .cancelledText[
                                                                  language]
                                                              : selectedListOfmyQflee ==
                                                                      7
                                                                  ? AppLanguage
                                                                          .failedText[
                                                                      language]
                                                                  : AppLanguage
                                                                          .inProgressText[
                                                                      language],
                                                          style: TextStyle(
                                                              color: selectedListOfmyQflee == 6 ||
                                                                      selectedListOfmyQflee ==
                                                                          7
                                                                  ? AppColor
                                                                      .redcolor
                                                                  : AppColor
                                                                      .greenColor,
                                                              fontFamily: AppFont
                                                                  .fontFamily,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              fontSize: 13),
                                                        ),
                                                        if (selectedListOfmyQflee !=
                                                                6 &&
                                                            selectedListOfmyQflee !=
                                                                7)
                                                          Container(
                                                            padding: EdgeInsets
                                                                .symmetric(
                                                                    vertical: 4,
                                                                    horizontal:
                                                                        14),
                                                            decoration:
                                                                BoxDecoration(
                                                              color: AppColor
                                                                  .themeColor,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          20),
                                                            ),
                                                            child: Text(
                                                              AppLanguage
                                                                      .statusText[
                                                                  language],
                                                              style: TextStyle(
                                                                  color: AppColor
                                                                      .secondaryColor,
                                                                  fontFamily:
                                                                      AppFont
                                                                          .fontFamily,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontSize: 10),
                                                            ),
                                                          )
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
                                      ),
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              2 /
                                              100,
                                    ),
                                  ],
                                );
                              })),
                        ],
                      ),
                    ))
              ],
            ),
          )),
        ),
      ),
    );
  }
}
