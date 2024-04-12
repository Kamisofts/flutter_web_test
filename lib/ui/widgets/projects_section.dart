import 'package:flutter/material.dart';
import 'package:flutter_web_test/core/constants/const_colors.dart';
import '../../core/constants/const_styles.dart';
import '../../core/models/project_utils.dart';
import 'hover_text.dart';
import 'project_card.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenWidth,
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      child: Column(
        children: [
          // Work projects title
          HoverText(
            text:
            "Work projects",
            style: ConstStyles.headerTextStyle,
            hoverStyle: ConstStyles.hoverTextStyle, onTap: () {  },
          ),


          const SizedBox(height: 50),
          // Work projects cards
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 900),
            child: Wrap(
              spacing: 25,
              runSpacing: 25,
              children: [
                for (int i = 0; i < workProjectUtils.length; i++)
                  ProjectCardWidget(
                    project: workProjectUtils[i],
                  ),
              ],
            ),
          ),
          const SizedBox(height: 80),

        ],
      ),
    );
  }
}
