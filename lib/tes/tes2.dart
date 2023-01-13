import 'package:flutter/material.dart';
import 'package:manfaa_apps/berbagi_link/tabs/profile/profile.dart';
import 'package:manfaa_apps/contants/color_style.dart';

import '../contants/text.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildtambahAkunIconBack(),
    );
  }

  Widget _itemProfile(double widthImg, double heightImg) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (content) => const Profile(),
            ));
      },
      child: Column(
        children: [
          SizedBox(
            width: 88,
            height: 100,
            // color: Colors.green,
            // padding: EdgeInsets.only(right: 2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: widthImg,
                  height: heightImg,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: const Color(0xffD9D9D9)),
                    color: hijauBgColor,
                  ),
                  child: Center(
                    child: Icon(
                      Icons.person_outline_outlined,
                      size: 40,
                      color: hijauColor,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  'Profile',
                  style: TextStyle(fontSize: 12),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildtambahAkunIconBack() {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(
            10,
          ),
        ),
        color: Color(
          0xFFE3F2FD,
        ),
      ),
      child: ExpansionTile(
        collapsedIconColor: Colors.blue,
        title: Container(
          transform: Matrix4.translationValues(8, 0, 10),
          decoration: const BoxDecoration(
            color: Color(
              0xFFE3F2FD,
            ),
          ),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Row(
              children: [
                Icon(
                  Icons.image,
                  color: biruColor,
                  size: 25,
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  'Tambahkan Gambar/\nVideo/Iframe',
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: const Color(0xff259AB9),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    20,
                  ),
                ),
              ),
              child: const Text(
                'PRO',
              ),
            ),
          ]),
        ),
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
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
            ),
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 16,
                  ),
                  //Judul
                  const Align(
                    alignment: Alignment.bottomLeft,
                    child: Text('Judul'),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  TextField(
                    autocorrect: false,
                    keyboardType: TextInputType.text,
                    // obscureText: _obsecure,
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                    decoration: InputDecoration(
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        fontSize: 14,
                        // color: greyColor,
                      ),
                      hintText: 'Masukkan Judul',
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                            // color: greyColor,
                            ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Align(
                    alignment: Alignment.bottomLeft,
                    child: Text('Tipe'),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    height: size.height * 00.075,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          // color: greyColor,
                          spreadRadius: 1.3,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Pilih Tipe'),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.keyboard_arrow_down_outlined,
                          ),
                          // color: black1Color,
                        ),
                      ],
                    ),
                  ),

                  SizedBox(
                    height: size.height * 00.06,
                  ),
                  //Elevated Button
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            20,
                          ),
                          border: Border.all(
                            width: 1.5,
                            // color: black1Color,
                          ),
                        ),
                        height: size.height * 00.068,
                        width: size.width * 0.38,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                20,
                              ),
                            ),
                          ),
                          child: const Text(
                            'BATAL',
                            // style: batalStyle,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 00.068,
                        width: size.width * 0.38,
                        // padding: const EdgeInsets.only(left: 10),
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
                          child: const Text(
                            'SIMPAN',
                            // style: simpanStyle,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// height: size.height * 0.09,
//           width: size.width * 0.17,
