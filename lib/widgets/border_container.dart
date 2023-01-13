import 'package:flutter/material.dart';
import 'package:manfaa_apps/contants/color_style.dart';
// import 'package:manfaa_apps/contants/color_style.dart';

class BorderContainer extends StatefulWidget {
  const BorderContainer({Key? key}) : super(key: key);

  @override
  State<BorderContainer> createState() => _BorderContainerState();
}

class _BorderContainerState extends State<BorderContainer> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: 395,
      height: 30,
      decoration: const BoxDecoration(
        border: Border(
          left: BorderSide(
            color: Colors.black,
            width: 1,
          ),
          right: BorderSide(
            color: Colors.black,
            width: 1,
          ),
          bottom: BorderSide(
            color: Colors.black,
            width: 1,
          ),
        ),
        // color: whiteColor,
        // borderRadius: BorderRadius.only(
        //     bottomRight: Radius.circular(20.0),
        //     bottomLeft: Radius.circular(20.0)),
      ),
    );
  }
}
