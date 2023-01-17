// ignore_for_file: non_constant_identifier_names, unnecessary_null_comparison, unused_local_variable

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:manfaa_apps/berbagi_link/tabs/profile/profile.dart';
// ignore: unused_import
// import 'package:manfaa_apps/berbagi_link/tabs/manajemen_User/tambahkan%20akun/tambahkan_akun.dart';
// import 'package:manfaa_apps/berbagi_link/tabs/manajemen_User/tambahkan%20akun/tambahkan_akun1.dart';
import 'package:manfaa_apps/contants/color_style.dart';
import 'package:image_picker/image_picker.dart';
import 'package:manfaa_apps/contants/text.dart';

class InformasiPribadi extends StatefulWidget {
  const InformasiPribadi({Key? key}) : super(key: key);

  @override
  State<InformasiPribadi> createState() => _EditUserState();
}

class _EditUserState extends State<InformasiPribadi> {
  File? image;
  File? image1;

  Future getImage() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? ImagePicked =
        await _picker.pickImage(source: ImageSource.gallery);
    image = File(ImagePicked!.path);

    setState(() {});
  }

  Future getImage1() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? ImagePicked =
        await _picker.pickImage(source: ImageSource.gallery);
    image1 = File(ImagePicked!.path);

    setState(() {});
  }

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
                    Navigator.of(context).pop(const Profile());
                  },
                  icon: Image(
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
                  'Informasi Pribadi',
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
                        'Edit Informasi Pribadi',
                        style: header2Style,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 00.03,
                  ),
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
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  right: 128,
                                ),
                                child: Text(
                                  SetText.ubah_foto_profil,
                                  style: pelajariStyle,
                                ),
                              ),
                              Text(
                                SetText.unggah_gmbr,
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: greyColor,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 00.02,
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      SetText.nama,
                      style: defaultStyle,
                    ),
                  ),
                  SizedBox(
                    height: size.height * 00.02,
                  ),
                  SizedBox(
                    child: TextField(
                      keyboardType: TextInputType.text,
                      // obscureText: _obsecure,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                      decoration: InputDecoration(
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          fontSize: 16,
                          color: black1Color,
                        ),
                        hintText: "Mirza Yoga Pramoda",
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: greyColor,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 00.02,
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      SetText.nomor_telepon,
                      style: defaultStyle,
                    ),
                  ),
                  SizedBox(
                    height: size.height * 00.02,
                  ),
                  SizedBox(
                    child: TextField(
                      keyboardType: TextInputType.text,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                      decoration: InputDecoration(
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          fontSize: 16,
                          color: black1Color,
                        ),
                        hintText: "0857XXXXXXXX",
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: greyColor,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 00.02,
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      SetText.username,
                      style: defaultStyle,
                    ),
                  ),
                  SizedBox(
                    height: size.height * 00.02,
                  ),
                  SizedBox(
                    child: TextField(
                      keyboardType: TextInputType.text,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                      decoration: InputDecoration(
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          fontSize: 16,
                          color: black1Color,
                        ),
                        hintText: "yoga",
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: greyColor,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 00.02,
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      SetText.email,
                      style: defaultStyle,
                    ),
                  ),
                  SizedBox(
                    height: size.height * 00.02,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    height: size.height * 0.075,
                    decoration: BoxDecoration(
                      color: biruBgColor,
                      borderRadius: BorderRadius.circular(
                        16,
                      ),
                    ),
                    child: Row(
                      children: [
                        Text(
                          SetText.email3,
                          style: constStyle,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.height * 00.02,
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      SetText.alamat,
                      style: defaultStyle,
                    ),
                  ),
                  SizedBox(
                    height: size.height * 00.02,
                  ),
                  SizedBox(
                    child: TextField(
                      keyboardType: TextInputType.text,
                      maxLines: 4,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                      decoration: InputDecoration(
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          fontSize: 16,
                          color: greyColor,
                        ),
                        hintText: "Masukkan Alamat",
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: greyColor,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 00.02,
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      SetText.nomor_ktp,
                      style: defaultStyle,
                    ),
                  ),
                  SizedBox(
                    height: size.height * 00.02,
                  ),
                  TextField(
                    keyboardType: TextInputType.text,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                    decoration: InputDecoration(
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        fontSize: 16,
                        color: greyColor,
                      ),
                      hintText: "contoh : 33XXXXXXXXXXXXXX",
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                          color: greyColor,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 00.02,
                  ),
                  Column(
                    children: [
                      image != null
                          ? SizedBox(
                              width: size.width * 10,
                              height: size.height * 0.30,
                              child: Image.file(
                                image!,
                                fit: BoxFit.fill,
                              ))
                          : Container(
                              width: size.width * 10,
                              height: size.height * 0.30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  15,
                                ),
                                color: biruBgColor,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  IconButton(
                                    onPressed: () async {
                                      await getImage();
                                    },
                                    icon: const Icon(
                                      Icons.upload,
                                      size: 30,
                                    ),
                                  ),
                                  Text(
                                    SetText.upload_foto_ktp,
                                    style: defaultStyle,
                                  ),
                                ],
                              ),
                            ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 00.02,
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      SetText.nomor_paspor,
                      style: defaultStyle,
                    ),
                  ),
                  SizedBox(
                    height: size.height * 00.02,
                  ),
                  TextField(
                    keyboardType: TextInputType.text,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                    decoration: InputDecoration(
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        fontSize: 16,
                        color: greyColor,
                      ),
                      hintText: "contoh : 1A23XXXXXXXXXXXX",
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                          color: greyColor,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 00.02,
                  ),
                  Column(
                    children: [
                      image1 != null
                          ? SizedBox(
                              width: size.width * 10,
                              height: size.height * 0.30,
                              child: Image.file(
                                image1!,
                                fit: BoxFit.fill,
                              ))
                          : Container(
                              width: size.width * 10,
                              height: size.height * 0.30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  15,
                                ),
                                color: biruBgColor,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  IconButton(
                                    onPressed: () async {
                                      await getImage1();
                                    },
                                    icon: const Icon(
                                      Icons.upload,
                                      size: 30,
                                    ),
                                  ),
                                  Text(
                                    SetText.upload_foto_paspor,
                                    style: defaultStyle,
                                  ),
                                ],
                              ),
                            ),
                      SizedBox(
                        height: size.height * 00.06,
                      ),
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
                                color: black1Color,
                              ),
                            ),
                            height: size.height * 00.068,
                            width: size.width * 0.45,
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
                              child: Text(
                                SetText.batal,
                                style: batalStyle,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: size.height * 00.068,
                            width: size.width * 0.45,
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
                              child: Text(
                                SetText.simpan,
                                style: simpanStyle,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: size.height * 00.06,
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
