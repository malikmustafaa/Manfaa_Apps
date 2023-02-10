import 'package:flutter/material.dart';

import 'colors.dart';

// ignore: camel_case_types
class expansionBtn extends StatelessWidget {
  const expansionBtn(this.title, this.icon, this.widget, {Key? key})
      : super(key: key);
  final String title;
  final IconData icon;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: ColorSelect.buttonColor,
          borderRadius: BorderRadius.circular(18)),
      child: ExpansionTile(
        collapsedIconColor: ColorSelect.buttonColorText,
        iconColor: ColorSelect.buttonColorText,
        title: Row(
          children: [
            Icon(
              icon,
              color: ColorSelect.buttonColorText,
              size: 25,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              title,
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: ColorSelect.buttonColorText),
            ),
          ],
        ),
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                // borderRadius: BorderRadius.circular(12),
                // Border
                border: Border.all(),
                borderRadius: BorderRadius.circular(12)
                // Border End
                ),
            child: widget,
          ),
        ],
      ),
    );
  }
}
