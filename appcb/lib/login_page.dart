import 'package:flutter/material.dart';
import 'package:route_flutter/home_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  // ignore: prefer_typing_unitialized_variables
  var namauser;
}

void _saveUsername() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString('username', _usernameController.text);
}

_showInput(namacontroller, placeholder, isPassword) {
  return TextField(
    undoController: namacontroller,
    obscureText: isPassword,
    decoration: InputDecoration(
      hintText: placeholder,
    ),
  );
}

_showDialog(pesan, alamat) {
  return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(pesan),
          actions: [
            TextButton(
                child: const Text('OK'),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => alamat,
                      ));
                }),
          ],
        );
      });
}
