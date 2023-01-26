// ignore_for_file: non_constant_identifier_names, unnecessary_null_comparison, unused_local_variable

import 'dart:io';

import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:manfaa_apps/berbagi_link/tabs/manajemen_User/tambahkan%20akun/tambahkan_akun.dart';
// import 'package:manfaa_apps/berbagi_link/tabs/manajemen_User/tambahkan%20akun/tambahkan_akun1.dart';
import 'package:manfaa_apps/contants/color_style.dart';
import 'package:image_picker/image_picker.dart';
import 'package:manfaa_apps/contants/text.dart';

import '../../../../widgets/custom_list_form_input/apptextfield.dart';
import '../../../../widgets/custom_list_form_input/dropdown.dart';

class EditUser extends StatefulWidget {
  const EditUser({Key? key}) : super(key: key);

  @override
  State<EditUser> createState() => _EditUserState();
}

class _EditUserState extends State<EditUser> {
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
                    Navigator.of(context).pop(const TambahkanAkun());
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
                  SetText.edit_user,
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        SetText.tambahkan_akun,
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
                        SetText.edit_user,
                        style: header2Style,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 00.02,
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                SetText.ubah_foto_profil,
                                style: pelajariStyle,
                              ),
                              Text(
                                SetText.unggah_gmbr,
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: grey1Color,
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
                    // width: 200,
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
                        hintText: "Ahmad",
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
                  TextField(
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
                        color: greyColor,
                      ),
                      hintText: "contoh : 0857XXXXXXXX",
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
                          SetText.email2,
                          style: constStyle,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.height * 00.02,
                  ),
                  _mainBody(),
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
                          : GestureDetector(
                              onTap: () async {
                                await getImage();
                              },
                              child: Container(
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
                                    const Icon(
                                      Icons.upload,
                                      size: 30,
                                    ),
                                    Text(
                                      SetText.upload_foto_ktp,
                                      style: defaultStyle,
                                    ),
                                  ],
                                ),
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

                  //
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
                          : GestureDetector(
                              onTap: () async {
                                await getImage1();
                              },
                              child: Container(
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
                                    const Icon(
                                      Icons.upload,
                                      size: 30,
                                    ),
                                    Text(
                                      SetText.upload_foto_paspor,
                                      style: defaultStyle,
                                    ),
                                  ],
                                ),
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

  Widget _mainBody() {
    Size size = MediaQuery.of(context).size;
    final List<SelectedListItem> _listProvinsi = [
      SelectedListItem(false, 'Kartu Tanda Penduduk(KTP)'),
      SelectedListItem(false, 'Kartu Keluarga(KK)'),
      SelectedListItem(false, 'Kartu Pelajar(KP)'),
    ];

    /// This is register text field controllers.
    // ignore: unused_field

    final _peranController = TextEditingController();

    @override
    void dispose() {
      super.dispose();
      final _peranController = TextEditingController();
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppTextField(
          textEditingController: _peranController,
          title: 'Peran',
          hint: ' Administrator',
          isFieldSelected: true,
          provinsi: _listProvinsi,
        ),
      ],
    );
  }
}
