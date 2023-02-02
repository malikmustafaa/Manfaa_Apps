import 'package:flutter/material.dart';
import 'package:manfaa_apps/contants/color_style.dart';
import 'package:manfaa_apps/views/pages/berbagilink_page/manajemen_user_page/hubungkan_akun_page/hubungkan_akun_page.dart';
import 'package:manfaa_apps/views/pages/berbagilink_page/manajemen_user_page/tambahkan_akun_page/tambahkan_akun_page.dart';
import 'package:manfaa_apps/views/pages/berbagilink_page/manajemen_user_page/user_yang_terhubung_page/user_yang_terhubung_page.dart';
import 'package:manfaa_apps/views/pages/berbagilink_page/profile_page/profil_berbagilink_page.dart';
import '../berbagi_link_page.dart';

class ManajemenUserPage extends StatefulWidget {
  const ManajemenUserPage({Key? key}) : super(key: key);

  @override
  State<ManajemenUserPage> createState() => _ManajemenUserPageState();
}

class _ManajemenUserPageState extends State<ManajemenUserPage> {
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
                          builder: (context) => const TambahkanAkunPage()),
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
                                backgroundColor: biruColor,
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
                                          const TambahkanAkunPage()),
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
                          builder: (context) => const HubungkanAkunPage()),
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
                                backgroundColor: biruColor,
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
                                          const HubungkanAkunPage()),
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
                          builder: (context) => const UserYangTerhubungPage()),
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
                                backgroundColor: biruColor,
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
                                          const UserYangTerhubungPage()),
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
