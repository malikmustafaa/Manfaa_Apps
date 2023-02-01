import 'package:flutter/material.dart';

import 'package:manfaa_apps/contants/color_style.dart';
import 'package:manfaa_apps/contants/text.dart';
import 'package:manfaa_apps/views/pages/berbagilink_page/profile_page/edit_informasi_pribadi_page/informasi_pribadi_page.dart';
import 'package:manfaa_apps/views/pages/berbagilink_page/profile_page/status_page/status_page.dart';
import 'package:manfaa_apps/views/pages/berbagilink_page/profile_page/ubah_password_page/ubah_password_page.dart';
import 'package:manfaa_apps/views/pages/berbagilink_page/profile_page/voucher_page/voucher_page.dart';

import '../berbagi_link_page.dart';
import 'afiliasi_page/afiliasi_page.dart';
import 'hadiah_page/hadiah_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
                  'Profile Berbagi.link',
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
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          IconButton(
                            iconSize: 75,

                            icon: CircleAvatar(
                              backgroundImage:
                                  const AssetImage("assets/images/orang.png"),
                              backgroundColor: biruColor,
                              radius: 100,
                            ), //Circl,
                            onPressed: () {},
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'yoga',
                                    style: orangeStyle,
                                  ),
                                  SizedBox(
                                    width: size.width * 00.03,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 8,
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                        30,
                                      ),
                                      color: orangeColor,
                                    ),
                                    child: Row(
                                      children: [
                                        Image(
                                          color: whiteColor,
                                          image: const AssetImage(
                                              'assets/images/vector.png'),
                                          width: 25,
                                        ),
                                        Text(
                                          'BUSINESS',
                                          style: whiteStyle,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: size.height * 00.01,
                              ),
                              Text(
                                ' Mirza Yoga Pramoda',
                                style: blackStyle,
                              ),
                              SizedBox(
                                height: size.height * 00.01,
                              ),
                              Text(
                                'smirzayogapramoda@gmail.com',
                                style: emailStyle,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 00.03,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        30,
                      ),
                      color: const Color(0xFFE3F2FD),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "berbagi.link/yoga",
                          style: berbagiStyle,
                        ),
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.file_copy_rounded,
                                size: 25,
                                color: biruColor,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.qr_code_2,
                                size: 25,
                                color: biruColor,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.height * 00.03,
                  ),
                  Column(
                    children: [
                      Container(
                        height: 2,
                        decoration: BoxDecoration(
                          color: greyColor,
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 00.03,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const InformasiPribadiPage()),
                          );
                        },
                        child: Container(
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
                                    'Edit Informasi Pribadi',
                                    style: default2tyle,
                                  ),
                                ],
                              ),
                              IconButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const InformasiPribadiPage()),
                                  );
                                },
                                icon: Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  size: 18,
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
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const UbahPasswordPage()),
                          );
                        },
                        child: Container(
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
                                    'Ubah Password',
                                    style: default2tyle,
                                  ),
                                ],
                              ),
                              IconButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const UbahPasswordPage()),
                                  );
                                },
                                icon: Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  size: 18,
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
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const StatusPage()),
                          );
                        },
                        child: Container(
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
                                    'Status',
                                    style: default2tyle,
                                  ),
                                ],
                              ),
                              IconButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const StatusPage()),
                                  );
                                },
                                icon: Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  size: 18,
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
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HadiahPage()),
                          );
                        },
                        child: Container(
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
                                    'Hadiah',
                                    style: default2tyle,
                                  ),
                                ],
                              ),
                              IconButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const HadiahPage()),
                                  );
                                },
                                icon: Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  size: 18,
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
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const VoucherPage()),
                          );
                        },
                        child: Container(
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
                                    'Voucher',
                                    style: default2tyle,
                                  ),
                                ],
                              ),
                              IconButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const VoucherPage()),
                                  );
                                },
                                icon: Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  size: 18,
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
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AfiliasiPage()),
                          );
                        },
                        child: Container(
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
                                    'Afiliasi',
                                    style: default2tyle,
                                  ),
                                ],
                              ),
                              IconButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const AfiliasiPage()),
                                  );
                                },
                                icon: Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  size: 18,
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
                      GestureDetector(
                        onTap: () {},
                        child: Container(
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
                                    'Mutasibank',
                                    style: default2tyle,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
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
                                    child: Text(
                                      "NEW",
                                      style: newStyle,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.arrow_forward_ios_outlined,
                                      size: 18,
                                      color: biruColor,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 00.10,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
