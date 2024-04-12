import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'injections.dart' as di;

class MainMethods {
  static Future<void> init() async {
    // init binding
    WidgetsFlutterBinding.ensureInitialized();

    // set the orientation to portrait only (there is no need for landscape)
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);

    await di.init();
  }
}
