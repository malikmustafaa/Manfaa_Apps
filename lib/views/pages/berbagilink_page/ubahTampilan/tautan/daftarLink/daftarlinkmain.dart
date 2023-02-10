import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:manfaa_apps/views/pages/berbagilink_page/ubahTampilan/tautan/daftarLink/dribblemain.dart';
import 'package:manfaa_apps/views/pages/berbagilink_page/ubahTampilan/tautan/daftarLink/whattsappmain.dart';

import 'instagrammain.dart';

class DaftarLinkMain extends StatefulWidget {
  const DaftarLinkMain({Key? key}) : super(key: key);

  @override
  State<DaftarLinkMain> createState() => _DaftarLinkMain();
}

class _DaftarLinkMain extends State<DaftarLinkMain> {
  File? image;

  Future getImage() async {
    final ImagePicker _picker = ImagePicker();
    // ignore: non_constant_identifier_names
    final XFile? ImagePicked =
        await _picker.pickImage(source: ImageSource.gallery);
    image = File(ImagePicked!.path);
    setState(() {});
  }

  bool isDisabled = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(
              15,
            ),
          ),
          color: Color.fromARGB(225, 37, 154, 185)),
      margin: const EdgeInsets.only(left: 13, right: 13, bottom: 13, top: 13),
      child: ExpansionTile(
        collapsedIconColor: const Color.fromARGB(255, 0, 0, 0),
        title: Container(
          transform: Matrix4.translationValues(8, 0, 10),
          decoration:
              const BoxDecoration(color: Color.fromRGBO(37, 154, 185, 0.1)),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Row(
              children: const [
                Icon(
                  Icons.file_copy_outlined,
                  color: Colors.black,
                  // color: biruColor,
                ),
                SizedBox(
                  width: 10,
                ),
                Text('Lihat Daftar Link',
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'ubuntu',
                        color: Colors.black)),
              ],
            ),
          ]),
        ),
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
              border: Border.all(color: Colors.black),
            ),
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
              ),
              child: Column(
                children: const [
                  SizedBox(
                    height: 16,
                  ),
                  //Judul
                  DaftarLink(),
                  SizedBox(
                    height: 15,
                  ),
                  WhatsAppmain(),
                  SizedBox(
                    height: 15,
                  ),
                  Dribllemain(),
                  // ignore: prefe
                  // r_const_constructors
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
