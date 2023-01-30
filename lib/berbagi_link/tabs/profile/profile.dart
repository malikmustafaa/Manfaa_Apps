import 'package:flutter/material.dart';
import 'package:manfaa_apps/berbagi_link/berbagi_link.dart';

import 'package:manfaa_apps/berbagi_link/tabs/manajemen_User/tambahkan%20akun/tambahkan_akun.dart';
import 'package:manfaa_apps/berbagi_link/tabs/profile/afiliasi/afiliasi.dart';
import 'package:manfaa_apps/berbagi_link/tabs/profile/hadiah/hadiah.dart';
import 'package:manfaa_apps/berbagi_link/tabs/profile/informasi_pribadi/informasi_pribadi.dart';

import 'package:manfaa_apps/berbagi_link/tabs/profile/status/status.dart';
import 'package:manfaa_apps/berbagi_link/tabs/profile/ubah_password/ubah_password.dart';
import 'package:manfaa_apps/berbagi_link/tabs/profile/voucher/voucher.dart';
import 'package:manfaa_apps/contants/color_style.dart';
import 'package:manfaa_apps/contants/text.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
                    Navigator.of(context).pop(BerbagiLink());
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
                                builder: (context) => const InformasiPribadi()),
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
                                            const InformasiPribadi()),
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
                                builder: (context) => const UbahPassword()),
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
                                            const UbahPassword()),
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
                                builder: (context) => const Status()),
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
                                        builder: (context) => const Status()),
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
                                builder: (context) => const Hadiah()),
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
                                        builder: (context) => const Hadiah()),
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
                                builder: (context) => const Voucher()),
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
                                        builder: (context) => const Voucher()),
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
                                builder: (context) => const Afiliasi()),
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
                                        builder: (context) => const Afiliasi()),
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
