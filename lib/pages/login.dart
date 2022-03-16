import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:routes_provider_learn/models/user.dart';
import 'package:routes_provider_learn/routes/routes.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final TextEditingController usernamecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    debugPrint('Building LoginPage');
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Center(
          child: Text(
            'Login',
            style: GoogleFonts.arsenal(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                keyboardType: TextInputType.text,
                controller: usernamecontroller,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 3,
                      color: Colors.green,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 3,
                      color: Colors.red,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  labelText: 'please enter your user name',
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(Routemanager.mainpage);
                context.read<UserData>().username = usernamecontroller.text;
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
                elevation: 0,
              ),
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
