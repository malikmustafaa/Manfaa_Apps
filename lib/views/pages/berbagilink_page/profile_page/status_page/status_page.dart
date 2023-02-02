import 'package:flutter/material.dart';

import 'package:manfaa_apps/contants/color_style.dart';
import 'package:manfaa_apps/contants/text.dart';
import 'package:manfaa_apps/views/pages/berbagilink_page/profile_page/profil_berbagilink_page.dart';

class StatusPage extends StatefulWidget {
  const StatusPage({Key? key}) : super(key: key);

  @override
  State<StatusPage> createState() => _StatusState();
}

class _StatusState extends State<StatusPage> {
  @override
  Widget build(BuildContext context) {
    // double h = MediaQuery.of(context).size.height;
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
                    Navigator.of(context).pop(const ProfilePage());
                  },
                  icon: Image(
                    image: const AssetImage(
                      'assets/images/iconback.png',
                    ),
                    color: black1Color,
                  ),
                ),
                Text(
                  'Status',
                  style: appbarStyle,
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
      body: Container(
        height: size.height,
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 8,
        ),
        child: Stack(
          children: [
            _listStatus(),
            _simpanButton(),
          ],
        ),
      ),
    );
  }

  _titleHider() {
    Size size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          SetText.profil,
          style: header1Style,
        ),
        SizedBox(
          width: size.width * 0.010,
        ),
        const Icon(
          Icons.arrow_forward_ios,
          size: 15,
        ),
        SizedBox(
          width: size.width * 0.010,
        ),
        Text(
          'Status',
          style: header2Style,
        ),
      ],
    );
  }

  _listStatus() {
    Size size = MediaQuery.of(context).size;
    return ListView.builder(
      itemCount: 1,
      itemBuilder: (_, index) {
        return Column(
          children: [
            _titleHider(),
            SizedBox(
              height: size.height * 00.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Status Langganan',
                  style: secondaryStyle,
                ),
                Text(
                  'BUSINESS',
                  style: bnykStyle,
                ),
              ],
            ),
            SizedBox(
              height: size.height * 00.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Expired Date',
                  style: secondaryStyle,
                ),
                Text(
                  '07 Nov 2022, 08:16 WIB',
                  style: bnykStyle,
                ),
              ],
            ),
            SizedBox(
              height: size.height * 00.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Harga',
                  style: secondaryStyle,
                ),
                Text(
                  'Rp150.000',
                  style: bnykStyle,
                ),
              ],
            ),
          ],
        );
      },
    );
  }

  _simpanButton() {
    Size size = MediaQuery.of(context).size;
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: size.height * 00.10,
        width: size.width * 0.48,
        padding: const EdgeInsets.only(bottom: 20),
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: black1Color,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                20,
              ),
            ),
          ),
          child: Text(
            'Simpan',
            style: simpanStyle,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
