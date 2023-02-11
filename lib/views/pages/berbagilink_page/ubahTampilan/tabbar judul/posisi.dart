import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../../contants/color_style.dart';

// ignore: camel_case_types
class tab3 extends StatefulWidget {
  const tab3({Key? key}) : super(key: key);

  @override
  State<tab3> createState() => _daftarLinkState();
}

// ignore: camel_case_types
class _daftarLinkState extends State<tab3> {
  int? _value = 1;
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
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
        border: Border.all(color: Colors.black),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 16,
            ),
            //Judul
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Pilih Aligemnt Text Judul",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Radio(
                          value: 1,
                          groupValue: _value,
                          onChanged: (value) {
                            setState(() {
                              _value = value as int?;
                            });
                          },
                        ),
                        Row(
                          children: const [
                            Padding(padding: EdgeInsets.only(top: 5)),
                            Text(
                              "Kiri",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Padding(padding: EdgeInsets.only(left: 30)),
                        Column(
                          children: [
                            Image.asset(
                              "assets/images/file.png",
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Radio(
                              value: 2,
                              groupValue: _value,
                              onChanged: (value) {
                                setState(() {
                                  _value = value as int?;
                                });
                              },
                            ),
                            Row(
                              children: const [
                                Padding(padding: EdgeInsets.only(top: 5)),
                                Text(
                                  "Tengah",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Padding(padding: EdgeInsets.only(left: 30)),
                        Column(
                          children: [
                            Image.asset(
                              "assets/images/file.png",
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Radio(
                              value: 3,
                              groupValue: _value,
                              onChanged: (value) {
                                setState(() {
                                  _value = value as int?;
                                });
                              },
                            ),
                            Row(
                              children: const [
                                Padding(padding: EdgeInsets.only(top: 5)),
                                Text(
                                  "Kanan",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Padding(padding: EdgeInsets.only(left: 30)),
                        Column(
                          children: [
                            Image.asset(
                              "assets/images/file.png",
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),

            const SizedBox(
              height: 55,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      64,
                    ),
                    border: Border.all(
                      width: 1.5,
                      color: black1Color,
                    ),
                  ),
                  height: size.height * 00.068,
                  width: size.width * 0.38,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          64,
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
                  width: size.width * 0.38,
                  // padding: const EdgeInsets.only(left: 10),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: black1Color,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          64,
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
 
          ],
        ),
      ),
    );
  }
}
