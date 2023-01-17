// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:manfaa_apps/berbagi_link/berbagi_link.dart';
import 'package:manfaa_apps/berbagi_link/tabs/manajemen_User/manajemen_user.dart';
import 'package:manfaa_apps/contants/color_style.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:manfaa_apps/contants/text.dart';

class EventOnline extends StatefulWidget {
  const EventOnline({Key? key}) : super(key: key);

  @override
  State<EventOnline> createState() => _EventOnlineState();
}

class _EventOnlineState extends State<EventOnline> {
  File? image;

  Future getImage() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? ImagePicked =
        await _picker.pickImage(source: ImageSource.gallery);
    image = File(ImagePicked!.path);
    setState(() {});
  }

  bool isDisabled = false;
  bool isDisabled1 = false;
  bool isDisabled2 = false;
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
                SizedBox(
                  width: size.width * 0.068,
                ),
                Text(
                  SetText.event_online,
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
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      SetText.link_event,
                      style: simpanStyle,
                    ),
                  ),
                  SizedBox(
                    height: size.height * 00.02,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      color: const Color(0xFFE3F2FD),
                    ),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            SetText.linkberbagi2,
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
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 00.02,
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      SetText.edit_pengaturan_event,
                      style: simpanStyle,
                    ),
                  ),
                  SizedBox(
                    height: size.height * 00.02,
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: const Color(0xFFE3F2FD),
                    ),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Status Halaman Event\nAktifkan & matikan Halaman Event dengan sekali klik',
                              style: TextStyle(
                                fontSize: 10,
                                color: black1Color,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Switch(
                                focusColor: black1Color,
                                activeColor: biruColor,
                                value: isDisabled,
                                onChanged: (check) {
                                  setState(() {
                                    isDisabled = check;
                                  });
                                }),
                          ],
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
                      SetText.nama_organisasi,
                      style: defaultStyle,
                    ),
                  ),
                  SizedBox(
                    height: size.height * 00.02,
                  ),
                  TextField(
                    autocorrect: false,
                    keyboardType: TextInputType.text,
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
                      hintText: "Masukkan nama organisasi",
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
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      SetText.deskripsi,
                      style: defaultStyle,
                    ),
                  ),
                  SizedBox(
                    height: size.height * 00.02,
                  ),
                  TextField(
                    autocorrect: false,
                    keyboardType: TextInputType.text,
                    maxLines: 3,
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
                      hintText: "Masukkan deskripsi atau bio",
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
                  const Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      SetText.logo_organisasi,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 00.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      image != null
                          ? SizedBox(
                              width: size.width * 0.35,
                              height: size.height * 0.20,
                              child: Image.file(
                                image!,
                                fit: BoxFit.cover,
                              ))
                          : GestureDetector(
                              onTap: () async {
                                await getImage();
                              },
                              child: Container(
                                width: size.width * 0.35,
                                height: size.height * 0.20,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    8,
                                  ),
                                  color: greyColor,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Icon(
                                      Icons.upload,
                                      size: 40,
                                    ),
                                    Text(
                                      SetText.klik_upload_logo,
                                      style: klikStyle,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                      Column(
                        children: [
                          Text(
                            SetText.unggah_gmbr1,
                            style: unggahgmbr1Style,
                          ),
                          SizedBox(
                            height: size.height * 00.019,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(
                                () {
                                  image = null;
                                },
                              );
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(
                                right: 55,
                              ),
                              child: Text(
                                SetText.hapus_logo,
                                style: hapusStyle,
                              ),
                            ),
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
                      SetText.alamat,
                      style: defaultStyle,
                    ),
                  ),
                  SizedBox(
                    height: size.height * 00.02,
                  ),
                  TextField(
                    autocorrect: false,
                    keyboardType: TextInputType.text,
                    maxLines: 3,
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
                      hintText: "Masukkan deskripsi atau bio",
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
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      SetText.nomor_wa_bio,
                      style: defaultStyle,
                    ),
                  ),
                  SizedBox(
                    height: size.height * 00.02,
                  ),
                  TextField(
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
                        fontSize: 16,
                        color: greyColor,
                      ),
                      hintText: "contoh : 0815xxxxxx",
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
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      SetText.isi_chat_otomatis,
                      style: defaultStyle,
                    ),
                  ),
                  SizedBox(
                    height: size.height * 00.02,
                  ),
                  TextField(
                    autocorrect: false,
                    keyboardType: TextInputType.text,
                    maxLines: 3,
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
                      hintText:
                          "contoh : Halo, kak. Saya mau daftar\neventkamu, nih. Gimana caranya, ya?",
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
                  const Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      SetText.link_fb,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 00.02,
                  ),
                  TextField(
                    autocorrect: false,
                    keyboardType: TextInputType.text,
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
                      hintText: "contoh : facebook.com/eventkamu",
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
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      SetText.link_ig,
                      style: defaultStyle,
                    ),
                  ),
                  SizedBox(
                    height: size.height * 00.02,
                  ),
                  TextField(
                    autocorrect: false,
                    keyboardType: TextInputType.text,
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
                      hintText: "contoh : instagram.com/eventkamu",
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
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      // vertical: 10,
                    ),
                    height: size.height * 00.1,
                    decoration: BoxDecoration(
                      color: biruBgColor,
                      borderRadius: BorderRadius.circular(
                        12,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Aktifkan Kode Unik\nPengaturan kode unik untuk mempermudah\npengecekan jumlah transfer pelanggan',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: black1Color,
                              ),
                            ),
                            Transform.scale(
                              scale: 1,
                              child: Switch(
                                  focusColor: black1Color,
                                  activeColor: biruColor,
                                  value: isDisabled1,
                                  onChanged: (check) {
                                    setState(() {
                                      isDisabled1 = check;
                                    });
                                  }),
                            ),
                          ],
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
                    height: size.height * 00.1,
                    decoration: BoxDecoration(
                      color: biruBgColor,
                      borderRadius: BorderRadius.circular(
                        12,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Aktifkan Pembayaran Otomatis\nPengaturan kode unik untuk mempermudah\npengecekan jumlah transfer pelanggan',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: black1Color,
                              ),
                            ),
                            Transform.scale(
                              scale: 1,
                              child: Switch(
                                  focusColor: black1Color,
                                  activeColor: biruColor,
                                  value: isDisabled2,
                                  onChanged: (check) {
                                    setState(() {
                                      isDisabled2 = check;
                                    });
                                  }),
                            ),
                          ],
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
                        // padding: const EdgeInsets.only(left: 10),
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
                    height: size.height * 00.3,
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
