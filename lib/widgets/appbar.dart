import 'package:flutter/material.dart';
import 'package:manfaa_apps/contants/color_style.dart';
import 'package:manfaa_apps/contants/text.dart';

class Appbar extends StatefulWidget {
  const Appbar({Key? key}) : super(key: key);

  @override
  State<Appbar> createState() => _AppbarState();
}

class _AppbarState extends State<Appbar> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1).withOpacity(0.4),
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image(
                image: const AssetImage(
                  'assets/images/iconback.png',
                ),
                color: black1Color,
              ),
              SizedBox(
                width: size.width * 0.068,
              ),
              Text(
                SetText.berbagilink,
                style: appbarStyle,
              ),
            ],
          ),
        ],
      ),
      actions: [
        IconButton(
          iconSize: 65,
          onPressed: () {},
          icon: const CircleAvatar(
            backgroundImage: AssetImage("assets/images/orang.png"),
          ),
        ),
      ],
    );
  }
}
