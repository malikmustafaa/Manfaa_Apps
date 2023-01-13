import 'package:flutter/material.dart';
import 'package:manfaa_apps/berbagi_link/tabs/profile/profile.dart';
import 'package:manfaa_apps/contants/color_style.dart';
import 'package:manfaa_apps/contants/text.dart';

class Hadiah extends StatefulWidget {
  const Hadiah({Key? key}) : super(key: key);

  @override
  State<Hadiah> createState() => _HadiahState();
}

class _HadiahState extends State<Hadiah> {
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
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop(const Profile());
                  },
                  child: Image(
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
                  'Hadiah',
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
            _titleHider(),
            SizedBox(
              height: size.height * 00.03,
            ),
            _circlehadiah(),
            _simpanButton(),
          ],
        ),
      ),
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
          onPressed: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //       builder: (context) => const TambahkanAkun()),
            // );
          },
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

  _circlehadiah() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: ClipOval(
            child: Container(
              color: black1Color,
              height: 200,
              width: 200,
              child: const Center(
                child: Image(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    "assets/images/hadiah.png",
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
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
          'Hadiah',
          style: header2Style,
        ),
      ],
    );
  }
}
