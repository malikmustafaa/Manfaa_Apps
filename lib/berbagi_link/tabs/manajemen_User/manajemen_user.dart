import 'package:flutter/material.dart';
import 'package:manfaa_apps/berbagi_link/berbagi_link.dart';
import 'package:manfaa_apps/berbagi_link/tabs/manajemen_User/hubungkan_akun/hubungkan_akun.dart';
import 'package:manfaa_apps/berbagi_link/tabs/manajemen_User/tambahkan%20akun/tambahkan_akun.dart';
import 'package:manfaa_apps/berbagi_link/tabs/manajemen_User/user_yang_terhubung/user_yang_terhubung.dart';
import 'package:manfaa_apps/contants/color_style.dart';

import '../profile/profile.dart';

class ManajemenUser extends StatefulWidget {
  const ManajemenUser({Key? key}) : super(key: key);

  @override
  State<ManajemenUser> createState() => _ManajemenUserState();
}

class _ManajemenUserState extends State<ManajemenUser> {
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
                  'Manajemen User',
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
                MaterialPageRoute(builder: (context) => const Profile()),
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
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const TambahkanAkun()),
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: biruBgColor,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.note_add_rounded,
                              color: biruColor,
                              size: 25,
                            ),
                            SizedBox(
                              width: size.width * 0.030,
                            ),
                            Text(
                              'Tambahkan Akun',
                              style: biru1Style,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                primary: biruColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                    20,
                                  ),
                                ),
                              ),
                              child: Text(
                                'NEW',
                                style: newStyle,
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const TambahkanAkun()),
                                );
                              },
                              icon: Icon(
                                Icons.keyboard_arrow_right_rounded,
                                size: 25,
                                color: biruColor,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 000.02,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HubungkanAkun()),
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: biruBgColor,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.note_add_rounded,
                              color: biruColor,
                              size: 25,
                            ),
                            SizedBox(
                              width: size.width * 0.030,
                            ),
                            Text(
                              'Hubungkan Akun',
                              style: biru1Style,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                primary: biruColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                    20,
                                  ),
                                ),
                              ),
                              child: Text(
                                'NEW',
                                style: newStyle,
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const HubungkanAkun()),
                                );
                              },
                              icon: Icon(
                                Icons.keyboard_arrow_right_rounded,
                                size: 25,
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
                  height: size.height * 000.02,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const UserYangTerhubung()),
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: biruBgColor,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.note_add_rounded,
                              color: biruColor,
                              size: 25,
                            ),
                            SizedBox(
                              width: size.width * 0.030,
                            ),
                            Text(
                              'User yang Terhubung',
                              style: biru1Style,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                primary: biruColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                    20,
                                  ),
                                ),
                              ),
                              child: Text(
                                'NEW',
                                style: newStyle,
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const UserYangTerhubung()),
                                );
                              },
                              icon: Icon(
                                Icons.keyboard_arrow_right_rounded,
                                size: 25,
                                color: biruColor,
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
          ),
        ],
      ),
    );
  }
}
