import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../utilities/app_color.dart';
import '../../utilities/app_constant.dart';
import '../../utilities/app_font.dart';
import '../../utilities/app_image.dart';
import '../../utilities/app_language.dart';
import '../../utilities/custom_suffix_input.dart';
import '../authentication/notification_screen.dart';
import '../other_screen/qr_scanner_screen.dart';
import '../other_screen/search_screen.dart';
import 'profile.dart';

class Home extends StatefulWidget {
  static String routeName = './Home';
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController searchTextEdtingController = TextEditingController();
  CarouselController carouselController = CarouselController();

  List<dynamic> orderList = <dynamic>[
    {
      "id": 1,
      "image": './assets/icons/cafe.png',
      "queue": AppLanguage.normalQueueText[language],
      "details":
          "Join the standard queue at no cost and get served on a first-come, first-served basis.",
      "icon": AppImage.normalQueueIcon
    },
    {
      "id": 2,
      "image": './assets/icons/shop_image3.png',
      "queue": AppLanguage.premiumQueueText[language],
      "details":
          "Get priority access for faster service! Available to everyone for a nominal fee",
      "icon": AppImage.premiumQueueIcon
    },
    {
      "id": 3,
      "image": './assets/icons/cafe.png',
      "queue": AppLanguage.groupQueueText[language],
      "details": "Join the group queue to stay together while waiting in line!",
      "icon": AppImage.groupQueueIcon
    },
  ];

  int status = 0;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: AppColor.secondaryColor,
        statusBarIconBrightness: Brightness.dark));
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) {
        SystemChannels.platform.invokeMethod('SystemNavigator.pop');
      },
      child: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
          body: SafeArea(
              child: Container(
            width: MediaQuery.of(context).size.width * 100 / 100,
            height: MediaQuery.of(context).size.height * 100 / 100,
            color: AppColor.themeColor,
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 3 / 100,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 90 / 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Profile()));
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 12 / 100,
                            height:
                                MediaQuery.of(context).size.width * 12 / 100,
                            child: Image.asset(
                              './assets/icons/profileImage.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        //   width: MediaQuery.of(context).size.width * 55 / 100,
                        child: Text(
                          AppLanguage.qfleeText[language],
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: AppColor.secondaryColor,
                              fontFamily: AppFont.fontFamily,
                              fontWeight: FontWeight.w600,
                              fontSize: 22),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const NotificationScreen()));
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width * 8 / 100,
                          height: MediaQuery.of(context).size.width * 8 / 100,
                          //  color: Colors.amberAccent,
                          child: Image.asset(
                            AppImage.notificationIcon,
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 3 / 100,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 88 / 100,
                  child: Row(
                    children: [
                      Text(
                        "Hello, ",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: AppColor.secondaryColor,
                            fontFamily: AppFont.fontFamily,
                            fontWeight: FontWeight.w400,
                            fontSize: 16),
                      ),
                      Text(
                        "Saransh!",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: AppColor.secondaryColor,
                            fontFamily: AppFont.fontFamily,
                            fontWeight: FontWeight.w600,
                            fontSize: 16),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 3 / 100,
                ),
                CustomSuffixTextFormField(
                  controller: searchTextEdtingController,
                  hintText: AppLanguage.searchCityText[language],
                  keyboardtype: TextInputType.text,
                  maxLength: AppConstant.searchLength,
                  readOnly: true,
                  image: AppImage.searchIcon,
                  fillColorStatus: 0,
                  onPress: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SearchScreen()));
                  },
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 3 / 100,
                ),
                Expanded(
                    flex: 1,
                    child: SingleChildScrollView(
                        child: Column(
                      children: [
                        Container(
                            width:
                                MediaQuery.of(context).size.width * 100 / 100,
                            height:
                                MediaQuery.of(context).size.height * 100 / 100,
                            decoration: BoxDecoration(
                              color: AppColor.secondaryColor,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(50),
                                topRight: Radius.circular(50),
                              ),
                            ),
                            child: Column(children: [
                              SizedBox(
                                height: MediaQuery.of(context).size.height *
                                    4 /
                                    100,
                              ),
                              CarouselSlider(
                                carouselController: carouselController,
                                items: List.generate(orderList.length, (index) {
                                  return Container(
                                    width: MediaQuery.of(context).size.width *
                                        90 /
                                        100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: AppColor.lightBlueColor,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              4 /
                                              100,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              4 /
                                              100,
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "The Golden Fork",
                                              // textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  color:
                                                      AppColor.secondaryColor,
                                                  fontFamily:
                                                      AppFont.fontFamily,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 16),
                                            ),
                                            Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  40 /
                                                  100,
                                              child: Text(
                                                "245 Maple Street, Rivertown, TX 75001",
                                                //  textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color:
                                                        AppColor.secondaryColor,
                                                    fontFamily:
                                                        AppFont.fontFamily,
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 12),
                                              ),
                                            ),
                                            SizedBox(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  3 /
                                                  100,
                                            ),
                                            Container(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 8, vertical: 5),
                                              decoration: BoxDecoration(
                                                color: AppColor.secondaryColor,
                                                borderRadius:
                                                    BorderRadius.circular(4),
                                              ),
                                              child: Text(
                                                AppLanguage
                                                    .joinQueueText[language],
                                                // textAlign: TextAlign.left,
                                                style: TextStyle(
                                                    color: AppColor.themeColor,
                                                    fontFamily:
                                                        AppFont.fontFamily,
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 10),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              45 /
                                              100,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              45 /
                                              100,
                                          child: Image.asset(
                                            orderList[index]["image"],
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                }),
                                options: CarouselOptions(
                                  enableInfiniteScroll: false,
                                  initialPage: 0,
                                  autoPlay: true,
                                  viewportFraction: 1.0,
                                  height: MediaQuery.of(context).size.height *
                                      22 /
                                      100,
                                  onPageChanged: (imageIndex, reason) {
                                    setState(() {
                                      status = imageIndex;
                                    });
                                  },
                                ),
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height *
                                    1 /
                                    100,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:
                                    List.generate(orderList.length, (indexes) {
                                  return Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              .5 /
                                              100),
                                      child: Container(
                                        height:
                                            MediaQuery.of(context).size.width *
                                                2 /
                                                100,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                2 /
                                                100,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: status == indexes
                                              ? AppColor.themeColor
                                              : AppColor.textinputBorderColor,
                                        ),
                                      ));
                                }),
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height *
                                    2 /
                                    100,
                              ),
                              Wrap(
                                  runSpacing: 15.0,
                                  spacing: 15.0,
                                  alignment: WrapAlignment.center,
                                  children:
                                      List.generate(orderList.length, (index) {
                                    return GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    QRScannerScreen()));
                                      },
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                90 /
                                                100,
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 12, vertical: 8),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: orderList[index]['id'] == 1
                                              ? AppColor.lightvioletColor
                                              : orderList[index]['id'] == 2
                                                  ? AppColor.blueColor
                                                  : AppColor.violetColor,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(100),
                                              child: Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    14 /
                                                    100,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    14 /
                                                    100,
                                                child: Image.asset(
                                                  orderList[index]["icon"],
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  orderList[index]['queue'],
                                                  // textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                      color: AppColor
                                                          .secondaryColor,
                                                      fontFamily:
                                                          AppFont.fontFamily,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 16),
                                                ),
                                                Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      66 /
                                                      100,
                                                  //color: Colors.amber,
                                                  child: Text(
                                                    orderList[index]['details'],
                                                    //  textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        color: AppColor
                                                            .secondaryColor,
                                                        fontFamily:
                                                            AppFont.fontFamily,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontSize: 14),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      1 /
                                                      100,
                                                ),
                                                Container(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 8,
                                                      vertical: 5),
                                                  decoration: BoxDecoration(
                                                    color:
                                                        AppColor.secondaryColor,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4),
                                                  ),
                                                  child: Text(
                                                    AppLanguage.joinQueueText[
                                                        language],
                                                    // textAlign: TextAlign.left,
                                                    style: TextStyle(
                                                        color:
                                                            AppColor.themeColor,
                                                        fontFamily:
                                                            AppFont.fontFamily,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 10),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.3 /
                                                      100,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  }))
                         
                         
                         
                            ]))
                      ],
                    )))
              ],
            ),
          )),
        ),
      ),
    );
  }
}
