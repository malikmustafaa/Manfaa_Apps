// ignore: file_names
// ignore_for_file: file_names, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:manfaa_apps/views/pages/berbagilink_page/berbagi_link_page.dart';

import '../../../../../../../contants/color_style.dart';

// ignore: camel_case_types
class ubahwarnagruplink extends StatefulWidget {
  const ubahwarnagruplink({Key? key}) : super(key: key);

  @override
  State<ubahwarnagruplink> createState() => _Tabs1State();
}

final List<Tab> myTabs = List.generate(
  3,
  (index) => Tab(text: 'TAB $index'),
);

class _Tabs1State extends State<ubahwarnagruplink>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  // ignore: prefer_typing_uninitialized_variables
  var kTitleTextStyle;

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  bool isDisabled = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
        border: Border.all(color: Colors.black),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 16,
              ),

              //Judul
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Ubah Warna",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                    onTap: () {
                      if (isDisabled == true) {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => BerbagilinkPage(),
                          ),
                        );
                      }
                    },
                    child: Switch(
                        focusColor: Colors.black,
                        activeColor: Colors.blue,
                        value: isDisabled,
                        onChanged: (check) {
                          setState(() {
                            isDisabled = check;
                          });
                        }),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              isDisabled == false ? Container() : Warna(),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        64,
                      ),
                      border: Border.all(
                        width: 1.5,
                        color: black1Color,
                      ),
                    ),
                    height: size.height * 00.068,
                    width: size.width * 0.40,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            64,
                          ),
                        ),
                      ),
                      child: Text(
                        'Batal',
                        style: batalStyle,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 00.068,
                    width: size.width * 0.40,
                    // padding: const EdgeInsets.only(left: 10),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: black1Color,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            64,
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
                ],
              ),
              const SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ignore: non_constant_identifier_names
Widget Warna() {
  return Column(
    children: [
      const Align(
        alignment: Alignment.bottomLeft,
        child: Text(
          'Warna Tombol',
          style: TextStyle(
            fontFamily: 'Ubuntu',
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 14,
          ),
        ),
      ),
      const SizedBox(
        height: 6,
      ),
      Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(width: 2, color: Colors.grey),
        ),
        height: 65,
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 2, color: Colors.grey),
              ),
              height: 54,
              width: 54,
            ),
            const SizedBox(
              width: 15,
            ),
            const Text(
              '#FFFFFF',
              style: TextStyle(
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                  fontSize: 16),
            ),
          ],
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      const Align(
        alignment: Alignment.bottomLeft,
        child: Text(
          'Warna Teks',
          style: TextStyle(
            fontFamily: 'Ubuntu',
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 14,
          ),
        ),
      ),
      const SizedBox(
        height: 6,
      ),
      Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(width: 2, color: Colors.grey),
        ),
        height: 65,
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 2, color: Colors.grey),
              ),
              height: 54,
              width: 54,
            ),
            const SizedBox(
              width: 15,
            ),
            const Text(
              '#FFFFFF',
              style: TextStyle(
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                  fontSize: 16),
            ),
          ],
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      const Align(
        alignment: Alignment.bottomLeft,
        child: Text(
          'Warna Garis',
          style: TextStyle(
            fontFamily: 'Ubuntu',
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 14,
          ),
        ),
      ),
      const SizedBox(
        height: 6,
      ),
      Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(width: 2, color: Colors.grey),
        ),
        height: 65,
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 2, color: Colors.grey),
              ),
              height: 54,
              width: 54,
            ),
            const SizedBox(
              width: 15,
            ),
            const Text(
              '#FFFFFF',
              style: TextStyle(
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                  fontSize: 16),
            ),
          ],
        ),
      ),
    ],
  );
}
