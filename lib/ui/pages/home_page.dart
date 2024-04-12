import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_web_test/core/constants/const_colors.dart';
import 'package:flutter_web_test/core/constants/const_size.dart';
import 'package:flutter_web_test/core/cubits/home_cubit/cubit_header_state.dart';
import 'package:flutter_web_test/core/cubits/home_cubit/header_cubit.dart';
import 'package:flutter_web_test/ui/widgets/header_desktop.dart';
import 'dart:js' as js;
import '../../core/constants/const_styles.dart';
import '../../core/constants/const_texts.dart';
import '../../core/constants/sns_links.dart';
import '../../core/utils/injections.dart';
import '../widgets/contact_section.dart';
import '../widgets/drawer_mobile.dart';
import '../widgets/footer.dart';
import '../widgets/header_mobile.dart';
import '../widgets/hover_text.dart';
import '../widgets/main_desktop.dart';
import '../widgets/main_mobile.dart';
import '../widgets/projects_section.dart';
import '../widgets/skills_desktop.dart';
import '../widgets/skills_mobile.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final List<GlobalKey> navbarKeys = List.generate(4, (index) => GlobalKey());

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HeaderCubit, CubitHeaderStates>(
      builder: (context, state) => Scaffold(
        key: scaffoldKey,
        endDrawer:
            MediaQuery.sizeOf(context).width >= ConstSize.kMinDesktopWidth
                ? null
                : DrawerMobile(onNavItemTap: (int navIndex) {
                    scaffoldKey.currentState?.closeEndDrawer();
                    scrollToSection(navIndex);
                  }),
        appBar: PreferredSize(
          preferredSize:
              Size.fromHeight(MediaQuery.sizeOf(context).height / 8),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            height: state is HeaderInVisible ? 0 : MediaQuery.sizeOf(context).height / 8,
            color: ConstColors.kAppBarBG,
            child: state is HeaderInVisible
                ? const SizedBox.shrink()
                : MediaQuery.sizeOf(context).width >= ConstSize.kMinDesktopWidth
                    ? HeaderDesktop(onNavMenuTap: (int navIndex) =>  scrollToSection(navIndex))
                    : HeaderMobile(
                        onLogoTap: () {},
                        onMenuTap: () {
                          scaffoldKey.currentState?.openEndDrawer();
                        },
                      ),
          ),
        ),
        body: SingleChildScrollView(
          controller: sl<HeaderCubit>().scrollController,
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(key: navbarKeys.first),

              if (MediaQuery.sizeOf(context).width >=
                  ConstSize.kMinDesktopWidth)
                const MainDesktop()
              else
                const MainMobile(),

              // SKILLS
              Container(
                key: navbarKeys[1],
                width: MediaQuery.sizeOf(context).width,
                padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
                color: ConstColors.bgLight1,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // title
                    HoverText(
                      text:
                      "What I can do",
                      style: ConstStyles.headerTextStyle,
                      hoverStyle: ConstStyles.hoverTextStyle, onTap: () {  },
                    ),

                    const SizedBox(height: 50),

                    // platforms and skills
                    if (MediaQuery.sizeOf(context).width >=
                        ConstSize.kMedDesktopWidth)
                      const SkillsDesktop()
                    else
                      const SkillsMobile(),
                  ],
                ),
              ),
              const SizedBox(height: 30),

              // PROJECTS
              ProjectsSection(
                key: navbarKeys[2],
              ),

              const SizedBox(height: 30),

              // CONTACT
              ContactSection(
                key: navbarKeys[3],
              ),
              const SizedBox(height: 30),

              // FOOTER
              const Footer(),
            ],
          ),
        ),
      ),
    );
  }
  void scrollToSection(int navIndex) {
    if (navIndex == 4) {
      // open a blog page
      js.context.callMethod('open', [SnsLinks.blog]);
      return;
    }

    final key = navbarKeys[navIndex];
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}
