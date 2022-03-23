import 'dart:convert';

import 'package:best_flutter_ui_templates/hotel_booking/hotel_home_screen.dart';
import 'package:flutter/material.dart';
import 'package:best_flutter_ui_templates/app_theme.dart';
import 'package:flutter/services.dart';
import 'package:best_flutter_ui_templates/login.dart';
import 'custom_drawer/home_drawer.dart';
import 'package:http/http.dart' as http;

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

Future<http.Response> testCall() async {
  return http.get(Uri.https("https://blockchain.info", 'ticket'));
}

class _LoginState extends State<Login> {
  @override
  void initState() {
    super.initState();
  }

  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  '',
                  style: TextStyle(
                      color: Colors.orange,
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                )),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Login',
                  style: TextStyle(fontSize: 20),
                )),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: Text(testCall())),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Benutzername',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Passwort',
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                //forgot password screen
              },
              child: const Text(
                'Passwort vergessen?',
              ),
            ),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: const Text('Login'),
                  onPressed: () {
                    print(nameController.text);
                    print(passwordController.text);
                  },
                )),
            Row(
              children: <Widget>[
                const Text('Noch keinen Account?'),
                TextButton(
                  child: Text(
                    'Registrieren',
                    style: TextStyle(fontSize: 12),
                  ),
                  onPressed: () {},
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ],
        ));
  }

  // API
  Future<void> loginAPI() async {
    if (passwordController.text.isNotEmpty && nameController.text.isNotEmpty) {
      final response = await http.post(
          Uri.parse("https://dasistallesnurge.cloud/user/register"),
          body: ({
            'usermail': nameController.text,
            'passhash': passwordController.text
          }));

      if (response.statusCode == 200) {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => HotelHomeScreen()));
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("Ungültige Eingabe Credential")));
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Ungültige Eingabe schwarzes Feld")));
    }
    ;
  }

//API Flutter Seite

  Future<http.Response> fetchAlbum() {
    return http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));
  }

  // API
  Future<void> getloginAPI() async {
    if (passwordController.text.isNotEmpty && nameController.text.isNotEmpty) {
      final response = await http.post(
          Uri.parse("https://dasistallesnurge.cloud/user/register"),
          body: ({
            'usermail': nameController.text,
            'passhash': passwordController.text
          }));

      if (response.statusCode == 200) {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => HotelHomeScreen()));
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("Ungültige Eingabe Credential")));
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Ungültige Eingabe schwarzes Feld")));
    }
    ;
  }
}
