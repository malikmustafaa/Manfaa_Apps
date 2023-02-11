import 'package:flutter/material.dart';

import '../../../../contants/color_style.dart';
import '../berbagi_link_page.dart';

// ignore: camel_case_types
class PratinjauPage extends StatefulWidget {
  const PratinjauPage({Key? key}) : super(key: key);

  @override
  State<PratinjauPage> createState() => _PratinjauPageState();
}

class _PratinjauPageState extends State<PratinjauPage> {
  @override
  Widget build(BuildContext context) {
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
                    Navigator.of(context).pop(BerbagilinkPage());
                  },
                  icon: Image(
                    image: const AssetImage(
                      'assets/images/iconback.png',
                    ),
                    color: black1Color,
                  ),
                ),
                const Text(
                  'Pratinjau/Preview',
                  style: TextStyle(fontSize: 20,color: Colors.black, fontWeight: FontWeight.bold,fontFamily: 'ubuntu'),
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
      body: Center(
          child: Image.asset(
        "assets/images/group.png",
        scale: 0.08,
      )),
    );
  }
}
