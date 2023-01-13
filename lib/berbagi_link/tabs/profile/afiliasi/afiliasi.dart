import 'package:flutter/material.dart';
import 'package:manfaa_apps/berbagi_link/tabs/profile/afiliasi/daftar_downline/daftar_downline.dart';
import 'package:manfaa_apps/berbagi_link/tabs/profile/profile.dart';
import 'package:manfaa_apps/contants/color_style.dart';
import 'package:manfaa_apps/contants/text.dart';

class Afiliasi extends StatefulWidget {
  const Afiliasi({Key? key}) : super(key: key);

  @override
  State<Afiliasi> createState() => _AfiliasiState();
}

class _AfiliasiState extends State<Afiliasi> {
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
                  'Afiliasi',
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 8,
              ),
              child: Column(
                children: [
                  Row(
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
                        'Afiliasi',
                        style: header2Style,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 00.03,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      SetText.kode_voucher_anda,
                      style: simpanStyle,
                    ),
                  ),
                  SizedBox(
                    height: size.height * 00.02,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    height: size.height * 00.08,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        12,
                      ),
                      color: biruBgColor,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          SetText.kode_voucher,
                          style: const2Style,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.circle,
                            color: biruColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.height * 00.02,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    height: size.height * 00.065,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        16,
                      ),
                      color: biruBgColor,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.file_copy_outlined,
                                color: biruColor,
                              ),
                            ),
                            Text(
                              SetText.lihat_daftar_downline,
                              style: lihatStyle,
                            ),
                          ],
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const DaftarDownline()),
                            );
                          },
                          icon: Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: 15,
                            color: biruColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.height * 00.02,
                  ),
                  Column(
                    children: [
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          SetText.dapatkan_voucher,
                          style: afiliasiStyle,
                        ),
                      ),
                      SizedBox(
                        height: size.height * 00.005,
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          SetText.langganan_berbagi_link,
                          style: afiliasiStyle,
                        ),
                      ),
                      SizedBox(
                        height: size.height * 00.005,
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          SetText.memiliki_10_downline,
                          style: afiliasiStyle,
                        ),
                      ),
                      SizedBox(
                        height: size.height * 00.005,
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          SetText.memiliki_20_downline,
                          style: afiliasiStyle,
                        ),
                      ),
                      SizedBox(
                        height: size.height * 00.01,
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          SetText.ayo_ajak_tmnmu,
                          style: afiliasiStyle,
                        ),
                      ),
                      SizedBox(
                        height: size.height * 00.005,
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          SetText.dapatkan_voucher_yg,
                          style: afiliasiStyle,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 00.08,
                  ),
                  Column(
                    children: [
                      Text(
                        SetText.undang_tmn,
                        style: undangtmnStyle,
                      ),
                      SizedBox(
                        height: size.height * 00.02,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ClipOval(
                            child: SizedBox(
                              height: size.height * 00.1,
                              width: size.width * 00.125,
                              // color: Colors.transparent,
                              child: const Image(
                                image: AssetImage(
                                  'assets/images/fb.png',
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: size.width * 00.03,
                          ),
                          ClipOval(
                            child: SizedBox(
                              height: size.height * 00.1,
                              width: size.width * 00.15,
                              child: const Image(
                                image: AssetImage(
                                  'assets/images/google.png',
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: size.width * 00.03,
                          ),
                          ClipOval(
                            child: SizedBox(
                              height: size.height * 00.1,
                              width: size.width * 00.15,
                              child: const Image(
                                image: AssetImage(
                                  'assets/images/wa.png',
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
