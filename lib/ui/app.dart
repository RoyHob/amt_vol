import 'package:amt_vol/ui/screens/login_page.dart';
import 'package:flutter/material.dart';

import 'screens/engine_search.dart';

final String logInPage = "/logInPage";
final String engineSearchPage = "/engineSearchPage";

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: logInPage,
      onGenerateRoute: (settings) {
        if (settings.name == engineSearchPage) {
          return MaterialPageRoute(builder: (context) => EngineSearch());
        }
        return MaterialPageRoute(builder: (context) => Login());
      },
    );
  }
}
