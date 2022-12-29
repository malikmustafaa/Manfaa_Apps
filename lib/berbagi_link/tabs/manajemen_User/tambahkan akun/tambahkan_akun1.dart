// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:manfaa_apps/berbagi_link/tabs/manajemen_User/tambahkan%20akun/tambahkan_akun.dart';
import 'package:manfaa_apps/contants/color_style.dart';

class TambahkanAkun1 extends StatefulWidget {
  const TambahkanAkun1({Key? key}) : super(key: key);

  @override
  State<TambahkanAkun1> createState() => _TambahkanAkun1State();
}

class _TambahkanAkun1State extends State<TambahkanAkun1> {
  bool isHidden = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  Navigator.of(context).pop(const TambahkanAkun());
                  //statements
                },
              ),
            ),
            Text(
              'Tambahkan Akun',
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 23),
              child: Row(
                children: [
                  Text(
                    "Manajemen User",
                    style: TextStyle(
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: black1Color,
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  const Text(
                    "Tambahkan Akun",
                    style: TextStyle(
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              // margin: const EdgeInsets.only(left: 25),
              height: 55,
              width: 357,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0)),
                color: Color(0xFFE3F2FD),
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
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //       builder: (context) => const TambahkanAkun()),
                        // );
                      },
                      child: Text(
                        "Tambah Akun",
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
                      padding: const EdgeInsets.only(left: 85),
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
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TambahkanAkun()),
                        );
                      },
                      icon: Icon(
                        Icons.keyboard_arrow_up_outlined,
                        size: 25,
                        color: biruColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 35,
                ),
                child: Text(
                  "Nama",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              width: 330,
              height: 55,
              child: TextField(
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
                    color: greyColor,
                  ),

                  hintText: "Masukkan Nama Akun",
                  // labelText: "Your Password",

                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: greyColor,
                      width: 1.3,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      color: Theme.of(context).primaryColor,
                      width: 3,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 35,
                ),
                child: Text(
                  "Email",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              width: 330,
              height: 55,
              child: TextField(
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
                    color: greyColor,
                  ),

                  hintText: "Masukkan Email",
                  // labelText: "Your Password",

                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: greyColor,
                      width: 1.3,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      color: Theme.of(context).primaryColor,
                      width: 3,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 35,
                ),
                child: Text(
                  "Peran Akun",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              // margin: const EdgeInsets.only(left: 25),
              width: 330,
              height: 55,
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
                    const SizedBox(
                      width: 12,
                    ),
                    Text(
                      "Pilih peran akun",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        fontStyle: FontStyle.normal,
                        color: biruColor,
                      ),
                    ),
                    const SizedBox(
                      width: 140,
                    ),
                    IconButton(
                      onPressed: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //       builder: (context) => const TambahkanAkun()),
                        // );
                      },
                      icon: const Icon(
                        Icons.keyboard_arrow_down_outlined,
                      ),
                      color: biruColor,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 35,
                ),
                child: Text(
                  "Password",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              width: 330,
              height: 55,
              child: TextField(
                autocorrect: false,
                obscureText: isHidden,
                keyboardType: TextInputType.text,
                // obscureText: _obsecure,
                style:
                    const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),

                decoration: InputDecoration(
                  suffixIcon: IconButton(
                      icon: (const Icon(
                        Icons.remove_red_eye,
                      )),
                      onPressed: () {
                        if (isHidden == true) {
                          isHidden = false;
                        } else {
                          isHidden = true;
                        }
                        setState(() {});
                      }),
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    fontSize: 14,
                    color: greyColor,
                  ),

                  hintText: "Masukkan Password",
                  // labelText: "Your Password",

                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: greyColor,
                      width: 1.3,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      color: Theme.of(context).primaryColor,
                      width: 3,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 35,
                ),
                child: Text(
                  "Konfirmasi Password",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              width: 330,
              height: 55,
              child: TextField(
                autocorrect: false,
                obscureText: isHidden,
                keyboardType: TextInputType.text,
                // obscureText: _obsecure,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                      icon: (const Icon(
                        Icons.remove_red_eye,
                      )),
                      onPressed: () {
                        if (isHidden == true) {
                          isHidden = false;
                        } else {
                          isHidden = true;
                        }
                        setState(() {});
                      }),
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    fontSize: 14,
                    color: greyColor,
                  ),

                  hintText: "Ulangi Pssword",
                  // labelText: "Your Password",

                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: greyColor,
                      width: 1.3,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      color: Theme.of(context).primaryColor,
                      width: 3,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    'Batal',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              // margin: const EdgeInsets.only(left: 25),
              height: 55,
              width: 357,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0)),
                color: Color(0xFFE3F2FD),
              ),
              child: Container(
                margin: const EdgeInsets.only(left: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.person,
                      color: biruColor,
                      size: 25,
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    GestureDetector(
                      onTap: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //       builder: (context) => const TambahkanAkun()),
                        // );
                      },
                      child: Text(
                        "Daftar Akun",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          fontStyle: FontStyle.normal,
                          color: biruColor,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 165),
                      child: IconButton(
                        onPressed: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //       builder: (context) => const TambahkanAkun()),
                          // );
                        },
                        icon: Icon(
                          Icons.circle_rounded,
                          size: 25,
                          color: biruColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  color: greyColor,
                  width: 350,
                  margin: const EdgeInsets.only(left: 21),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: const [
                        SizedBox(
                          width: 17,
                        ),
                        Text(
                          'Nama',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(
                          width: 58,
                        ),
                        Text(
                          'Email',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(
                          width: 58,
                        ),
                        Text(
                          'Peran',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(
                          width: 58,
                        ),
                        Text(
                          'Action',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 0,
            ),
            Container(
              width: 350,
              margin: const EdgeInsets.only(left: 9, right: 10),
              child: Row(
                children: [
                  const SizedBox(
                    width: 22,
                  ),
                  const Text(
                    'Ahmad',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(
                    width: 35,
                  ),
                  const Text(
                    'ahmadx@gm..',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  const Text(
                    'Admin',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.edit,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.delete,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Container(
              color: greyColor,
              width: 350,
              margin: const EdgeInsets.only(left: 9, right: 10),
              child: Row(
                children: [
                  const SizedBox(
                    width: 22,
                  ),
                  const Text(
                    'Ahmad',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(
                    width: 35,
                  ),
                  const Text(
                    'ahmadx@gm..',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  const Text(
                    'Admin',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.edit,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.delete,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Container(
              width: 350,
              margin: const EdgeInsets.only(left: 9, right: 10),
              child: Row(
                children: [
                  const SizedBox(
                    width: 22,
                  ),
                  const Text(
                    'Ahmad',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(
                    width: 35,
                  ),
                  const Text(
                    'ahmadx@gm..',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  const Text(
                    'Admin',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.edit,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.delete,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Container(
              color: greyColor,
              width: 350,
              margin: const EdgeInsets.only(left: 9, right: 10),
              child: Row(
                children: [
                  const SizedBox(
                    width: 22,
                  ),
                  const Text(
                    'Ahmad',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(
                    width: 35,
                  ),
                  const Text(
                    'ahmadx@gm..',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  const Text(
                    'Admin',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.edit,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.delete,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Container(
              width: 350,
              margin: const EdgeInsets.only(left: 9, right: 10),
              child: Row(
                children: [
                  const SizedBox(
                    width: 22,
                  ),
                  const Text(
                    'Ahmad',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(
                    width: 35,
                  ),
                  const Text(
                    'ahmadx@gm..',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  const Text(
                    'Admin',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.edit,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.delete,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Container(
              color: greyColor,
              width: 350,
              margin: const EdgeInsets.only(left: 9, right: 10),
              child: Row(
                children: [
                  const SizedBox(
                    width: 22,
                  ),
                  const Text(
                    'Ahmad',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(
                    width: 35,
                  ),
                  const Text(
                    'ahmadx@gm..',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  const Text(
                    'Admin',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.edit,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.delete,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Container(
              width: 350,
              margin: const EdgeInsets.only(left: 9, right: 10),
              child: Row(
                children: [
                  const SizedBox(
                    width: 22,
                  ),
                  const Text(
                    'Ahmad',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(
                    width: 35,
                  ),
                  const Text(
                    'ahmadx@gm..',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  const Text(
                    'Admin',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.edit,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.delete,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(20.0),
                      bottomLeft: Radius.circular(20.0)),
                  color: greyColor),
              width: 350,
              margin: const EdgeInsets.only(left: 9, right: 10),
              child: Row(
                children: [
                  const SizedBox(
                    width: 22,
                  ),
                  const Text(
                    'Ahmad',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(
                    width: 35,
                  ),
                  const Text(
                    'ahmadx@gm..',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  const Text(
                    'Admin',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.edit,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.delete,
                    ),
                    onPressed: () {},
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
//  