import 'package:flutter/material.dart';

class AppGlobal {
  static Future init() async {
    WidgetsFlutterBinding.ensureInitialized();
  }
}
