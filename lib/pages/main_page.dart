import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:routes_provider_learn/models/settings_data.dart';
import 'package:routes_provider_learn/models/user.dart';
import 'package:routes_provider_learn/routes/routes.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugPrint('Building Mian Page');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: context.watch<SettingsData>().appbarcolor,
        automaticallyImplyLeading: false,
        title: const Text('Main Screen'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(Routemanager.settingspage);
            },
            icon: const Icon(
              Icons.settings,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.exit_to_app,
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<UserData>(builder: (context, value, child) {
              return Text(
                'Welcome ' + value.username.toString(),
                style: GoogleFonts.averiaLibre(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
