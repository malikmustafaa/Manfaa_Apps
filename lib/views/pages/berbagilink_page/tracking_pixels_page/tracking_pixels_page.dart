import 'package:flutter/material.dart';

import '../../../../contants/color_style.dart';
import '../../../widgets/colors.dart';
import '../../../widgets/text_field.dart';
import '../../../widgets/title_text.dart';
import '../berbagi_link_page.dart';

// ignore: camel_case_types
class trackingPixelsPage extends StatelessWidget {
  static const nameRoute = '/trackingPixels';

  const trackingPixelsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                Text(
                  'Tracking Pixels',
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
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
          children: [
            const titleText("Facebook Pixels"),
            const textField("Masukkan Facebook Pixels"),

            // google
            const titleText("Google Analytics ID"),
            const textField(
              "Masukkan Google Analytics ID",
            ),

            const SizedBox(
              height: 20,
            ),

            // tombol simpan
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(18),
                backgroundColor: ColorSelect.buttonColorText,
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(64),
                    side: BorderSide(color: ColorSelect.buttonColorText)),
              ),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Simpan",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  )
                ],
              ),
            ),
            // tombol simpan end
          ],
        ),
      ),
    );
  }
}
