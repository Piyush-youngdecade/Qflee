import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../utilities/app_color.dart';


class Scanner extends StatefulWidget {
  static String routeName = './Scanner';
  const Scanner({super.key});

  @override
  State<Scanner> createState() => _ScannerState();
}

class _ScannerState extends State<Scanner> {
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
            Expanded(
                flex: 1,
                child: SingleChildScrollView(
                  child: Column(
                    children: [],
                  ),
                ))
          ],
        ),
      )),
    );
  }
}
