import 'package:flutter/material.dart';

import '../ui/all_page.dart';

class AllButton extends StatelessWidget {
  const AllButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => AllPage())); //TODO change this
      },
      child: Container(
        height: MediaQuery.of(context).size.height * 0.1,
        width: MediaQuery.of(context).size.width * 0.1,
        padding: const EdgeInsets.all(16.0),
        margin: const EdgeInsets.all(10),
        color: const Color.fromRGBO(185, 237, 240, 1),
        child: const Center(
          child: Text(
            "All",
            style: TextStyle(fontSize: 14),
          ),
        ),
      ),
    );
  }
}