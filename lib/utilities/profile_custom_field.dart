import 'package:flutter/material.dart';
import 'app_color.dart';
import 'app_constant.dart';

// ignore: must_be_immutable
class ProfileCustomField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final String hintText;

  final int maxLength;
  final int fillColorStatus;
  final bool readOnly;
  // ignore: prefer_typing_uninitialized_variables
  var keyboardtype;

  ProfileCustomField({
    super.key,
    required this.controller,
    required this.label,
    required this.hintText,
    required this.keyboardtype,
    required this.maxLength,
    required this.fillColorStatus,
    required this.readOnly,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 90 / 100,
          // height: MediaQuery.of(context).size.height * 7 / 100,
          child: TextFormField(
            readOnly: readOnly,
            style: AppConstant.textFilledHeading,
            textAlignVertical: TextAlignVertical.center,
            keyboardType: keyboardtype,
            controller: controller,
            maxLength: maxLength,
            maxLines: 1,
            onTap: () {},
            onTapOutside: (event) => FocusScope.of(context).unfocus(),
            decoration: InputDecoration(
              border: const UnderlineInputBorder(
                borderSide: BorderSide(color: AppColor.lightBorderColor),
              ),
              enabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: AppColor.lightBorderColor),
              ),
              focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: AppColor.lightBorderColor),
              ),
              contentPadding: const EdgeInsets.symmetric(
                vertical: 12,
                horizontal: 10,
              ),
              hintText: hintText,
              counterText: '',
              hintStyle: AppConstant.textFilledProfileHeading,
            ),
          ),
        ),
      ],
    );
  }
}
