import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery/providers/main_provider.dart';
import 'package:grocery/ui/screens/main/main_screen.dart';
import 'package:provider/provider.dart';

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
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => MainProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: Constants.appName,
        routes: Routes.routes,
        themeMode: ThemeMode.light,
        theme: MyStyles.lightTheme.copyWith(
          textTheme: GoogleFonts.oxygenTextTheme(
            Theme.of(context).textTheme,
          ),
        ),
        darkTheme: MyStyles.darkTheme.copyWith(
          textTheme: GoogleFonts.oxygenTextTheme(
            Theme.of(context).textTheme,
          ),
        ),
        home: MainScreen(),
      ),
    );
  }
}
