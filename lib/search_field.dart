import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  SearchField({this.onSearch, Key? key}) : super(key: key);

  final controller = TextEditingController();
  final Function(String value)? onSearch;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.25,
      child: TextField(
        controller: controller,
        decoration: const InputDecoration(
          border: UnderlineInputBorder(),
          prefixIcon: Icon(Icons.search),
          isDense: true,
        ),
        onEditingComplete: () {
          FocusScope.of(context).unfocus();
          if (onSearch != null) onSearch!(controller.text);
        },
        textInputAction: TextInputAction.search,
        style: const TextStyle(color: Colors.black),
      ),
    );
  }
}
