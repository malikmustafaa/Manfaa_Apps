import 'package:flutter/material.dart';
import 'package:manfaa_apps/berbagi_link/tabs/profile/profile.dart';
import 'package:manfaa_apps/contants/color_style.dart';
import 'package:manfaa_apps/contants/text.dart';

class Status extends StatefulWidget {
  const Status({Key? key}) : super(key: key);

  @override
  State<Status> createState() => _StatusState();
}

class _StatusState extends State<Status> {
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
                    Navigator.of(context).pop(const Profile());
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
                  'Status',
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
                  SetText.status_langganan,
                  style: secondaryStyle,
                ),
                Text(
                  SetText.business,
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
                  SetText.expired_data,
                  style: secondaryStyle,
                ),
                Text(
                  SetText.tanggal_pukul,
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
                  SetText.harga,
                  style: secondaryStyle,
                ),
                Text(
                  SetText.rp_150,
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
            primary: black1Color,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                20,
              ),
            ),
          ),
          child: Text(
            SetText.simpan,
            style: simpanStyle,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
