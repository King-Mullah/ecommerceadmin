import 'package:flutter/material.dart';


class themeProvider extends ChangeNotifier{

  ThemeMode themeMode = ThemeMode.light;
  bool get isDarkMode => themeMode == ThemeMode.dark;

  // bool get isDarkMode {
  //   if (themeMode == ThemeMode.system) {
  //     final brightness = SchedulerBinding.instance.window.platformBrightness;
  //     return brightness == Brightness.dark;
  //   } else {
  //     return themeMode == ThemeMode.dark;
  //   }
  // }

  void toggleSwitch(bool isOn){
    themeMode == isOn ? ThemeMode.dark: ThemeMode.light;
    notifyListeners();
  }
}

class MyTheme {

  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.pink[100],
    colorScheme: ColorScheme.light(),
  );

  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.black38,
    colorScheme: ColorScheme.dark(),
  );
}