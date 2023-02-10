import 'package:flutter/material.dart';

import 'colors.dart';

// ignore: camel_case_types
class textField extends StatelessWidget {
  const textField(this.text, {Key? key}) : super(key: key);

  final String text;
  @override
  Widget build(BuildContext context) {
    return TextField(
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(12)),
            focusedBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(width: 2, color: ColorSelect.primaryColor),
                borderRadius: BorderRadius.circular(12)),
            border: const OutlineInputBorder(),
            hintText: text,
            hintStyle: TextStyle(color: Colors.grey.shade400, fontSize: 14)));
  }
}
