import 'package:flutter/material.dart';
import 'package:manfaa_apps/berbagi_link/berbagi_link.dart';
import 'package:manfaa_apps/contants/color_style.dart';

class IntegrasiPihakKetiga extends StatefulWidget {
  const IntegrasiPihakKetiga({Key? key}) : super(key: key);

  @override
  State<IntegrasiPihakKetiga> createState() => _IntegrasiPihakKetigaState();
}

class _IntegrasiPihakKetigaState extends State<IntegrasiPihakKetiga> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor:
            const Color.fromRGBO(255, 255, 255, 1).withOpacity(0.4),
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pop(BerbagiLink());
                  },
                  icon: Image(
                    image: const AssetImage(
                      'assets/images/iconback.png',
                    ),
                    color: black1Color,
                  ),
                ),
                SizedBox(
                  width: size.width * 0.068,
                ),
                Text(
                  'Integrasi Pihak Ketiga',
                  style: TextStyle(
                    color: black1Color,
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ],
        ),
        actions: [
          IconButton(
            iconSize: 65,
            onPressed: () {},
            icon: CircleAvatar(
              backgroundColor: biruBgColor,
              backgroundImage: const AssetImage(
                "assets/images/orang.png",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
