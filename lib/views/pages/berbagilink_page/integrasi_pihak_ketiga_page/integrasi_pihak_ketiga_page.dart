import 'package:flutter/material.dart';

import 'package:manfaa_apps/contants/color_style.dart';
import 'package:manfaa_apps/views/pages/berbagilink_page/berbagi_link_page.dart';
import 'package:manfaa_apps/views/pages/berbagilink_page/profile_page/profil_berbagilink_page.dart';

class IntegrasiPihakKetigaPage extends StatefulWidget {
  const IntegrasiPihakKetigaPage({Key? key}) : super(key: key);

  @override
  State<IntegrasiPihakKetigaPage> createState() =>
      _IntegrasiPihakKetigaPageState();
}

class _IntegrasiPihakKetigaPageState extends State<IntegrasiPihakKetigaPage> {
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
                  'Integrasi Pihak Ketiga',
                  style: TextStyle(
                      fontSize: 18.5,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'ubuntu'),
                ),
              ],
            ),
          ],
        ),
        actions: [
          IconButton(
            iconSize: 65,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProfilePage()),
              );
            },
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
