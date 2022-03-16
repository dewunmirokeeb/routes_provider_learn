import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:routes_provider_learn/models/settings_data.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: context.watch<SettingsData>().appbarcolor,
        title: const Text(
          'Settings',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<SettingsData>(
              builder: (context, value, child) {
                return Text(
                  'Choose color scheme for Appbar',
                  style: TextStyle(
                    color: value.appbarcolor,
                  ),
                );
              },
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                context.read<SettingsData>().appbarcolor = Colors.blue;
              },
              child: const Text('Blue'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.purple,
              ),
              onPressed: () {
                context.read<SettingsData>().appbarcolor = Colors.purple;
              },
              child: const Text('Purple'),
            ),
          ],
        ),
      ),
    );
  }
}
