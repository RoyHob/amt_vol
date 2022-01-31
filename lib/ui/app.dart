import 'package:amt_vol/ui/screens/login_page.dart';
import 'package:flutter/material.dart';

import 'screens/engine_search.dart';
import 'screens/types_services.dart';

final String logInPage = "/logInPage";
final String engineSearchPage = "/engineSearchPage";
final String typeService = "/typeService";

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
        if (settings.name == typeService) {
          final engineName = settings.arguments as String;
          return MaterialPageRoute(
              builder: (context) => TypeService(
                    engineName: engineName,
                  ));
        }
        return MaterialPageRoute(builder: (context) => Login());
      },
    );
  }
}
