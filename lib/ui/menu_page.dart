import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(
      child: Column(
        children: const [
          Text('Menu page')
        ],
      ),
    ));
  }
}
