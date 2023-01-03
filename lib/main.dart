import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Authentication/LoginSceen.dart';
import 'Util/themeProvider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context)=> ChangeNotifierProvider (
    create: (context) => themeProvider(),
    builder: (context,_){
      final ThemeProvider = Provider.of<themeProvider>(context);
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeProvider.themeMode,
        theme: MyTheme.lightTheme,
        darkTheme: MyTheme.darkTheme,
        home: const LoginPage(),

      );
    }
  );
}

