import 'package:flutter/material.dart';
import '../view/bottom_navigation/home.dart';
import '../view/bottom_navigation/my_qflee.dart';
import '../view/bottom_navigation/profile.dart';
import '../view/bottom_navigation/settings.dart';
import '../view/other_screen/qr_scanner_screen.dart';
import 'app_color.dart';
import 'app_constant.dart';
import 'app_font.dart';
import 'app_image.dart';
import 'app_language.dart';

class MyFooterPage extends StatefulWidget {
  const MyFooterPage({super.key});

  @override
  State<MyFooterPage> createState() => _MyFooterPageState();
}

class _MyFooterPageState extends State<MyFooterPage> {
  int _selectedIndex = 0;
  PageController _pageController = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();

    _pageController =
        PageController(initialPage: AppConstant.selectFooterIndex);

    setState(() {
      _selectedIndex = AppConstant.selectFooterIndex;
    });
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _pageController.jumpToPage(index);
    });
  }

  void _onPageChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {});
      },
      child: Scaffold(
        backgroundColor: AppConstant.deviceType == "android"
            ? AppColor.secondaryColor
            : AppColor.secondaryColor,
        body: SafeArea(
          child: PageView(
            controller: _pageController,
            onPageChanged: _onPageChanged,
            children: const <Widget>[
              Home(),
              MyQflee(),
              Settings(),
              Profile(),
              QRScannerScreen(),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          color: AppColor.secondaryColor,
          child: BottomAppBar(
            height: MediaQuery.of(context).size.height * 10.6 / 100,
            shape: const CircularNotchedRectangle(),
            notchMargin: 6.0,
            surfaceTintColor: AppColor.secondaryColor,
            color: AppColor.secondaryColor,
            shadowColor: AppColor.shadowColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedIndex = 0;
                    });
                    _onItemTapped(_selectedIndex);
                  },
                  child: Column(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 7 / 100,
                        height: MediaQuery.of(context).size.width * 7 / 100,
                        child: Image.asset(
                          _selectedIndex == 0
                              ? AppImage.activeHome
                              : AppImage.deActiveHome,
                        ),
                      ),
                      Text(
                        AppLanguage.homeText[language],
                        style: TextStyle(
                            color: _selectedIndex == 0
                                ? AppColor.themeColor
                                : AppColor.primaryColor,
                            fontSize: 10,
                            fontFamily: AppFont.fontFamily,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 15 / 100,
                        height: MediaQuery.of(context).size.height * 1 / 100,
                        decoration: BoxDecoration(
                            color: _selectedIndex == 0
                                ? AppColor.themeColor
                                : AppColor.secondaryColor,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10))),
                      )
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedIndex = 1;
                    });
                    _onItemTapped(_selectedIndex);
                  },
                  child: Column(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 7 / 100,
                        height: MediaQuery.of(context).size.width * 7 / 100,
                        child: Image.asset(
                          _selectedIndex == 1
                              ? AppImage.activMyQflee
                              : AppImage.deActivMyQflee,
                        ),
                      ),
                      Text(
                        AppLanguage.myQfleeText[language],
                        style: TextStyle(
                            color: _selectedIndex == 1
                                ? AppColor.themeColor
                                : AppColor.primaryColor,
                            fontSize: 10,
                            fontFamily: AppFont.fontFamily,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 15 / 100,
                        height: MediaQuery.of(context).size.height * 1 / 100,
                        decoration: BoxDecoration(
                            color: _selectedIndex == 1
                                ? AppColor.themeColor
                                : AppColor.secondaryColor,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10))),
                      )
                    ],
                  ),
                ),
                SizedBox(width: 20),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedIndex = 2;
                    });
                    _onItemTapped(_selectedIndex);
                  },
                  child: Column(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 7 / 100,
                        height: MediaQuery.of(context).size.width * 7 / 100,
                        child: Image.asset(
                          _selectedIndex == 2
                              ? AppImage.activeSetting
                              : AppImage.deActiveSetting,
                        ),
                      ),
                      Text(
                        AppLanguage.settingsText[language],
                        style: TextStyle(
                            color: _selectedIndex == 2
                                ? AppColor.themeColor
                                : AppColor.primaryColor,
                            fontSize: 10,
                            fontFamily: AppFont.fontFamily,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 15 / 100,
                        height: MediaQuery.of(context).size.height * 1 / 100,
                        decoration: BoxDecoration(
                            color: _selectedIndex == 2
                                ? AppColor.themeColor
                                : AppColor.secondaryColor,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10))),
                      )
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedIndex = 3;
                    });
                    _onItemTapped(_selectedIndex);
                  },
                  child: Column(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 7 / 100,
                        height: MediaQuery.of(context).size.width * 7 / 100,
                        child: Image.asset(
                          _selectedIndex == 3
                              ? AppImage.activeProfile
                              : AppImage.deActiveProfile,
                        ),
                      ),
                      Text(
                        AppLanguage.profileText[language],
                        style: TextStyle(
                            color: _selectedIndex == 3
                                ? AppColor.themeColor
                                : AppColor.primaryColor,
                            fontSize: 10,
                            fontFamily: AppFont.fontFamily,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 15 / 100,
                        height: MediaQuery.of(context).size.height * 1 / 100,
                        decoration: BoxDecoration(
                            color: _selectedIndex == 3
                                ? AppColor.themeColor
                                : AppColor.secondaryColor,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10))),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              setState(() {
                _selectedIndex = 4;
              });
            },
            shape: const CircleBorder(),
            splashColor: AppColor.shadowColor,
            backgroundColor: AppColor.themeColor,
            child: Container(
                padding: const EdgeInsets.all(11),
                child: Image.asset(
                  AppImage.scannerIcon,
                  fit: BoxFit.cover,
                ))),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}
