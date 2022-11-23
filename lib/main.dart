import 'package:flutter/material.dart';
import 'package:where_to_watch/ui/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginPage(),
      title: 'Where 2 Watch',
      debugShowCheckedModeBanner: false,
    );
  }
}
