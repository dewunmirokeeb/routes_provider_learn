import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:routes_provider_learn/models/settings_data.dart';
import 'package:routes_provider_learn/routes/routes.dart';

import 'models/user.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugPrint('Building My App');
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => UserData(),
        ),
        ChangeNotifierProvider(
          create: (context) => SettingsData(),
        ),
      ],
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: Colors.orange,
            appBarTheme: const AppBarTheme(color: Colors.green),
          ),
          initialRoute: Routemanager.login,
          onGenerateRoute: Routemanager.generateroute,
        );
      },
    );
  }
}
