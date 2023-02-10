import 'package:flutter/material.dart';

import 'package:manfaa_apps/contants/color_style.dart';
import 'package:manfaa_apps/views/pages/berbagilink_page/profile_page/afiliasi_page/daftar_downline_page.dart';
import 'package:manfaa_apps/views/pages/berbagilink_page/profile_page/profil_berbagilink_page.dart';

class AfiliasiPage extends StatefulWidget {
  const AfiliasiPage({Key? key}) : super(key: key);

  @override
  State<AfiliasiPage> createState() => _AfiliasiState();
}

class _AfiliasiState extends State<AfiliasiPage> {
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
                  'Afiliasi',
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
                        'Profil',
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
                      'Kode Voucher Anda',
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
                          'LDOMSXUR',
                          style: const2Style,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.ads_click,
                            color: biruColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.height * 00.02,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DaftarDownlinePage()),
                      );
                    },
                    child: Container(
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
                                'Lihat Daftar Downline',
                                style: lihatStyle,
                              ),
                            ],
                          ),
                          IconButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const DaftarDownlinePage()),
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
                  ),
                  SizedBox(
                    height: size.height * 00.02,
                  ),
                  Column(
                    children: [
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          '**Dapatkan voucher berupa potongan harga untuk',
                          style: afiliasiStyle,
                        ),
                      ),
                      SizedBox(
                        height: size.height * 00.005,
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          'langganan Berbagi.link senilai 5% untuk pengguna yang',
                          style: afiliasiStyle,
                        ),
                      ),
                      SizedBox(
                        height: size.height * 00.005,
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          'memiliki 10 downline & 10% untuk pengguna yang',
                          style: afiliasiStyle,
                        ),
                      ),
                      SizedBox(
                        height: size.height * 00.005,
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          'memiliki 20 downline.',
                          style: afiliasiStyle,
                        ),
                      ),
                      SizedBox(
                        height: size.height * 00.01,
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          '**Ayo ajak temanmu sebanyak-banyaknya untuk',
                          style: afiliasiStyle,
                        ),
                      ),
                      SizedBox(
                        height: size.height * 00.005,
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          'dapatkan voucher yang menarik!',
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
                        'Undang Teman',
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
                                  'assets/images/wa_afiliasi.png',
                                ),
                                color: Colors.black,
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
