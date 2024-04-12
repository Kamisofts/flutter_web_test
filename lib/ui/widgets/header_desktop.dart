import 'package:flutter/material.dart';
import 'package:flutter_web_test/core/constants/const_colors.dart';
import 'package:flutter_web_test/ui/widgets/site_logo.dart';
import '../../core/constants/const_styles.dart';
import '../../core/constants/nav_items.dart';

class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop({
    super.key,
    required this.onNavMenuTap,
  });
  final Function(int) onNavMenuTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height / 8,
      margin: const EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 20.0,
      ),
      width: double.maxFinite,
      decoration: ConstStyles.kHeaderDecoration,
      child: Row(
        children: [
          SiteLogo(
            onTap: () {},
          ),
          const Spacer(),
          for (int i = 0; i < navTitles.length; i++)
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: TextButton(
                onPressed: () {
                  onNavMenuTap(i);
                },
                child: Text(
                  navTitles[i],
                  style: ConstStyles.headerTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,),


                ),
              ),
            ),
        ],
      ),
    );
  }
}
