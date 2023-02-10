// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'colors.dart';

// ignore: camel_case_types
class itemKategori extends StatelessWidget {
  const itemKategori({
    required this.name,
    required this.icon,
    required this.tap,
    Key? key,
  }) : super(key: key);

  final String name;
  final String icon;
  final Function tap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          borderRadius: BorderRadius.circular(12),
          onTap: () {
            tap();
          },
          child: Ink(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                color: ColorSelect.secondaryColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Container(
                padding: const EdgeInsets.all(18),
              )),
        ),
        const SizedBox(height: 5),
        Text(
          name,
          style: const TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
