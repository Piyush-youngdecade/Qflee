import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import '../../utilities/app_color.dart';
import '../../utilities/app_constant.dart';
import '../../utilities/app_font.dart';
import '../../utilities/app_image.dart';
import '../../utilities/app_language.dart';

class Favourites extends StatefulWidget {
  static String routeName = './Favourites';
  const Favourites({super.key});

  @override
  State<Favourites> createState() => _FavouritesState();
}

class _FavouritesState extends State<Favourites> {
  int gridOrListView = 1;
  List oceanExploreList = [
    {
      "id": 1,
      "image": "",
      "title": "Ocean Explorer 3000",
      "facilities": "Luxury Yacht",
      "beach": "Fintas Beach",
      "pickup": "Pickup",
      "khiran": "Khiran",
      "rating": "4.5",
      "member": "12",
      "hour": "16"
    },
    {
      "id": 2,
      "image": "",
      "title": "Ocean Explorer 3000",
      "facilities": "Luxury Yacht",
      "beach": "Fintas Beach",
      "pickup": "Pickup",
      "khiran": "Khiran",
      "rating": "4.5",
      "member": "12",
      "hour": "16"
    },
    {
      "id": 3,
      "image": "",
      "title": "Ocean Explorer 3000",
      "facilities": "Luxury Yacht",
      "beach": "Fintas Beach",
      "pickup": "Pickup",
      "khiran": "Khiran",
      "rating": "4.5",
      "member": "12",
      "hour": "16"
    },
    {
      "id": 4,
      "image": "",
      "title": "Ocean Explorer 3000",
      "facilities": "Luxury Yacht",
      "beach": "Fintas Beach",
      "pickup": "Pickup",
      "khiran": "Khiran",
      "rating": "4.5",
      "member": "12",
      "hour": "16"
    }
  ];

  List gridList = [
    {
      "id": 1,
      "hour": "16",
      "title": "Ocean Explorer 3000",
      "boats": "Sailing Boats",
      "beach": "Fintas Beach",
      "rating": "4.5",
      "member": "4",
      "like": false
    },
    {
      "id": 2,
      "hour": "16",
      "title": "Ocean Explorer 3000",
      "boats": "Sailing Boats",
      "beach": "Fintas Beach",
      "rating": "4.5",
      "member": "4",
      "like": false
    },
    {
      "id": 3,
      "hour": "16",
      "title": "Ocean Explorer 3000",
      "boats": "Sailing Boats",
      "beach": "Fintas Beach",
      "rating": "4.5",
      "member": "4",
      "like": false
    },
    {
      "id": 4,
      "hour": "16",
      "title": "Ocean Explorer 3000",
      "boats": "Sailing Boats",
      "beach": "Fintas Beach",
      "rating": "4.5",
      "member": "4",
      "like": false
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
            SizedBox(height: MediaQuery.of(context).size.height * 1 / 100),
            Container(
              width: MediaQuery.of(context).size.width * 90 / 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppLanguage.favouritesText[language],
                    style: TextStyle(
                        color: AppColor.primaryColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        fontFamily: AppFont.fontFamily),
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            gridOrListView = 1;
                            print(gridOrListView);
                          });
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width * 7 / 100,
                          height: MediaQuery.of(context).size.width * 7 / 100,
                          child: Image.asset(AppImage.aboutUsIcon),
                        ),
                      ),
                      SizedBox(
                          width: MediaQuery.of(context).size.width * 3 / 100),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            gridOrListView = 2;
                            print(gridOrListView);
                          });
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width * 7 / 100,
                          height: MediaQuery.of(context).size.width * 7 / 100,
                          child: Image.asset(AppImage.aboutUsIcon),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Expanded(
                flex: 1,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 2 / 100),
                      if (gridOrListView == 1)
                        Container(
                          width: MediaQuery.of(context).size.width * 90 / 100,
                          child: Wrap(
                            alignment: WrapAlignment.spaceBetween,
                            runSpacing: 10.0,
                            children: List.generate(gridList.length, (index) {
                              return Container(
                                width: MediaQuery.of(context).size.width *
                                    44 /
                                    100,
                                height: MediaQuery.of(context).size.height *
                                    25 /
                                    100,
                                decoration: BoxDecoration(
                                    color: Colors.amber,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 4, horizontal: 8),
                                          decoration: BoxDecoration(
                                              color: AppColor.themeColor,
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(20),
                                                  bottomRight:
                                                      Radius.circular(4))),
                                          child: Row(
                                            children: [
                                              Text(
                                                gridList[index]['hour'] +
                                                    " " +
                                                    AppLanguage
                                                        .kwdtext[language],
                                                style: TextStyle(
                                                    color:
                                                        AppColor.secondaryColor,
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w600,
                                                    fontFamily:
                                                        AppFont.fontFamily),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(top: 4),
                                                child: Text(
                                                  AppLanguage
                                                      .hourtext[language],
                                                  style: TextStyle(
                                                      color: AppColor
                                                          .secondaryColor,
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontFamily:
                                                          AppFont.fontFamily),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                3 /
                                                100),
                                        Container(
                                          decoration: BoxDecoration(
                                              color: AppColor.secondaryColor
                                                  .withOpacity(0.2),
                                              borderRadius:
                                                  BorderRadius.circular(25)),
                                          padding: EdgeInsets.symmetric(
                                              vertical: 3, horizontal: 10),
                                          child: Text(
                                            "1/6",
                                            style: TextStyle(
                                                color: AppColor.secondaryColor,
                                                fontSize: 10,
                                                fontWeight: FontWeight.w500,
                                                fontFamily: AppFont.fontFamily),
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          40 /
                                          100,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            gridList[index]['title'],
                                            style: TextStyle(
                                                color: AppColor.secondaryColor,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600,
                                                fontFamily: AppFont.fontFamily),
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                gridList[index]['boats'],
                                                style: TextStyle(
                                                    color:
                                                        AppColor.secondaryColor,
                                                    fontSize: 10,
                                                    fontWeight: FontWeight.w500,
                                                    fontFamily:
                                                        AppFont.fontFamily),
                                              ),
                                              SizedBox(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      1 /
                                                      100),
                                              Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    1 /
                                                    100,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    1 /
                                                    100,
                                                decoration: BoxDecoration(
                                                    color:
                                                        AppColor.secondaryColor,
                                                    shape: BoxShape.circle),
                                              ),
                                              SizedBox(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      1 /
                                                      100),
                                              Text(
                                                gridList[index]['beach'],
                                                style: TextStyle(
                                                    color:
                                                        AppColor.secondaryColor,
                                                    fontSize: 10,
                                                    fontWeight: FontWeight.w500,
                                                    fontFamily:
                                                        AppFont.fontFamily),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    10 /
                                                    100,
                                                padding: EdgeInsets.symmetric(
                                                    vertical: 3, horizontal: 3),
                                                decoration: BoxDecoration(
                                                  color: AppColor.secondaryColor
                                                      .withOpacity(0.2),
                                                  borderRadius:
                                                      BorderRadius.circular(25),
                                                ),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width *
                                                              3 /
                                                              100,
                                                      height:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width *
                                                              3 /
                                                              100,
                                                      child: Image.asset(
                                                          AppImage.ratingIcon),
                                                    ),
                                                    Text(
                                                      gridList[index]['rating'],
                                                      style: TextStyle(
                                                          color: AppColor
                                                              .secondaryColor,
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontFamily: AppFont
                                                              .fontFamily),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      2 /
                                                      100),
                                              Container(
                                                padding: EdgeInsets.symmetric(
                                                    vertical: 4, horizontal: 5),
                                                decoration: BoxDecoration(
                                                  color: AppColor.secondaryColor
                                                      .withOpacity(0.2),
                                                  borderRadius:
                                                      BorderRadius.circular(25),
                                                ),
                                                child: Text(
                                                  gridList[index]['member'] +
                                                      AppLanguage.memberstext[
                                                          language],
                                                  style: TextStyle(
                                                      color: AppColor
                                                          .secondaryColor,
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontFamily:
                                                          AppFont.fontFamily),
                                                ),
                                              ),
                                              SizedBox(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      5 /
                                                      100),
                                              Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    6 /
                                                    100,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    6 /
                                                    100,
                                                child: Image.asset(
                                                    AppImage.likeDeactiveIcon),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  2 /
                                                  100)
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            }),
                          ),
                        ),
                      if (gridOrListView == 2) ...[
                        Container(
                          width: MediaQuery.of(context).size.width * 90 / 100,
                          child: Wrap(
                            spacing: 10.0,
                            runSpacing: 15.0,
                            children:
                                List.generate(oceanExploreList.length, (index) {
                              return Container(
                                width: MediaQuery.of(context).size.width *
                                    90 /
                                    100,
                                height: MediaQuery.of(context).size.height *
                                    20 /
                                    100,
                                padding: EdgeInsets.only(top: 12, left: 12),
                                decoration: BoxDecoration(
                                    color: Colors.amber,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          80 /
                                          100,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
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
                                                AppImage.likeDeactiveIcon),
                                          ),
                                          SizedBox(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  2 /
                                                  100),
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
                                                AppImage.likeDeactiveIcon),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          oceanExploreList[index]['title'],
                                          style: TextStyle(
                                              color: AppColor.secondaryColor,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600,
                                              fontFamily: AppFont.fontFamily),
                                        ),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              oceanExploreList[index]
                                                  ['facilities'],
                                              style: TextStyle(
                                                  color:
                                                      AppColor.secondaryColor,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                  fontFamily:
                                                      AppFont.fontFamily),
                                            ),
                                            SizedBox(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    1 /
                                                    100),
                                            Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  1 /
                                                  100,
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  1 /
                                                  100,
                                              margin: EdgeInsets.only(top: 2),
                                              decoration: BoxDecoration(
                                                  color:
                                                      AppColor.secondaryColor,
                                                  shape: BoxShape.circle),
                                            ),
                                            SizedBox(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    1 /
                                                    100),
                                            Text(
                                              oceanExploreList[index]['beach'],
                                              style: TextStyle(
                                                  color:
                                                      AppColor.secondaryColor,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                  fontFamily:
                                                      AppFont.fontFamily),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              oceanExploreList[index]['pickup'],
                                              style: TextStyle(
                                                  color:
                                                      AppColor.secondaryColor,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                  fontFamily:
                                                      AppFont.fontFamily),
                                            ),
                                            SizedBox(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    1 /
                                                    100),
                                            Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  1 /
                                                  100,
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  1 /
                                                  100,
                                              margin: EdgeInsets.only(top: 2),
                                              decoration: BoxDecoration(
                                                  color:
                                                      AppColor.secondaryColor,
                                                  shape: BoxShape.circle),
                                            ),
                                            SizedBox(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    1 /
                                                    100),
                                            Text(
                                              oceanExploreList[index]['khiran'],
                                              style: TextStyle(
                                                  color:
                                                      AppColor.secondaryColor,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                  fontFamily:
                                                      AppFont.fontFamily),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      15 /
                                                      100,
                                                  padding: EdgeInsets.symmetric(
                                                      vertical: 5),
                                                  decoration: BoxDecoration(
                                                    color: AppColor
                                                        .secondaryColor
                                                        .withOpacity(0.2),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25),
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Container(
                                                        width: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width *
                                                            4 /
                                                            100,
                                                        height: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width *
                                                            4 /
                                                            100,
                                                        child: Image.asset(
                                                            AppImage
                                                                .ratingIcon),
                                                      ),
                                                      SizedBox(
                                                          width: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width *
                                                              1 /
                                                              100),
                                                      Text(
                                                        oceanExploreList[index]
                                                            ['rating'],
                                                        style: TextStyle(
                                                            color: AppColor
                                                                .secondaryColor,
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontFamily: AppFont
                                                                .fontFamily),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            2 /
                                                            100),
                                                Container(
                                                  padding: EdgeInsets.symmetric(
                                                      vertical: 4,
                                                      horizontal: 5),
                                                  decoration: BoxDecoration(
                                                    color: AppColor
                                                        .secondaryColor
                                                        .withOpacity(0.2),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25),
                                                  ),
                                                  child: Text(
                                                    oceanExploreList[index]
                                                            ['member'] +
                                                        AppLanguage.memberstext[
                                                            language],
                                                    style: TextStyle(
                                                        color: AppColor
                                                            .secondaryColor,
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontFamily:
                                                            AppFont.fontFamily),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Container(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 5, horizontal: 20),
                                              decoration: BoxDecoration(
                                                  color: AppColor.themeColor,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          topLeft:
                                                              Radius.circular(
                                                                  4),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  20))),
                                              child: Row(
                                                children: [
                                                  Text(
                                                    oceanExploreList[index]
                                                            ['hour'] +
                                                        " " +
                                                        AppLanguage
                                                            .kwdtext[language],
                                                    style: TextStyle(
                                                        color: AppColor
                                                            .secondaryColor,
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontFamily:
                                                            AppFont.fontFamily),
                                                  ),
                                                  Container(
                                                    margin:
                                                        EdgeInsets.only(top: 4),
                                                    child: Text(
                                                      AppLanguage
                                                          .hourtext[language],
                                                      style: TextStyle(
                                                          color: AppColor
                                                              .secondaryColor,
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontFamily: AppFont
                                                              .fontFamily),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              );
                            }),
                          ),
                        ),
                        SizedBox(
                            height:
                                MediaQuery.of(context).size.height * 1 / 100)
                      ]
                    ],
                  ),
                ))
          ],
        ),
      )),
    );
  }
}
