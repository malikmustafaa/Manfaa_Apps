import 'package:flutter/material.dart';

import '../../contants/color_style.dart';

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
                color: secondaryColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Container(
                padding: const EdgeInsets.all(18),
                // child: Image.asset("assets/${icon}"),
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
