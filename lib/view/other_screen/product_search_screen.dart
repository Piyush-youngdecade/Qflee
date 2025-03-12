import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../utilities/app_color.dart';
import '../../utilities/app_constant.dart';
import '../../utilities/app_font.dart';
import '../../utilities/app_header.dart';
import '../../utilities/app_image.dart';
import '../../utilities/app_language.dart';
import '../../utilities/custom_suffix_input.dart';
import 'restaurant_screen.dart';

// ignore: must_be_immutable
class ProductSearchScreen extends StatefulWidget {
  String name;
  static String routeName = './ProductSearchScreen';
  ProductSearchScreen({super.key, required this.name});

  @override
  State<ProductSearchScreen> createState() => _ProductSearchScreenState();
}

class _ProductSearchScreenState extends State<ProductSearchScreen> {
  TextEditingController searchTextEdtingController = TextEditingController();

  List<dynamic> restaurantList = <dynamic>[
    {
      "id": 1,
      "image": './assets/icons/shop_image1.png',
      "title": "The Golden Fork",
      "address": "245 Maple Street, Rivertown, TX 75001",
      "time": "50 min",
    },
    {
      "id": 2,
      "image": './assets/icons/shop_image3.png',
      "title": "The Hungry Spoon",
      "address": "245 Maple Street, Rivertown, TX 75001",
      "time": "40 min",
    },
    {
      "id": 3,
      "image": './assets/icons/shop_image4.png',
      "title": "Flavors & Fire",
      "address": "245 Maple Street, Rivertown, TX 75001",
      "time": "20 min",
    },
    {
      "id": 4,
      "image": './assets/icons/shop_image1.png',
      "title": "Urban Fork",
      "address": "245 Maple Street, Rivertown, TX 75001",
      "time": "55 min",
    }
  ];

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
                child: Column(children: [
                  AppHeader(
                      text: widget.name,
                      onPress: () {
                        Navigator.pop(context);
                      }),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 3 / 100,
                  ),
                  CustomSuffixTextFormField(
                    controller: searchTextEdtingController,
                    hintText: AppLanguage.searchInputText[language],
                    keyboardtype: TextInputType.text,
                    maxLength: AppConstant.searchLength,
                    readOnly: false,
                    image: AppImage.searchIcon,
                    fillColorStatus: 0,
                    onPress: () {},
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
                              runSpacing: 8,
                              spacing: 5,
                              children:
                                  List.generate(restaurantList.length, (index) {
                                return Column(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    RestaurantScreen()));
                                      },
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                90 /
                                                100,
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 8, horizontal: 7),
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color:
                                              restaurantList[index]["id"] % 2 !=
                                                      0
                                                  ? AppColor.lightGreenColor
                                                  : AppColor.textgorundColor,
                                          boxShadow: const [
                                            BoxShadow(
                                              color: AppColor.shadowColor,
                                              blurRadius: 8,
                                            ),
                                          ],
                                        ),
                                        child: Row(
                                          // mainAxisAlignment:
                                          //     MainAxisAlignment.spaceBetween,
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
                                                    15 /
                                                    100,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    15 /
                                                    100,
                                                child: Image.asset(
                                                  restaurantList[index]
                                                      ["image"],
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  3 /
                                                  100,
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  restaurantList[index]
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
                                                Text(
                                                  restaurantList[index]
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
                                                Row(
                                                  children: [
                                                    Text(
                                                      AppLanguage
                                                              .totalWaitingText[
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
                                                          restaurantList[index]
                                                              ["time"],
                                                      style: TextStyle(
                                                          color: AppColor
                                                              .greenColor,
                                                          fontFamily: AppFont
                                                              .fontFamily,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontSize: 13),
                                                    )
                                                  ],
                                                ),
                                              
                                              
                                                SizedBox(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.1 /
                                                      100,
                                                ),
                                                Container(
                                                  alignment: Alignment.center,
                                                  child: RatingBar.builder(
                                                    itemSize: 15,
                                                    initialRating: 4,
                                                    minRating: 1,
                                                    direction: Axis.horizontal,
                                                    // allowHalfRating: true,
                                                    itemCount: 5,
                                                    itemBuilder: (context, _) =>
                                                        const Icon(
                                                      Icons.star,
                                                      color: Color(0xffEDD53D),
                                                    ),
                                                    onRatingUpdate: (rating) {
                                                      setState(() {
                                                        // offerrating = rating;
                                                      });
                                                    },
                                                  ),
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
                    ),
                  ),
                ]))));
  }
}
