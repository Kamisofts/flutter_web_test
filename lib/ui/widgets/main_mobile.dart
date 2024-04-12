import 'package:flutter/material.dart';
import 'package:flutter_web_test/core/constants/const_styles.dart';
import 'package:flutter_web_test/core/constants/const_texts.dart';
import 'package:flutter_web_test/ui/widgets/rotation_square.dart';

import '../../core/constants/const_colors.dart';
import 'hover_text.dart';


class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);
    final screenHeight = screenSize.height;
    final screenWidth = screenSize.width;

    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 40.0,
        vertical: 30.0,
      ),
      height: screenHeight,
      constraints: const BoxConstraints(
        minHeight: 560.0,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: screenHeight/25,),
          // avatar img
          ShaderMask(
            shaderCallback: (bounds) {
              return LinearGradient(colors: [
                ConstColors.kScaffoldBG.withOpacity(0),
                ConstColors.kScaffoldBG.withOpacity(0),
              ]).createShader(bounds);
            },
            blendMode: BlendMode.srcATop,
            child:     SizedBox(width: screenWidth ,
              child: RotationSquare(
                child:
                Image.asset(
                  "assets/my_flutter_avatar.png",

                ),
              ),
            ),
          ),
          SizedBox(height: screenHeight/25,),
          // intro message
           HoverText(
            text:  ConstText.introText,
            style: ConstStyles.headerTextStyle,
            hoverStyle: ConstStyles.hoverTextStyle, onTap: () {  },
          ),
          const SizedBox(height: 15),
          // contact btn
          SizedBox(
            width: 190.0,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text("Get in touch"),
            ),
          )
        ],
      ),
    );
  }
}
