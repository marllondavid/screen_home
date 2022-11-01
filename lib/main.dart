import 'package:flutter/material.dart';
import 'package:home_screen_/login_screen.dart';

main() => runApp(const Delivery());

class Delivery extends StatelessWidget {
  const Delivery({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
