import 'package:flutter/material.dart';
import 'package:manfaa_apps/berbagi_link/berbagi_link.dart';
import 'package:manfaa_apps/berbagi_link/tabs/manajemen_User/tambahkan%20akun/tambahkan_akun.dart';
import 'package:manfaa_apps/berbagi_link/tabs/manajemen_User/user_yang_terhubung/user_yang_terhubung.dart';
import 'package:manfaa_apps/contants/color_style.dart';

class ManajemenUser extends StatefulWidget {
  const ManajemenUser({Key? key}) : super(key: key);

  @override
  State<ManajemenUser> createState() => _ManajemenUserState();
}

class _ManajemenUserState extends State<ManajemenUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // mainAxisAlignment: MainAxisAlignment.start,
      appBar: AppBar(
        backgroundColor:
            const Color.fromRGBO(255, 255, 255, 1).withOpacity(0.4),
        elevation: 0,
        title: Row(
          children: [
            // ignore: avoid_unnecessary_containers
            Container(
              // padding: EdgeInsets.only(),
              child: IconButton(
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
                onPressed: () {
                  Navigator.of(context).pop(BerbagiLink());
                },
              ),
            ),
            Text(
              'Manajemen User',
              style: TextStyle(
                  fontStyle: FontStyle.normal,
                  color: black1Color,
                  fontSize: 18,
                  fontWeight: FontWeight.w700),
            ),
          ],
        ),
        actions: [
          // ignore: avoid_unnecessary_containers
          Container(
            child: IconButton(
              iconSize: 65,
              icon: CircleAvatar(
                backgroundImage: const AssetImage("assets/images/orang.png"),
                backgroundColor: biruColor,
              ), //Circl,
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                // margin: const EdgeInsets.only(left: 25),
                height: 55,
                width: 357,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: const Color(0xFFE3F2FD),
                ),
                child: Container(
                  margin: const EdgeInsets.only(left: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.note_add_rounded,
                        color: biruColor,
                        size: 25,
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      GestureDetector(
                        onTap: () {
                          // Navigator.of(context).pop(const TambahkanAkun());
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const TambahkanAkun()),
                          );
                        },
                        child: Container(
                          child: Text(
                            "Tambahkan Akun",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              fontStyle: FontStyle.normal,
                              color: biruColor,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 35,
                        padding: EdgeInsets.only(left: 60),
                        child: ElevatedButton(
                          onPressed: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) => const TambahkanAkun()),
                            // );
                          },
                          style: ElevatedButton.styleFrom(
                            primary: const Color(0xff259AB9),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                20,
                              ),
                            ),
                          ),
                          child: const Text(
                            "NEW",
                            style: TextStyle(
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w700,
                              fontSize: 10,
                            ),
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //       builder: (context) => const TambahkanAkun()),
                          // );
                        },
                        icon: Icon(
                          Icons.keyboard_arrow_right_rounded,
                          size: 25,
                          color: biruColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                // padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Container(
                      // margin: const EdgeInsets.only(left: 25),
                      height: 55,
                      width: 357,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: const Color(0xFFE3F2FD),
                      ),
                      child: Container(
                        margin: const EdgeInsets.only(left: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.note_add_rounded,
                              color: biruColor,
                              size: 25,
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            Container(
                              child: Text(
                                "Hubungkan Akun",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  fontStyle: FontStyle.normal,
                                  color: biruColor,
                                ),
                              ),
                            ),
                            Container(
                              height: 35,
                              padding: EdgeInsets.only(left: 60),
                              child: ElevatedButton(
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
                                  "NEW",
                                  style: TextStyle(
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 10,
                                  ),
                                ),
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.keyboard_arrow_right_rounded,
                                size: 25,
                                color: biruColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                // padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Container(
                      // margin: const EdgeInsets.only(left: 25),
                      height: 55,
                      width: 357,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: const Color(0xFFE3F2FD),
                      ),
                      child: Container(
                        margin: const EdgeInsets.only(left: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.note_add_rounded,
                              color: biruColor,
                              size: 25,
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const UserYangTerhubung()),
                                );
                              },
                              child: Container(
                                child: Text(
                                  "User yang Terhubung",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                    fontStyle: FontStyle.normal,
                                    color: biruColor,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: 35,
                              padding: EdgeInsets.only(left: 31),
                              child: ElevatedButton(
                                onPressed: () {},
                                // => Navigator.of(context).push(
                                //     MaterialPageRoute(
                                //         builder: (context) =>
                                //             const TambahkanAkun())),
                                style: ElevatedButton.styleFrom(
                                  primary: const Color(0xff259AB9),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                      20,
                                    ),
                                  ),
                                ),
                                child: const Text(
                                  "NEW",
                                  style: TextStyle(
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 10,
                                  ),
                                ),
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.keyboard_arrow_right_rounded,
                                size: 25,
                                color: biruColor,
                              ),
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
        ),
      ),
    );
  }
}
