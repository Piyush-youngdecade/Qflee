import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../utilities/app_color.dart';
import '../../utilities/app_constant.dart';
import '../../utilities/app_font.dart';
import '../../utilities/app_header.dart';
import '../../utilities/app_image.dart';
import '../../utilities/app_language.dart';
import '../../utilities/custom_suffix_input.dart';
import 'product_search_screen.dart';


class SearchScreen extends StatefulWidget {
  static String routeName = './SearchScreen';
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController searchTextEdtingController = TextEditingController();

  int selectedSearch = 1;
  List<dynamic> searchList = <dynamic>[
    {
      "id": 1,
      "title": "Hospital/ Clinic",
    },
    {
      "id": 2,
      "title": "School",
    },
    {
      "id": 3,
      "title": "Salon",
    },
    {
      "id": 4,
      "title": "Showroom",
    },
    {
      "id": 5,
      "title": "Temple",
    },
    {
      "id": 6,
      "title": "Parking",
    },
    {
      "id": 7,
      "title": "Restaurant/Hotel",
    },
    {
      "id": 8,
      "title": "Shopping Mall",
    },
    {
      "id": 9,
      "title": "Transport",
    },
    {
      "id": 10,
      "title": "Others",
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
                      text: "",
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
                  Container(
                    width: MediaQuery.of(context).size.width * 90 / 100,
                    child: Wrap(
                      runSpacing: 8,
                      spacing: 7,
                      alignment: WrapAlignment.center,
                      children: List.generate(searchList.length, (index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                             selectedSearch = searchList[index]["id"];
                            });
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ProductSearchScreen(
                                    name: searchList[index]["title"],
                                  ),
                                ));
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 4, horizontal: 9),
                            decoration: BoxDecoration(
                              color: AppColor.lightPurpleColor,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(searchList[index]["title"],
                                    style: TextStyle(
                                        color: AppColor.silverColor,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: AppFont.fontFamily)),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width *
                                      1 /
                                      100,
                                ),
                                Container(
                                  height: MediaQuery.of(context).size.width *
                                      2.2 /
                                      100,
                                  width: MediaQuery.of(context).size.width *
                                      2.2 /
                                      100,
                                  child: Image.asset(AppImage.crossIcon),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                    ),
                  ),
                ]))));
  }
}
