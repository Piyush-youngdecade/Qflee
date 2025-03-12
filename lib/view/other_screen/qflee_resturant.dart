import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../utilities/app_button.dart';
import '../../utilities/app_color.dart';
import '../../utilities/app_constant.dart';
import '../../utilities/app_font.dart';
import '../../utilities/app_header.dart';
import '../../utilities/app_language.dart';
import '../../utilities/app_image.dart';
import 'qflee_restaurant_qrcode.dart';

class QfleeResturant extends StatefulWidget {
  static String routeName = './QfleeResturant';
  const QfleeResturant({super.key});

  @override
  State<QfleeResturant> createState() => _QfleeResturantState();
}

class _QfleeResturantState extends State<QfleeResturant> {
  double _sliderValue = 0.5;
  int selectedTrackQueue = 1;
  int selectGroup = 0;
  List<dynamic> trackList = <dynamic>[
    {
      "id":1,
      "type": AppLanguage.normalText[language]
    },
     {
      "id":2,
      "type": AppLanguage.premiumText[language]
    },
     {
      "id":3,
      "type": AppLanguage.groupText[language]
    },
  ];
  int queueStatusIndex = 1;
  List normalList = [
    {
      "id":1,
      "position" : "S42",
      "status": AppLanguage.completedText[language]
    },
    {
      "id":2,
      "position" : "S43",
      "status": AppLanguage.completedText[language]
    },
    {
      "id":3,
      "position" : "S44",
      "status": AppLanguage.InProgressText[language]
    },
    {
      "id":4,
      "position" : "S45",
      "status": AppLanguage.waitingText[language]
    },
    {
      "id":5,
      "position" : "You",
      "status": "15 Min Remaining"
    },
    {
      "id":6,
      "position" : "S47",
      "status": AppLanguage.waitingText[language]
    },
    {
      "id":7,
      "position" : "S48",
      "status": AppLanguage.waitingText[language]
    }
  ];
  List premiumList = [
    {
      "id":1,
      "position" : "S42",
      "status": AppLanguage.completedText[language]
    },
    {
      "id":2,
      "position" : "S43",
      "status": AppLanguage.completedText[language]
    },
    {
      "id":3,
      "position" : "S44",
      "status": AppLanguage.InProgressText[language]
    },
    {
      "id":4,
      "position" : "S45",
      "status": AppLanguage.waitingText[language]
    },
    {
      "id":5,
      "position" : "You",
      "status": "15 Min Remaining"
    },
    {
      "id":6,
      "position" : "S47",
      "status": AppLanguage.waitingText[language]
    },
    {
      "id":7,
      "position" : "S48",
      "status": AppLanguage.waitingText[language]
    }
  ];
  List groupList = [
    {
      "id":1,
      "position" : "S42",
      "status": AppLanguage.completedText[language]
    },
    {
      "id":2,
      "position" : "S43",
      "status": AppLanguage.completedText[language]
    },
    {
      "id":3,
      "position" : "S44",
      "status": AppLanguage.InProgressText[language]
    },
    {
      "id":4,
      "position" : "S45",
      "status": AppLanguage.waitingText[language]
    },
    {
      "id":5,
      "position" : "You",
      "status": "15 Min Remaining"
    },
    {
      "id":6,
      "position" : "S47",
      "status": AppLanguage.waitingText[language]
    },
    {
      "id":7,
      "position" : "S48",
      "status": AppLanguage.waitingText[language]
    }
  ];
  List swapMemberList = [
    {
      "id":1,
      "image":"",
      "name":"Haylie Dias",
      "position":"24"
    },
    {
      "id":2,
      "image":"",
      "name":"Zaire Curtis",
      "position":"20"
    },
    {
      "id":2,
      "image":"",
      "name":"James Bator",
      "position":"20"
    },
  ];
  List selectedGroupList = [
    {
      "id":1,
       "groupType": AppLanguage.groupSchedulingForAFamilyText[language]
    },
    {
      "id":2,
       "groupType": AppLanguage.groupSchedulingForATeamText[language]
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
            AppHeader(
              text: AppLanguage.qfleeRestaurantText[language],
              onPress: () {
                Navigator.pop(context);
              },
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 90/100,
              child: Text(AppLanguage.trackYourQueueText[language],
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColor.grayColor,
                fontSize: 16,
                fontWeight: FontWeight.w600,
                fontFamily: AppFont.fontFamily
              ),),
            ),
            SizedBox(height: MediaQuery.of(context).size.height *1/100),
            Container(
              color: AppColor.lightThemeColor,
              width: MediaQuery.of(context).size.width * 100/100,
              padding: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height * 1.5/100,
                horizontal: MediaQuery.of(context).size.width * 5/100
              ),
              child: Wrap(
                alignment: WrapAlignment.spaceBetween,
                children: List.generate(trackList.length, (index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedTrackQueue = trackList[index]['id'];
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 15
                      ),
                      decoration: BoxDecoration(
                        color: selectedTrackQueue == trackList[index]['id']?
                         AppColor.themeColor: AppColor.transparentColors,
                         borderRadius: BorderRadius.circular(4)
                      ),
                      child: Text(trackList[index]['type'],
                      style: TextStyle(
                        color:  selectedTrackQueue == trackList[index]['id']?
                         AppColor.secondaryColor: AppColor.themeColor,
                        fontSize:selectedTrackQueue == trackList[index]['id']?13: 16,
                        fontWeight: FontWeight.w600,
                        fontFamily: AppFont.fontFamily
                      ),),
                    ),
                  );
                }),
              )
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 2/100),
            SizedBox(
              width: MediaQuery.of(context).size.width * 90/100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // total members
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text("52",
                        style: TextStyle(
                          color: AppColor.themeColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          fontFamily: AppFont.fontFamily
                        ),),
                         Text(AppLanguage.totalMembersText[language],
                        style: TextStyle(
                          color: AppColor.grayColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          fontFamily: AppFont.fontFamily
                        ),),
                    ],
                  ),
                  Container(
                    color: AppColor.grayColor.withOpacity(0.25),
                    width: MediaQuery.of(context).size.width * 0.4/100,
                    height: MediaQuery.of(context).size.height * 5/100,
                  ),
                  // current position
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text("44",
                        style: TextStyle(
                          color: AppColor.darkishYellowColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          fontFamily: AppFont.fontFamily
                        ),),
                         Text(AppLanguage.currentPositionText[language],       
                        style: TextStyle(
                          color: AppColor.grayColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          fontFamily: AppFont.fontFamily
                        ),),
                    ],
                  ),
                   Container(
                    color: AppColor.grayColor.withOpacity(0.25),
                    width: MediaQuery.of(context).size.width * 0.4/100,
                    height: MediaQuery.of(context).size.height * 4/100,
                  ),
                  // your position
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text("46",
                        style: TextStyle(
                          color: AppColor.greenColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          fontFamily: AppFont.fontFamily
                        ),),
                         Text(AppLanguage.yourPositionText[language],
                        style: TextStyle(
                          color: AppColor.grayColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          fontFamily: AppFont.fontFamily
                        ),),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
                flex: 1,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: MediaQuery.of(context).size.height * 2/100),
                      if(selectedTrackQueue == 1)...[
                        Container(
                          width: MediaQuery.of(context).size.width * 85/100,
                          // height: MediaQuery.of(context).size.width * 100/100,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [ 
                              Container(
                                width: MediaQuery.of(context).size.width * 4/100,
                                height: MediaQuery.of(context).size.height * 52/100,
                                child: RotatedBox(
                                  quarterTurns: -1,
                                  child: SliderTheme(
                                    data: SliderTheme.of(context).copyWith(
                                    trackHeight: 10.0,
                                    inactiveTrackColor: AppColor.themeColor,
                                    activeTrackColor: AppColor.silverColor.withOpacity(0.30),
                                    thumbColor: Colors.white,
                                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0),
                                    overlayColor: Colors.blue.shade900.withOpacity(0.2),
                                  ), 
                                  child: Slider(
                                    min: 0,
                                    max: 100,
                                    value: _sliderValue,
                                    onChanged: (value) {
                                      setState(() {
                                        _sliderValue = value;
                                      });
                                    },
                                    ),
                                  ),
                                ),
                              ), 
                              Container(
                                width: MediaQuery.of(context).size.width * 78/100,
                                margin: EdgeInsets.only(top: 20),
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.vertical,
                                  child: Wrap(
                                  runSpacing: 20.0,
                                    children: List.generate(normalList.length, (index) {
                                      return GestureDetector(
                                        onTap: () {
                                         if(normalList[index]['position'] == "You"){
                                          Navigator.push(context, MaterialPageRoute(builder: (context) => const QfleeResturantQRCodeShare()));
                                         }
                                        },
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(normalList[index]['position'],
                                                  style: TextStyle(
                                                    color: normalList[index]['position'] == "You"?
                                                     AppColor.themeColor : AppColor.primaryColor,
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w500,
                                                    fontFamily: AppFont.fontFamily
                                                  ),),
                                                Text(AppLanguage.qrCodeText[language],
                                                  style: TextStyle(
                                                    color: AppColor.silverColor2,
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w500,
                                                    fontFamily: AppFont.fontFamily
                                                  ),),
                                              ],
                                            ),
                                            Text(normalList[index]['status'],
                                                style: TextStyle(
                                                    color:
                                                    normalList[index]['status'] == "Completed"?
                                                     AppColor.hintTextinputColor :  normalList[index]['status'] == "In Progress"?
                                                     AppColor.darkishYellowColor.withOpacity(0.9) : normalList[index]['status'] == "Waiting"?
                                                     AppColor.yellowColor : AppColor.greenColor,
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w500,
                                                    fontFamily: AppFont.fontFamily
                                                ),
                                              ),
                                          ],
                                        ),
                                      );
                                    }),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                      if(selectedTrackQueue == 2)...[
                        Container(
                          width: MediaQuery.of(context).size.width * 85/100,
                          // height: MediaQuery.of(context).size.width * 100/100,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [ 
                              Container(
                                width: MediaQuery.of(context).size.width * 4/100,
                                height: MediaQuery.of(context).size.height * 52/100,
                                child: RotatedBox(
                                  quarterTurns: -1,
                                  child: SliderTheme(
                                    data: SliderTheme.of(context).copyWith(
                                    trackHeight: 10.0,
                                    inactiveTrackColor: AppColor.themeColor,
                                    activeTrackColor: AppColor.silverColor.withOpacity(0.30),
                                    thumbColor: Colors.white,
                                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0),
                                    overlayColor: Colors.blue.shade900.withOpacity(0.2),
                                  ), 
                                  child: Slider(
                                    min: 0,
                                    max: 100,
                                    value: _sliderValue,
                                    onChanged: (value) {
                                      setState(() {
                                        _sliderValue = value;
                                      });
                                    },
                                    ),
                                  ),
                                ),
                              ), 
                              Container(
                                width: MediaQuery.of(context).size.width * 78/100,
                                margin: EdgeInsets.only(top: 20),
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.vertical,
                                  child: Wrap(
                                  runSpacing: 20.0,
                                    children: List.generate(premiumList.length, (index) {
                                      return Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(premiumList[index]['position'],
                                                style: TextStyle(
                                                  color: premiumList[index]['position'] == "You"?
                                                   AppColor.themeColor : AppColor.primaryColor,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500,
                                                  fontFamily: AppFont.fontFamily
                                                ),),
                                              Text(AppLanguage.qrCodeText[language],
                                                style: TextStyle(
                                                  color: AppColor.silverColor2,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                  fontFamily: AppFont.fontFamily
                                                ),),
                                            ],
                                          ),
                                          Text(premiumList[index]['status'],
                                              style: TextStyle(
                                                  color:
                                                  premiumList[index]['status'] == "Completed"?
                                                   AppColor.hintTextinputColor :  premiumList[index]['status'] == "In Progress"?
                                                   AppColor.darkishYellowColor.withOpacity(0.9) : premiumList[index]['status'] == "Waiting"?
                                                   AppColor.yellowColor : AppColor.greenColor,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                  fontFamily: AppFont.fontFamily
                                              ),
                                            ),
                                        ],
                                      );
                                    }),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                      if(selectedTrackQueue == 3)...[
                        Container(
                          width: MediaQuery.of(context).size.width * 85/100,
                          // height: MediaQuery.of(context).size.width * 100/100,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [ 
                              Container(
                                width: MediaQuery.of(context).size.width * 4/100,
                                height: MediaQuery.of(context).size.height * 52/100,
                                child: RotatedBox(
                                  quarterTurns: -1,
                                  child: SliderTheme(
                                    data: SliderTheme.of(context).copyWith(
                                    trackHeight: 10.0,
                                    inactiveTrackColor: AppColor.themeColor,
                                    activeTrackColor: AppColor.silverColor.withOpacity(0.30),
                                    thumbColor: Colors.white,
                                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0),
                                    overlayColor: Colors.blue.shade900.withOpacity(0.2),
                                  ), 
                                  child: Slider(
                                    min: 0,
                                    max: 100,
                                    value: _sliderValue,
                                    onChanged: (value) {
                                      setState(() {
                                        _sliderValue = value;
                                      });
                                    },
                                    ),
                                  ),
                                ),
                              ), 
                              Container(
                                width: MediaQuery.of(context).size.width * 78/100,
                                margin: EdgeInsets.only(top: 20),
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.vertical,
                                  child: Wrap(
                                  runSpacing: 20.0,
                                    children: List.generate(groupList.length, (index) {
                                      return Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(groupList[index]['position'],
                                                style: TextStyle(
                                                  color: groupList[index]['position'] == "You"?
                                                   AppColor.themeColor : AppColor.primaryColor,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500,
                                                  fontFamily: AppFont.fontFamily
                                                ),),
                                              Text(AppLanguage.qrCodeText[language],
                                                style: TextStyle(
                                                  color: AppColor.silverColor2,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                  fontFamily: AppFont.fontFamily
                                                ),),
                                            ],
                                          ),
                                          Text(groupList[index]['status'],
                                              style: TextStyle(
                                                  color:
                                                  groupList[index]['status'] == "Completed"?
                                                   AppColor.hintTextinputColor :  groupList[index]['status'] == "In Progress"?
                                                   AppColor.darkishYellowColor.withOpacity(0.9) : groupList[index]['status'] == "Waiting"?
                                                   AppColor.yellowColor : AppColor.greenColor,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                  fontFamily: AppFont.fontFamily
                                              ),
                                            ),
                                        ],
                                      );
                                    }),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                       SizedBox(height: MediaQuery.of(context).size.height * 4/100),
                       AppButton(
                        text: AppLanguage.joinTheQueueText[language],
                        onPress: (){
                         selectedTrackQueue == 1 ? 
                           normalQueueBottomSheet(context) :  selectedTrackQueue == 2 ? 
                           premiumQueueBottomSheet(context) : groupQueueBottomSheet(context);
                        },
                       )
                    ],
                  ),
                ))
          ],
        ),
      )),
    );
  }

  // normal queue
  void normalQueueBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        backgroundColor: AppColor.primaryColor.withOpacity(0.1),
        useSafeArea: true,
        builder: (context) {
          return StatefulBuilder(builder: (context, setState) {
            return GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                width: MediaQuery.of(context).size.width * 100 / 100,
                height: MediaQuery.of(context).size.height * 100 / 100,
                color: AppColor.primaryColor.withOpacity(0.1),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   Container(
                      decoration: BoxDecoration(
                        gradient: AppColor.lightishYellowGradientColor,
                        borderRadius: BorderRadius.circular(4)
                      ),
                    width: MediaQuery.of(context).size.width * 85/100,
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Column(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 70 /100,
                          child: Text(
                            AppLanguage.selectAFamilyMemberText[language],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: AppColor.primaryColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              fontFamily: AppFont.fontFamily
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 70 /100,
                          child: Text(
                            AppLanguage.maxMemberText[language],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: AppColor.silverColor,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              fontFamily: AppFont.fontFamily
                            ),
                          ),
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height * 2/100),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 75/100,
                          child: Wrap(
                            runSpacing: 15.0,
                            children: List.generate(swapMemberList.length, (index) {
                              return Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                 Container(
                                  width: MediaQuery.of(context).size.width *11/100,
                                  height: MediaQuery.of(context).size.width *11/100,
                                  decoration: BoxDecoration(
                                    color: Colors.amber,
                                    shape: BoxShape.circle,
                                    image: DecorationImage(image: AssetImage('./assets/icons/shop_image3.png'),fit: BoxFit.cover)
                                  ),
                                 ),
                                 SizedBox(
                                  width: MediaQuery.of(context).size.width * 60/100,
                                   child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                           Text(
                                            swapMemberList[index]['name'],
                                            style: TextStyle(
                                              color: AppColor.primaryColor,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: AppFont.fontFamily
                                            ),
                                          ),
                                          Text(
                                            swapMemberList[index]['position'],
                                            style: TextStyle(
                                              color: AppColor.silverColor2,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: AppFont.fontFamily
                                            ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        width: MediaQuery.of(context).size.width * 5/100,
                                        height: MediaQuery.of(context).size.width * 5/100,
                                        child: Image.asset(AppImage.aboutUsIcon),
                                      )
                                    ],
                                   ),
                                 )
                                ],
                              );
                            }),
                          ),
                        ),
                         SizedBox(height: MediaQuery.of(context).size.height * 2/100),
                         SizedBox(
                          width: MediaQuery.of(context).size.width * 75/100,
                          child: Row(
                            children: [
                               Container(
                                // color: AppColor.blueColor,
                                  width: MediaQuery.of(context).size.width *11/100,
                                  height: MediaQuery.of(context).size.width *11/100,
                                  // child: Image.asset(AppImage.addPlusIcon,fit: BoxFit.cover,),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: AppColor.lightBorderColor,
                                    image: DecorationImage(image: AssetImage(AppImage.addPlusIcon))
                                  ),
                                 ),
                                 SizedBox(width: MediaQuery.of(context).size.width * 5/100), 
                               Text(AppLanguage.addText[language],
                                 style: TextStyle(
                                        color: AppColor.primaryColor,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: AppFont.fontFamily
                                      ),)
                            ],
                          ),
                         )
                      ],
                    ),
                   )
                  ],
                ),
              ),
            );
          });
        });
  }
  
  
  // premium queue
  void premiumQueueBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        backgroundColor: AppColor.primaryColor.withOpacity(0.1),
        useSafeArea: true,
        enableDrag: false,
        builder: (context) {
          return StatefulBuilder(builder: (context, setState) {
            return GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                width: MediaQuery.of(context).size.width * 100/100,
                height: MediaQuery.of(context).size.height * 40/100,
                decoration: BoxDecoration(
                  color: AppColor.secondaryColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  )
                ),
                child: Column(
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height * 3/100),
                    SizedBox(
                    width: MediaQuery.of(context).size.width * 70 /100,
                    child: Text(
                      AppLanguage.premiumQueueText[language],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColor.primaryColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        fontFamily: AppFont.fontFamily
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 70 /100,
                    child: Text(
                      AppLanguage.toSecureText[language],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColor.hintTextinputColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        fontFamily: AppFont.fontFamily
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 3/100),
                  SizedBox(width: MediaQuery.of(context).size.width * 70/100,
                    child: Column(
                    children: [
                       Text(
                         AppLanguage.amountText[language],
                         style: TextStyle(
                           color: AppColor.primaryColor,
                           fontSize: 16,
                           fontWeight: FontWeight.w500,
                           fontFamily: AppFont.fontFamily
                         ),
                       ),
                       Text.rich(
                        TextSpan(children: [
                          TextSpan(
                            text: "₹ ",
                            style: TextStyle(
                           color: AppColor.themeColor,
                           fontSize: 24,
                           fontWeight: FontWeight.w100,
                           fontFamily: AppFont.fontFamily
                         ),
                          ),
                          TextSpan(
                            text: "500",
                            style: TextStyle(
                           color: AppColor.themeColor,
                           fontSize: 24,
                           fontWeight: FontWeight.w700,
                           fontFamily: AppFont.fontFamily
                         ),
                          )
                        ])
                       ),
                      SizedBox(height: MediaQuery.of(context).size.height * 3/100),
                       Text(
                         AppLanguage.oncePaymentText[language],
                         textAlign: TextAlign.center,
                         style: TextStyle(
                           color: AppColor.hintTextinputColor,
                           fontSize: 13,
                           fontWeight: FontWeight.w400,
                           fontFamily: AppFont.fontFamily
                         ),
                       ),
                    ],
                  ),),
                  SizedBox(height: MediaQuery.of(context).size.height * 1/100),
                  AppButton(text: AppLanguage.payText[language],
                  onPress: (){},),
                     SizedBox(height: MediaQuery.of(context).size.height * 1/100),
                  ],
                ),
              ),
            );
          });
        });
  }
  
  // group queue
   void groupQueueBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        backgroundColor: AppColor.primaryColor.withOpacity(0.1),
        useSafeArea: true,
        enableDrag: false,
        builder: (context) {
          return StatefulBuilder(builder: (context, setState) {
            return GestureDetector(
              onTap: () {
                // Navigator.pop(context);
              },
              child: Container(
                width: MediaQuery.of(context).size.width * 100/100,
                height: MediaQuery.of(context).size.height * 25/100,
                decoration: BoxDecoration(
                  gradient: AppColor.lightishBlueGradientColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  )
                ),
                child: Column(
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height * 3/100),
                    SizedBox(
                    width: MediaQuery.of(context).size.width * 70 /100,
                    child: Text(
                      AppLanguage.selectYourGroupTypeText[language],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColor.primaryColor,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        fontFamily: AppFont.fontFamily
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 4/100),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 85/100,
                    child: Wrap(
                      runSpacing: 15.0,
                      children: List.generate(selectedGroupList.length, (index) {
                        return   GestureDetector(
                          onTap: () {
                            setState(() {
                              selectGroup = selectedGroupList[index]['id'];
                            },);
                          },
                          child: Row(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 4/100,
                                height: MediaQuery.of(context).size.width * 4/100,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(color: AppColor.themeColor)
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width * 2/100,
                                      height: MediaQuery.of(context).size.width * 2/100,
                                       decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color:  selectGroup == selectedGroupList[index]['id']?  AppColor.themeColor:AppColor.transparentColors ,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(width: MediaQuery.of(context).size.width * 3/100),
                               Text(
                                selectedGroupList[index]['groupType'],
                                style: TextStyle(
                                  color: AppColor.primaryColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: AppFont.fontFamily
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                    ),
                  ),
                  ],
                ),
              ),
            );
          });
        });
  }
}
