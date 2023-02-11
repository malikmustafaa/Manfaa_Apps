// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:manfaa_apps/contants/color_style.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:manfaa_apps/contants/text.dart';
import 'package:manfaa_apps/views/pages/berbagilink_page/berbagi_link_page.dart';
import 'package:manfaa_apps/views/pages/berbagilink_page/profile_page/profil_berbagilink_page.dart';

class EventOnlinePage extends StatefulWidget {
  const EventOnlinePage({Key? key}) : super(key: key);

  @override
  State<EventOnlinePage> createState() => _EventOnlineState();
}

class _EventOnlineState extends State<EventOnlinePage> {
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
                  'Event Online',
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
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      'Link Event Anda',
                      style: simpanStyle,
                    ),
                  ),
                  SizedBox(
                    height: size.height * 00.02,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      color: biruBgColor,
                    ),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'berbagi.link/yoga/event',
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
                      'Edit Pengaturan Event',
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
                      color: biruBgColor,
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Status Halaman Event',
                                  style: listcontainerStyle,
                                ),
                                Text(
                                  'Aktifkan & matikan Halaman Event dengan sekali klik',
                                  style: listaktifStyle,
                                ),
                              ],
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
                      'Nama Organisasi/Penyelenggara',
                      style: defaultStyle,
                    ),
                  ),
                  SizedBox(
                    height: size.height * 00.02,
                  ),
                  TextField(
                    autocorrect: false,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintStyle: textfieldStyle,
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
                    decoration: InputDecoration(
                      hintStyle: textfieldStyle,
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
                      SetText.logo_organisasi,
                      style: defaultStyle,
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
                              width: size.width * 0.32,
                              height: size.height * 0.17,
                              child: Image.file(
                                image!,
                                fit: BoxFit.cover,
                              ))
                          : GestureDetector(
                              onTap: () async {
                                await getImage();
                              },
                              child: Container(
                                width: size.width * 0.32,
                                height: size.height * 0.17,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    15,
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
                                      'Klik untuk',
                                      style: klikStyle,
                                    ),
                                    Text(
                                      'Upload Logo',
                                      style: klikStyle,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                      SizedBox(width: size.width * 0.05),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Unggah gambar berukuran',
                            style: unggahgmbr1Style,
                          ),
                          SizedBox(
                            height: size.height * 00.007,
                          ),
                          Text(
                            'resolusi 1 : 1',
                            style: unggahgmbr1Style,
                          ),
                          SizedBox(
                            height: size.height * 00.007,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(
                                () {
                                  image = null;
                                },
                              );
                            },
                            child: Text(
                              'Hapus logo',
                              style: hapusStyle,
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
                      'Alamat',
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
                    decoration: InputDecoration(
                      hintStyle: textfieldStyle,
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
                      'Nomor WhatsApp',
                      style: defaultStyle,
                    ),
                  ),
                  SizedBox(
                    height: size.height * 00.02,
                  ),
                  TextField(
                    autocorrect: false,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintStyle: textfieldStyle,
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
                      'Isi Chat Otomatis Whatsapp oleh Pelanggan',
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
                    decoration: InputDecoration(
                      hintStyle: textfieldStyle,
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
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      'Link Facebook',
                      style: defaultStyle,
                    ),
                  ),
                  SizedBox(
                    height: size.height * 00.02,
                  ),
                  TextField(
                    autocorrect: false,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintStyle: textfieldStyle,
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
                      'Link Instagram',
                      style: defaultStyle,
                    ),
                  ),
                  SizedBox(
                    height: size.height * 00.02,
                  ),
                  TextField(
                    autocorrect: false,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintStyle: textfieldStyle,
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
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Aktifkan Kode Unik',
                                  style: aktifStyle,
                                ),
                                Text(
                                  'Pengaturan kode unik untuk mempermudah',
                                  style: bawahStyle,
                                ),
                                Text(
                                  'pengecekan jumlah transfer pelanggan',
                                  style: bawahStyle,
                                ),
                              ],
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
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Aktifkan Pembayaran Otomatis',
                                  style: aktifStyle,
                                ),
                                 Text(
                                  'Digunakan untuk mempermudah konfirmasi',
                                  style:  TextStyle(fontSize: 11,color: black1Color,
                          fontFamily: 'ubuntu'),
                                ),
                                 Text(
                                  'pembayaran secara otomatis dengan kode unik',
                                  style:  TextStyle(fontSize: 11,color: black1Color,
                          fontFamily: 'ubuntu'),
                                ),
                              ],
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
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                20,
                              ),
                            ),
                          ),
                          child: Text(
                            'Batal',
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
