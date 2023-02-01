import 'dart:io';
import 'package:flutter/material.dart';
import 'package:manfaa_apps/contants/color_style.dart';
import 'package:image_picker/image_picker.dart';
import 'package:manfaa_apps/contants/text.dart';
import 'package:manfaa_apps/views/pages/berbagilink_page/manajemen_user_page/tambahkan_akun_page/tambahkan_akun_page.dart';
import 'package:manfaa_apps/views/pages/berbagilink_page/profile_page/profil_berbagilink_page.dart';
import '../../../../widgets/custom_list_form_input/dropdown.dart';
import '../../../../widgets/custom_list_form_input/listdaerah_widget.dart';

class EditUserPage extends StatefulWidget {
  const EditUserPage({Key? key}) : super(key: key);

  @override
  State<EditUserPage> createState() => _EditUserPageState();
}

class _EditUserPageState extends State<EditUserPage> {
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
                    Navigator.of(context).pop(const TambahkanAkunPage());
                  },
                  icon: Image(
                    image: const AssetImage(
                      'assets/images/iconback.png',
                    ),
                    color: black1Color,
                  ),
                ),
                Text(
                  'Edit User',
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Tambahkan Akun',
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
                        'Edit User',
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
                  SizedBox(
                    height: size.height * 00.02,
                    // width: 200,
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      'Nama',
                      style: defaultStyle,
                    ),
                  ),
                  SizedBox(
                    height: size.height * 00.02,
                  ),
                  SizedBox(
                    child: TextField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintStyle: header1Style,
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
                      'Nomor Telepon',
                      style: defaultStyle,
                    ),
                  ),
                  SizedBox(
                    height: size.height * 00.02,
                  ),
                  TextField(
                    keyboardType: TextInputType.text,
                    // obscureText: _obsecure,

                    decoration: InputDecoration(
                      hintStyle: textfieldStyle,
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
                      'Email',
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
                          'ahmadxxxxxx@gmail.com',
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
                      'Alamat',
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
                      decoration: InputDecoration(
                        hintStyle: textfieldStyle,
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
                      'Nomor KTP',
                      style: defaultStyle,
                    ),
                  ),
                  SizedBox(
                    height: size.height * 00.02,
                  ),
                  TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintStyle: textfieldStyle,
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
                                      'Upload Foto Ktp',
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
                      'Nomor Paspor',
                      style: defaultStyle,
                    ),
                  ),
                  SizedBox(
                    height: size.height * 00.02,
                  ),
                  TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintStyle: textfieldStyle,
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
                                      'Upload Foto Paspor',
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
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              onPressed: () {},
                              color: whiteColor,
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
                                'Simpan',
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
        Administrator(
          textEditingController: _peranController,
          title: 'Peran',
          hint: ' Administrator',
          isFieldSelected: true,
          provinsi: _listProvinsi,
        )
      ],
    );
  }
}
