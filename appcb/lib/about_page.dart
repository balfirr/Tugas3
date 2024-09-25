import 'package:appcb/home_page.dart';
import 'package:flutter/material.dart';
import 'package:router_flutter/sidemenu.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Page'),
      ),
      body: const Center(
        child: Text('Halaman About'),
      ),
    );
  }
}

ListTile(
  leading: const Icon(Icons.home),
  title: const Text('Home'),
  onTap(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const HomePage(),),
    );
  },
),

ListTile(
  leading: const Icon(Icons.info),
  title: const Text('About'),
  onTap: (){
    Navigator.push(context,
    MaterialPageRoute(builder: (context) => const AboutPage(),) 
   );
  }
)