import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'utilities/app_color.dart';
import 'utilities/app_font.dart';
import 'utilities/routes.dart';
import 'view/authentication/splash_screen.dart';
import 'view/other_screen/qflee_resturant.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Qflee',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: AppFont.fontFamily,
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: AppColor.themeColor),
      ),
      routes: routes,
      home:  QfleeResturant(),
    );
  }
}
