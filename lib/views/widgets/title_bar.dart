import 'package:flutter/material.dart';

// ignore: camel_case_types
class titleBar extends StatelessWidget {
  const titleBar({
    Key? key,
    required this.titleText,
  }) : super(key: key);

  final String titleText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back_ios)),
            Text(
              titleText,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
          ],
        ),
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(40 / 2),
            // image: DecorationImage(
            //   image: AssetImage("assets/photoprofile.jpg"),
            // ),
          ),
        ),
      ],
    );
  }
}
