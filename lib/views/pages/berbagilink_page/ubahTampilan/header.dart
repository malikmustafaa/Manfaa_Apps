// ignore: duplicate_ignore
// ignore: unused_import
// ignore_for_file: unused_import
import 'package:flutter/material.dart';
import 'dart:io';

import '../../../../contants/color_style.dart';

class HeaderPage extends StatelessWidget {
  const HeaderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isDisabled = false;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
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
                        backgroundImage: const AssetImage(
                          "assets/images/orang.png",
                        ),
                        backgroundColor: biruColor,
                        radius: 100,
                      ),
                      onPressed: () {},
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Ubah Foto Profil',
                          style: pelajariStyle,
                        ),
                        Text(
                          'Unggah gambar berukuran resolusi 1 : 1',
                          style: unggStyle,
                        ),
                        Text(
                          '(Maksimum ukuran gambar 1 MB)',
                          style: unggStyle,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: const [
                Text("Username",
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              alignment: Alignment.center,
              height: 60,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12)),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                cursorColor: Colors.black,
                textInputAction: TextInputAction.search,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Container(
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(12),
                        topLeft: Radius.circular(12),
                      ),
                    ),
                    height: 60,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 18, horizontal: 8),
                      child: const Text(
                        'Berbagi link',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                    ),
                  ),
                  hintText: 'Masukkan username',
                  hintStyle: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                style: const TextStyle(color: Colors.black),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: const [
                Text("Contoh : Muhammad Zilong",
                    style:
                        TextStyle(fontSize: 12, fontWeight: FontWeight.w400)),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: const [
                Text("Nama Yang Ditampilkan",
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
              ],
            ),
            const SizedBox(height: 13),
            TextField(
              autocorrect: false,
              keyboardType: TextInputType.text,
              // obscureText: _obsecure,
              style: const TextStyle(
                fontSize: 20,
              ),
              decoration: InputDecoration(
                hintStyle: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  fontSize: 14,
                  color: Colors.grey,
                ),
                hintText: 'Masukkan nama yang ingin di tampilkan',
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(
                    color: Colors.grey,
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: const [
                Text("Lokasi",
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
              ],
            ),
            const SizedBox(height: 13),
            TextField(
              autocorrect: false,
              keyboardType: TextInputType.text,
              style: const TextStyle(
                fontSize: 20,
              ),
              decoration: InputDecoration(
                hintStyle: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  fontSize: 14,
                  color: Colors.grey,
                ),
                hintText: 'Masukkan Lokasi',
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(
                    color: Colors.grey,
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: const [
                Text("Link Lokasi(Google Maps)",
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
              ],
            ),
            const SizedBox(height: 15),
            TextField(
              autocorrect: false,
              keyboardType: TextInputType.text,
              // obscureText: _obsecure,
              style: const TextStyle(
                fontSize: 20,
              ),
              decoration: InputDecoration(
                hintStyle: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  fontSize: 14,
                  color: Colors.grey,
                ),
                hintText: 'Masukkan link google Maps Lokasi',
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(
                    color: Colors.grey,
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                "Isi Artikel",
                style: defaultStyle,
              ),
            ),
            SizedBox(
              height: size.height * 00.02,
            ),
            TextField(
              autocorrect: false,
              keyboardType: TextInputType.text,
              maxLines: 5,
              style: const TextStyle(
                fontSize: 20,
              ),
              decoration: InputDecoration(
                hintStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  fontSize: 16,
                  color: greyColor,
                ),
                hintText: "Masukkan Isi Artikel",
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(
                    color: grey1Color,
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Text(
                      "Tampilkan Judul",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 25,
                      width: 50,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          color: Colors.black),
                      child: const Text(
                        "New",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                Switch(
                    focusColor: Colors.black,
                    activeColor: Colors.blue,
                    value: isDisabled,
                    onChanged: (check) {
                      setState(() {
                        isDisabled = check;
                      });
                    }),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Tampilkan Halaman Event (Tema Default)",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                ),
                Switch(
                    focusColor: Colors.black,
                    activeColor: Colors.blue,
                    value: isDisabled,
                    onChanged: (check) {
                      setState(() {
                        isDisabled = check;
                      });
                    }),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Tampilkan Menu Ibadah (Tema Default)",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                ),
                Switch(
                    focusColor: Colors.black,
                    activeColor: Colors.blue,
                    value: isDisabled,
                    onChanged: (check) {
                      setState(() {
                        isDisabled = check;
                      });
                    }),
              ],
            ),
            SizedBox(
              height: size.height * 00.068,
              width: size.width * 0.45,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: black1Color,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      20,
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
            const SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    ));
  }

  void setState(Null Function() param0) {}
}
