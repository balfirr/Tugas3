import 'package:flutter/material.dart';
import 'package:router_flutter/login_page.dart';

void main() {
  runApp(const appcb());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
@override
  Widget build(BuildContext context){
    return const MaterialApp(
      title: 'appcb',
      home: LoginPage(),
    );
  }
}
  

  // This widget is the root of your application.
  