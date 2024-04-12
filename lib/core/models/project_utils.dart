import 'package:flutter_web_test/core/constants/const_texts.dart';

class ProjectUtils {
  final String image;
  final String title;
  final String subtitle;
  final String? androidLink;
  final String? iosLink;
  final String? webLink;

  final List<String> tools;
  final String id;
  final List<String> type;

  ProjectUtils({
    required this.tools,
    required this.id,
    required this.type,
    required this.image,
    required this.title,
    required this.subtitle,
    this.androidLink,
    this.iosLink,
    this.webLink,
  });
}

// ###############
// WORK PROJECTS
List<ProjectUtils> workProjectUtils = [
  ProjectUtils(
    image: 'assets/projects/w01.png',
    title: ConstText.verdenTitle,
    subtitle: ConstText.verdenDesc,
    androidLink: ConstText.verdenAndroidLink,
    iosLink: ConstText.verdenAppleLink,
    id: "1",
    type: ["Application"],
    tools: ["Flutter", "Firebase", "IOS", "Android", "E-Commerce"],
  ),
  ProjectUtils(
      image: 'assets/projects/w02.png',
      id: "2",
      type: ["Application"],
      title: "Fit-Sync",
      subtitle: ConstText.fitSyncDesc,
      androidLink: ConstText.fitSyncAndroidLink,
      tools: ["Flutter", "Firebase", "IOS", "Android", "Fitness", "Workout"]),
  ProjectUtils(
    id: "3",
    type: ["Application"],
    title: "Medica Remainder",
    subtitle: ConstText.medicaDesc,
    androidLink: ConstText.medicaAndroidLink,
    iosLink: ConstText.medicaAppleLink,
    webLink: ConstText.medicaWeb,
    tools: ["Flutter", "Firebase", "IOS", "Android"],
    image: 'assets/projects/w03.jpeg',
  ),
  ProjectUtils(
    id: "4",
    type: ["Application"],
    title: "Baby Care 360",
    subtitle: ConstText.babyDesc,
    androidLink: ConstText.babyAndroidLink,
    iosLink: ConstText.babyAppleLink,
    webLink: ConstText.babyWeb,
    tools: ["Flutter", "Firebase", "IOS", "Android"],
    image: 'assets/projects/w03.jpeg',
  ),
  ProjectUtils(
    id: "5",
    type: ["Application"],
    title: "VehiMan",
    subtitle: ConstText.vehimanDesc,
    androidLink: ConstText.vehimanAndroidLink,
    iosLink: ConstText.vehimanAppleLink,
    webLink: ConstText.vehimanWeb,
    tools: ["Flutter", "Firebase", "IOS", "Android"],
    image: 'assets/projects/w03.jpeg',
  ),
  ProjectUtils(
    id: "6",
    type: ["Application"],
    title: "Pharmapedia Pro",
    webLink: ConstText.pharmapediaWeb,
    subtitle: ConstText.pharmapediaDesc,
    //  appStoreLink: ConstTexts.pharmapediaAppleLink,
    androidLink: ConstText.pharmapediaAndroidLink,
    tools: ["Flutter", "Sqlite", "Android"],
    image: 'assets/projects/w03.jpeg',
  ),
  ProjectUtils(
    id: "7",
    type: ["Application"],
    title: "Pak Lucky Draw",
    subtitle: ConstText.luckyDesc,
    androidLink: ConstText.luckyAndroidLink,
    tools: ["Flutter", "Firebase", "Android"],
    image: 'assets/projects/w03.jpeg',
  ),ProjectUtils(
    id: "8",
    type: ["Application"],
    title: "Auto Master",
    subtitle: ConstText.autoDesc,
    androidLink: ConstText.autoGitHub,
    tools: ["Flutter", "Firebase", "Android"],
    image: 'assets/projects/w03.jpeg',
  ),
];
