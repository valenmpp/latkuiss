import 'package:flutter/material.dart';
import 'package:latkuis_172/screens/login_page.dart'; // path diperbarui

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}