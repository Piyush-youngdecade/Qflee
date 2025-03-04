import 'package:flutter/material.dart';
import '../view/authentication/notification_screen.dart';
import '../view/bottom_navigation/explore_screen.dart';
import '../view/bottom_navigation/profile_screen.dart';
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
  bool isOpen = false;

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
        setState(() {
          isOpen = false;
        });
      },
      child: Scaffold(
        backgroundColor: AppConstant.deviceType == "android"
            ? AppColor.secondaryColor
            : AppColor.secondaryColor,
        body: SafeArea(
          child: Stack(
            children: [
              PageView(
                controller: _pageController,
                onPageChanged: _onPageChanged,
                children: const <Widget>[
                  Explore(),
                  NotificationScreen(),
                  Profile()
                ],
              ),
              if (isOpen)
                Positioned(
                    right: MediaQuery.of(context).size.width * 5 / 100,
                    bottom: MediaQuery.of(context).size.height * 6 / 100,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 15),
                      decoration: BoxDecoration(
                          color: AppColor.secondaryColor,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: AppColor.primaryColor.withOpacity(0.25),
                              blurRadius: 19,
                              offset: const Offset(0, 4),
                            )
                          ]),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isOpen = false;
                              });
                              //     Navigator.push(context, MaterialPageRoute(builder: (context) => const AddMedication()));
                            },
                            child: Container(
                              width:
                                  MediaQuery.of(context).size.width * 40 / 100,
                              color: AppColor.secondaryColor,
                              child: Text(
                                "\u2022  ${AppLanguage.addReviewText[language]}",
                                style: const TextStyle(
                                    color: AppColor.primaryColor,
                                    fontFamily: AppFont.fontFamily,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16),
                              ),
                            ),
                          ),
                          SizedBox(
                            height:
                                MediaQuery.of(context).size.height * 1.5 / 100,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isOpen = false;
                              });
                              // Navigator.push(context, MaterialPageRoute(builder: (context) => const MeasurementsScreen()));
                            },
                            child: Container(
                              color: AppColor.secondaryColor,
                              child: Text(
                                "\u2022  ${AppLanguage.addReviewText[language]}",
                                style: const TextStyle(
                                    color: AppColor.primaryColor,
                                    fontFamily: AppFont.fontFamily,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16),
                              ),
                            ),
                          ),
                          SizedBox(
                            height:
                                MediaQuery.of(context).size.height * 1.5 / 100,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isOpen = false;
                              });
                              //       Navigator.push(context, MaterialPageRoute(builder: (context) => const AddAdverseReaction()));
                            },
                            child: Container(
                              width:
                                  MediaQuery.of(context).size.width * 40 / 100,
                              color: AppColor.secondaryColor,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "\u2022  ",
                                    style: const TextStyle(
                                        color: AppColor.primaryColor,
                                        fontFamily: AppFont.fontFamily,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16),
                                  ),
                                  Text(
                                    AppLanguage.grandTotalText[language],
                                    style: const TextStyle(
                                        color: AppColor.primaryColor,
                                        fontFamily: AppFont.fontFamily,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16),
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height:
                                MediaQuery.of(context).size.height * 1.5 / 100,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isOpen = false;
                              });
                              //   Navigator.push(context, MaterialPageRoute(builder: (context) => const AddDoctor()));
                            },
                            child: Container(
                              width:
                                  MediaQuery.of(context).size.width * 40 / 100,
                              color: AppColor.secondaryColor,
                              child: Text(
                                "\u2022  ${AppLanguage.editProfileText[language]}",
                                style: const TextStyle(
                                    color: AppColor.primaryColor,
                                    fontFamily: AppFont.fontFamily,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16),
                              ),
                            ),
                          ),
                          SizedBox(
                            height:
                                MediaQuery.of(context).size.height * 1.5 / 100,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isOpen = false;
                              });
                              // Navigator.push(context, MaterialPageRoute(builder: (context) => const AddDocuments()));
                            },
                            child: Container(
                              width:
                                  MediaQuery.of(context).size.width * 40 / 100,
                              color: AppColor.secondaryColor,
                              child: Text(
                                "\u2022  ${AppLanguage.taxText[language]}",
                                style: const TextStyle(
                                    color: AppColor.primaryColor,
                                    fontFamily: AppFont.fontFamily,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16),
                              ),
                            ),
                          )
                        ],
                      ),
                    ))
            ],
          ),
        ),
        bottomNavigationBar: Container(
          color: AppColor.secondaryColor,
          child: BottomAppBar(
            height: MediaQuery.of(context).size.width * 15 / 100,
            shape: const CircularNotchedRectangle(),
            notchMargin: 6.0,
            surfaceTintColor: AppColor.secondaryColor,
            color: AppColor.secondaryColor,
            shadowColor: AppColor.secondaryThemeColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedIndex = 0;
                      isOpen = false;
                    });
                    _onItemTapped(_selectedIndex);
                  },
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 7 / 100,
                    height: MediaQuery.of(context).size.width * 7 / 100,
                    child: Image.asset(
                      _selectedIndex == 0
                          ? AppImage.aboutUsIcon
                          : AppImage.aboutUsIcon,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedIndex = 1;
                      isOpen = false;
                    });
                    _onItemTapped(_selectedIndex);
                  },
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 7 / 100,
                    height: MediaQuery.of(context).size.width * 7 / 100,
                    child: Image.asset(
                      _selectedIndex == 1
                          ? AppImage.aboutUsIcon
                          : AppImage.aboutUsIcon,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedIndex = 2;
                      isOpen = false;
                    });
                    _onItemTapped(_selectedIndex);
                  },
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 7 / 100,
                    height: MediaQuery.of(context).size.width * 7 / 100,
                    child: Image.asset(
                      _selectedIndex == 2
                          ? AppImage.aboutUsIcon
                          : AppImage.aboutUsIcon,
                    ),
                  ),
                ),
                SizedBox(
                    width: MediaQuery.of(context).size.width *
                        5 /
                        100), // Space for FloatingActionButton
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              setState(() {
                isOpen = !isOpen;
              });
            },
            shape: const CircleBorder(),
            splashColor: AppColor.shadowColor,
            backgroundColor: AppColor.themeColor,
            child: Container(
                padding: const EdgeInsets.all(11),
                child: Image.asset(AppImage.plusIcon))),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      ),
    );
  }
}
