// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class linkList extends StatefulWidget {
  const linkList(this.text, {Key? key}) : super(key: key);
  final String text;

  @override
  State<linkList> createState() => _linkListState();
}

class _linkListState extends State<linkList> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Checkbox(
                value: isChecked,
                activeColor: Colors.amber,
                onChanged: (newBool) {
                  setState(() {
                    isChecked = newBool;
                  });
                },
              ),
              const Text("bagi.to/text"),
            ],
          ),
          Row(
            children: const [
              Icon(
                Icons.filter_none_outlined,
                color: Colors.black,
              ),
              Icon(
                Icons.edit_document,
                color: Colors.black,
              ),
              Icon(
                Icons.screen_share_outlined,
                color: Colors.black,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
