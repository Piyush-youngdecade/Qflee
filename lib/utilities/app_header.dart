import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'app_color.dart';
import 'app_font.dart';
import 'app_image.dart';

class AppHeader extends StatelessWidget {
  final String text;
  final Function onPress;
  const AppHeader({
    super.key,
    required this.text,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 90 / 100,
      margin: EdgeInsets.symmetric(vertical: 7),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              onPress();
            },
            child: Container(
              height: MediaQuery.of(context).size.width * 6 / 100,
              width: MediaQuery.of(context).size.width * 6 / 100,
              child: Image.asset(
                AppImage.backIcon,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text(text,
              style: const TextStyle(
                  color: AppColor.primaryColor,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  fontFamily: AppFont.fontFamily)),
          Container(
            height: MediaQuery.of(context).size.width * 7 / 100,
            width: MediaQuery.of(context).size.width * 7 / 100,
          ),
        ],
      ),
    );
  }
}
