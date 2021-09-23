import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'utils/constants.dart';
import 'utils/routes.dart';
import 'utils/styles.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Constants.appName,
      routes: Routes.routes,
      themeMode: ThemeMode.system,
      theme: MyStyles.lightTheme,
      darkTheme: MyStyles.darkTheme,
      home: const Text("Hello"),
    );
  }
}
