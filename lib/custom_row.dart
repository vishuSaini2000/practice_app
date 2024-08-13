import 'package:flutter/material.dart';
import 'package:practice_app/setting_text.dart';

class CustomRow extends StatelessWidget {
  final IconData firstIcon;
  final double firstSizedBoxWidth;
  final String settingText;
  final double secondSizedBoxWidth;
  final IconData lastIcon;

 const  CustomRow({super.key, 
    required this.firstIcon,
    this.firstSizedBoxWidth = 12.0,
    required this.settingText,
    required this.secondSizedBoxWidth,
    this.lastIcon = Icons.chevron_right,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: 50,
          child: Padding(
            padding: const EdgeInsets.only(left: 0.0),
              child: Row(
                children: [
                  Icon(firstIcon, size: 30),
                  SizedBox(width: firstSizedBoxWidth),
                  SettingTextWidget(text: settingText),
                  SizedBox(width: secondSizedBoxWidth),
                  Icon(lastIcon, size: 30),
                ],
              ),
            ),
          ),
      ],
    );
  }
}

// Assuming BottomBorder and SettingTextWidget are custom widgets defined elsewhere in your code.
