import 'package:flutter/material.dart';
import 'package:flutter_web_test/core/constants/const_texts.dart';
import 'package:flutter_web_test/ui/widgets/rotation_square.dart';

import '../../core/constants/const_colors.dart';
import '../../core/constants/const_styles.dart';
import 'hover_text.dart';


class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);
    final screenHeight = screenSize.height;
    final screenWidth = screenSize.width;

    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 20.0,
      ),
      height: screenHeight / 1.2,
      constraints: const BoxConstraints(
        minHeight: 350.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // intro message

               HoverText(
                text:  ConstText.introText,
                style: ConstStyles.headerTextStyle,
                hoverStyle: ConstStyles.hoverTextStyle, onTap: () {  },
              ),

              const SizedBox(height: 15),
              // contact btn
              SizedBox(
                width: 250.0,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("Get in touch"),
                ),
              )
            ],
          ),
          // avatar img

          SizedBox(
            width: screenWidth / 2,
            child: RotationSquare(
              child:
            Image.asset(
              "assets/my_flutter_avatar.png",
            ),
            ),
          ),
        ],
      ),
    );
  }
}
