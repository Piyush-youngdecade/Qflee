import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../utilities/app_color.dart';

import '../../utilities/app_constant.dart';
import '../../utilities/app_font.dart';
import '../../utilities/app_header.dart';
import '../../utilities/app_image.dart';
import '../../utilities/app_language.dart';

class RestaurantScreen extends StatefulWidget {
  static String routeName = './RestaurantScreen';
  const RestaurantScreen({super.key});

  @override
  State<RestaurantScreen> createState() => _RestaurantScreenState();
}

class _RestaurantScreenState extends State<RestaurantScreen> {
  CarouselController carouselController = CarouselController();

  List<dynamic> orderList = <dynamic>[
    {
      "id": 1,
      "image": './assets/icons/restauant.png',
      "queue": AppLanguage.normalQueueText[language],
      "details":
          "Join the standard queue at no cost and get served on a first-come, first-served basis.",
      "time": "50 min",
    },
    {
      "id": 2,
      "image": './assets/icons/shop_image3.png',
      "queue": AppLanguage.premiumQueueText[language],
      "details":
          "Get priority access for faster service! Available to everyone for a nominal fee",
      "time": "53 min",
    },
    {
      "id": 3,
      "image": './assets/icons/shop_image4.png',
      "queue": AppLanguage.groupQueueText[language],
      "details": "Join the group queue to stay together while waiting in line!",
      "time": "51 min",
    },
  ];

  int status = 0;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: AppColor.secondaryColor,
        statusBarIconBrightness: Brightness.dark));
    return Scaffold(
        backgroundColor: AppColor.secondaryColor,
        body: SafeArea(
            child: Container(
                color: AppColor.secondaryColor,
                width: MediaQuery.of(context).size.width * 100 / 100,
                height: MediaQuery.of(context).size.height * 100 / 100,
                child: Column(
                  children: [
                    AppHeader(
                        text: AppLanguage.restaurantText[language],
                        onPress: () {
                          Navigator.pop(context);
                        }),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 4 / 100,
                    ),
                    CarouselSlider(
                      carouselController: carouselController,
                      items: List.generate(orderList.length, (index) {
                        return ClipRRect(
                          borderRadius: BorderRadius.circular(4),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 90 / 100,
                            height:
                                MediaQuery.of(context).size.width * 25 / 100,
                            child: Image.asset(
                              orderList[index]["image"],
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      }),
                      options: CarouselOptions(
                        enableInfiniteScroll: false,
                        initialPage: 0,
                        autoPlay: true,
                        viewportFraction: 1.0,
                        height: MediaQuery.of(context).size.height * 22 / 100,
                        onPageChanged: (imageIndex, reason) {
                          setState(() {
                            status = imageIndex;
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 1 / 100,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(orderList.length, (indexes) {
                        return Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: MediaQuery.of(context).size.width *
                                    .5 /
                                    100),
                            child: Container(
                              height:
                                  MediaQuery.of(context).size.width * 2 / 100,
                              width:
                                  MediaQuery.of(context).size.width * 2 / 100,
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
                      height: MediaQuery.of(context).size.height * 2 / 100,
                    ),
                    Expanded(
                      flex: 1,
                      child: SingleChildScrollView(
                        child: Column(children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 90 / 100,
                            child: Text(
                              "The Golden Fork",
                              style: TextStyle(
                                  color: AppColor.themeColor,
                                  fontFamily: AppFont.fontFamily,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16),
                            ),
                          ),
                          SizedBox(
                            height:
                                MediaQuery.of(context).size.height * 0.5 / 100,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 90 / 100,
                            child: Text(
                              "Experience delicious flavors in a warm and welcoming ambiance. We serve freshly prepared dishes made with the finest ingredients, ensuring every bite is a delight. Whether you're here for a quick bite or a leisurely meal, we promise great food, excellent service, and a seamless dining experience. Join our queue and enjoy hassle-free seating! 🍕🥗🍔",
                              style: TextStyle(
                                  color: AppColor.silverColor,
                                  fontFamily: AppFont.fontFamily,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12),
                            ),
                          ),
                          SizedBox(
                            height:
                                MediaQuery.of(context).size.height * 2 / 100,
                          ),
                          Wrap(
                              runSpacing: 3,
                              // spacing: 15.0,
                              alignment: WrapAlignment.center,
                              children:
                                  List.generate(orderList.length, (index) {
                                return Container(
                                  width: MediaQuery.of(context).size.width *
                                      90 /
                                      100,
                                  child: Row(
                                    children: [
                                      if (orderList[index]['id'] != 3)
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              5 /
                                              100,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              5 /
                                              100,
                                          child: Image.asset(
                                            orderList[index]['id'] == 1
                                                ? AppImage.locationIcon
                                                : AppImage.mobileIcon,
                                            fit: BoxFit.cover,
                                          ),
                                        )
                                      else
                                        Row(
                                          children: [
                                            SizedBox(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  1 /
                                                  100,
                                            ),
                                            Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  2.5 /
                                                  100,
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  2.5 /
                                                  100,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100),
                                                  color: AppColor.greenColor),
                                            ),
                                            SizedBox(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  1 /
                                                  100,
                                            ),
                                          ],
                                        ),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                1 /
                                                100,
                                      ),
                                      if (orderList[index]['id'] != 3)
                                        Text(
                                          orderList[index]['id'] == 1
                                              ? "245 Maple Street, Rivertown, TX 75001"
                                              : "+121 48162564",
                                          style: TextStyle(
                                              color: AppColor.primaryColor,
                                              fontFamily: AppFont.fontFamily,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 12),
                                        )
                                      else
                                        Text(
                                          AppLanguage.availableTimingText[
                                                  language] +
                                              " : 10:00 AM - 05:00 PM",
                                          style: TextStyle(
                                              color: AppColor.primaryColor,
                                              fontFamily: AppFont.fontFamily,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 14),
                                        ),
                                    ],
                                  ),
                                );
                              })),
                          SizedBox(
                            height:
                                MediaQuery.of(context).size.height * 2 / 100,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 90 / 100,
                            child: Text(
                              AppLanguage.queueStylesText[language],
                              style: TextStyle(
                                  color: AppColor.primaryColor,
                                  fontFamily: AppFont.fontFamily,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16),
                            ),
                          ),
                          SizedBox(
                            height:
                                MediaQuery.of(context).size.height * 3 / 100,
                          ),
                          Wrap(
                              runSpacing: 15.0,
                              spacing: 15.0,
                              alignment: WrapAlignment.center,
                              children:
                                  List.generate(orderList.length, (index) {
                                return GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    width: MediaQuery.of(context).size.width *
                                        90 /
                                        100,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 12, vertical: 8),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        // color:  AppColor.violetColor,
                                        gradient: AppColor.queueGradient),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
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
                                                  color:
                                                      AppColor.secondaryColor,
                                                  fontFamily:
                                                      AppFont.fontFamily,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 16),
                                            ),
                                            SizedBox(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  1 /
                                                  100,
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  AppLanguage.estimatedWaitText[
                                                      language],
                                                  style: TextStyle(
                                                      color: AppColor
                                                          .secondaryColor,
                                                      fontFamily:
                                                          AppFont.fontFamily,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 12),
                                                ),
                                                Text(
                                                  " : " +
                                                      orderList[index]['time'],
                                                  style: TextStyle(
                                                      color: AppColor
                                                          .secondaryColor,
                                                      fontFamily:
                                                          AppFont.fontFamily,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 12),
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.3 /
                                                  100,
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  AppLanguage.totalWaitingText[
                                                      language],
                                                  style: TextStyle(
                                                      color: AppColor
                                                          .secondaryColor,
                                                      fontFamily:
                                                          AppFont.fontFamily,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 12),
                                                ),
                                                Text(
                                                  " : " + "55",
                                                  style: TextStyle(
                                                      color: AppColor
                                                          .secondaryColor,
                                                      fontFamily:
                                                          AppFont.fontFamily,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 12),
                                                )
                                              ],
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
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 4, horizontal: 14),
                                          decoration: BoxDecoration(
                                            color: AppColor.themeColor,
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          child: Text(
                                            AppLanguage.statusText[language],
                                            style: TextStyle(
                                                color: AppColor.secondaryColor,
                                                fontFamily: AppFont.fontFamily,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 10),
                                          ),
                                        )
                                    
                                    
                                      ],
                                    ),
                                  ),
                                );
                              }))
                        ]),
                      ),
                    ),
                  ],
                ))));
  }



}
