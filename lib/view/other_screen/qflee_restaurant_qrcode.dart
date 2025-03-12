import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import '../../utilities/app_button.dart';
import '../../utilities/app_color.dart';
import '../../utilities/app_constant.dart';
import '../../utilities/app_font.dart';
import '../../utilities/app_header.dart';
import '../../utilities/app_language.dart';
import '../../utilities/app_image.dart';

class QfleeResturantQRCodeShare extends StatefulWidget {
  static String routeName = './QfleeResturantQRCodeShare';
  const QfleeResturantQRCodeShare({super.key});

  @override
  State<QfleeResturantQRCodeShare> createState() =>
      _QfleeResturantQRCodeShareState();
}

class _QfleeResturantQRCodeShareState extends State<QfleeResturantQRCodeShare> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: AppColor.themeColor,
        statusBarIconBrightness: Brightness.light));
    return Scaffold(
      body: SafeArea(
          child: Container(
        color: AppColor.secondaryColor,
        width: MediaQuery.of(context).size.width * 100 / 100,
        height: MediaQuery.of(context).size.height * 100 / 100,
        child: Column(
          children: [
            Container(
              color: AppColor.themeColor,
              width: MediaQuery.of(context).size.width * 100 / 100,
              height: MediaQuery.of(context).size.height * 12 / 100,
              child: Column(
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height * 3/100),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 90/100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 6/100,
                          height: MediaQuery.of(context).size.width * 6/100,
                          child: Image.asset(AppImage.backIcon,color: AppColor.secondaryColor,),
                        ),
                        Text(AppLanguage.qfleeRestaurantText[language],
                        style: TextStyle(
                          color: AppColor.secondaryColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          fontFamily: AppFont.fontFamily
                        ),),
                        Container(
                          width: MediaQuery.of(context).size.width * 6/100,
                          height: MediaQuery.of(context).size.width * 6/100,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 1/100),
                  SizedBox(
                    width: MediaQuery.of(context).size.width *90/100,
                    child: Text(AppLanguage.trackYourStanderText[language],
                    textAlign: TextAlign.center,
                        style: TextStyle(
                          color: AppColor.secondaryColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w100,
                          fontFamily: AppFont.fontFamily
                        ),),
                  )
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 2/100),
            Expanded(
                flex: 1,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        child: Stack(
                         children: [
                           Container(
                             width: MediaQuery.of(context).size.width * 85/100,
                             height: MediaQuery.of(context).size.height * 70/100,
                             decoration: BoxDecoration(
                               color: AppColor.lightishColor,
                               borderRadius: BorderRadius.circular(12)
                             ),
                             child: Column(
                               children: [
                                 SizedBox(height: MediaQuery.of(context).size.height * 3/100),
                                 Text(AppLanguage.showThisQrText[language],
                                 textAlign: TextAlign.center,
                                 style: TextStyle(
                                     color: AppColor.primaryColor,
                                     fontSize: 16,
                                     fontWeight: FontWeight.w500,
                                     fontFamily: AppFont.fontFamily
                               ),),
                               SizedBox(height: MediaQuery.of(context).size.height * 2/100),
                               Container(
                                 width: MediaQuery.of(context).size.width * 40/100,
                                 height: MediaQuery.of(context).size.width * 40/100,
                                 decoration: BoxDecoration(
                                   image: DecorationImage(image: AssetImage("./assets/icons/qrcode.png"),fit: BoxFit.cover)
                                 ),
                               ),
                                SizedBox(height: MediaQuery.of(context).size.height * 2/100),
                               Container(
                                     padding: EdgeInsets.symmetric(
                                       vertical: MediaQuery.of(context).size.height *1/100,
                                       horizontal: MediaQuery.of(context).size.width *10/100,
                                     ),
                                     decoration: BoxDecoration(
                                       color: AppColor.themeColor,
                                       borderRadius: BorderRadius.circular(18)
                                     ),
                                     child: Text("S1234",
                                     textAlign: TextAlign.center,
                                     style: TextStyle(
                                         color: AppColor.secondaryColor,
                                         fontSize: 30,
                                         fontWeight: FontWeight.w700,
                                         fontFamily: AppFont.fontFamily
                                   ),),
                                ),
                                SizedBox(height: MediaQuery.of(context).size.height * 2/100),
                                 Text("28 February 2025, 10:00 AM - 02:00 PM",
                                 textAlign: TextAlign.center,
                                 style: TextStyle(
                                     color: AppColor.silverColor,
                                     fontSize: 14,
                                     fontWeight: FontWeight.w600,
                                     fontFamily: AppFont.fontFamily
                               ),),
                               SizedBox(height: MediaQuery.of(context).size.height * 1/100),
                               Text("The Golden Fork",
                                 textAlign: TextAlign.center,
                                 style: TextStyle(
                                     color: AppColor.primaryColor,
                                     fontSize: 14,
                                     fontWeight: FontWeight.w600,
                                     fontFamily: AppFont.fontFamily
                               ),),
                               Text("245 Maple Street, Rivertown, TX 75001",
                                 textAlign: TextAlign.center,
                                 style: TextStyle(
                                     color: AppColor.silverColor,
                                     fontSize: 12,
                                     fontWeight: FontWeight.w500,
                                     fontFamily: AppFont.fontFamily
                               ),),
                               SizedBox(height: MediaQuery.of(context).size.height * 1/100),
                               Container(width: MediaQuery.of(context).size.width * 20/100,
                               child: Image.asset(AppImage.qfleeImage)),
                               Text("Next Gen Q",
                                 textAlign: TextAlign.center,
                                 style: TextStyle(
                                     color: AppColor.themeColor,
                                     fontSize: 13,
                                     fontWeight: FontWeight.w500,
                                     fontFamily: AppFont.fontFamily
                               ),),
                               Spacer(),
                               Container(
                               width: MediaQuery.of(context).size.width * 85/100,
                               height: MediaQuery.of(context).size.height * 15/100,
                               decoration: BoxDecoration(
                                 gradient: AppColor.darkishGradientColor,
                                 borderRadius: BorderRadius.only(
                                   bottomLeft: Radius.circular(12),
                                   bottomRight: Radius.circular(12),
                                 )
                               ),
                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.end,
                                 children: [
                                   Container(
                                     width: MediaQuery.of(context).size.width * 18/100,
                                     height: MediaQuery.of(context).size.width * 18/100,
                                     margin: EdgeInsets.only(top: 1,bottom: 20),
                                     decoration: BoxDecoration(
                                       shape: BoxShape.circle,
                                       border: Border.all(color: AppColor.secondaryColor)
                                     ),
                                     child: Column(
                                       mainAxisAlignment: MainAxisAlignment.center,
                                       children: [
                                          Text("Up to",
                                           textAlign: TextAlign.center,
                                           style: TextStyle(
                                               color: AppColor.secondaryColor,
                                               fontSize: 10,
                                               fontWeight: FontWeight.w500,
                                               fontFamily: AppFont.fontFamily
                                         ),),
                                         Text("75 %",
                                           textAlign: TextAlign.center,
                                           style: TextStyle(
                                               color: AppColor.secondaryColor,
                                               fontSize: 16,
                                               fontWeight: FontWeight.w700,
                                               fontFamily: AppFont.fontFamily
                                         ),),
                                          Text("OFF",
                                           textAlign: TextAlign.center,
                                           style: TextStyle(
                                               color: AppColor.secondaryColor,
                                               fontSize: 10,
                                               fontWeight: FontWeight.w500,
                                               fontFamily: AppFont.fontFamily
                                         ),),
                                       ],
                                     ),
                                   ),
                                   SizedBox(width: MediaQuery.of(context).size.width * 2/100),
                                  Container(
                                   margin: EdgeInsets.only(top: 12),
                                    child: Column(
                                     children: [
                                        Text("Glow Up",
                                             textAlign: TextAlign.center,
                                             style: TextStyle(
                                                 color: AppColor.secondaryColor,
                                                 fontSize: 20,
                                                 fontWeight: FontWeight.w700,
                                                 fontFamily: AppFont.fontFamily
                                           ),),
                                            Text("Sale",
                                             textAlign: TextAlign.center,
                                             style: TextStyle(
                                                 color: AppColor.secondaryColor,
                                                 fontSize: 20,
                                                 fontWeight: FontWeight.w700,
                                                 fontFamily: AppFont.fontFamily
                                           ),),
                                           SizedBox(height: MediaQuery.of(context).size.height * 1/100),
                                           Container(
                                             padding: EdgeInsets.symmetric(vertical: 5,horizontal: 18),
                                             decoration: BoxDecoration(
                                               color: AppColor.secondaryColor,
                                               borderRadius: BorderRadius.circular(50)
                                             ),
                                             child:  Text("Buy now",
                                             textAlign: TextAlign.center,
                                             style: TextStyle(
                                                 color: AppColor.lightishGreenColor,
                                                 fontSize: 12,
                                                 fontWeight: FontWeight.w600,
                                                 fontFamily: AppFont.fontFamily
                                           ),)
                                           )
                                      ],
                                    ),
                                  ),
                                   SizedBox(width: MediaQuery.of(context).size.width * 2/100),
                                 ],
                               ),
                             ),
                             ],
                             ),
                                ),
                               Positioned(
                               top: MediaQuery.of(context).size.height * 52/100,
                               left: 1,
                               child:  Container(
                               width: MediaQuery.of(context).size.width * 40/100,
                               height: MediaQuery.of(context).size.height * 20/100,
                               decoration: BoxDecoration(
                                 image: DecorationImage(image: AssetImage("./assets/icons/productImage.png"),fit: BoxFit.fitHeight)
                               ),
                             )),
                         ],
                        ),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height * 2/100),
                      Container(
                           width: MediaQuery.of(context).size.width * 90/100,
                           height: MediaQuery.of(context).size.height * 7/100,
                           decoration: BoxDecoration(
                             color: AppColor.themeColor,
                             borderRadius: BorderRadius.circular(4)
                           ),
                           child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 6/100,
                              height: MediaQuery.of(context).size.width * 6/100,
                              child: Image.asset(AppImage.shareQrImage),
                            ),
                            SizedBox(width: MediaQuery.of(context).size.width * 2/100),
                           Text(AppLanguage.shareText[language],
                              textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: AppColor.secondaryColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: AppFont.fontFamily
                                  ),),
                           ],),
                         )
                   
                    ],
                  ),
                ))
          ],
        ),
      )),
    );
  }
}


 