import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../../contants/color_style.dart';

class LogoFooter extends StatefulWidget {
  const LogoFooter({Key? key}) : super(key: key);

  @override
  State<LogoFooter> createState() => _LogoFooterState();
}

class _LogoFooterState extends State<LogoFooter> {
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
              const BoxDecoration(color: Color.fromARGB(225, 37, 154, 185)),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Row(
              children: const [
                Icon(
                  Icons.file_copy,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 10,
                ),
                Text('Logo Di Footer',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'ubuntu')),
              ],
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    20,
                  ),
                ),
              ),
              child: const Text(
                'PRO',
              ),
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
                children: [
                  const SizedBox(
                    height: 16,
                  ),
                  //Judul
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Tampilkan Foto"),
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
                  const SizedBox(
                    height: 16,
                  ),

                  Row(
                    children: const [
                      Text(
                        "URL",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "(link ke halaman saat pengunjung menekan logo)",
                        style: TextStyle(fontSize: 10),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),

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
                      hintText: 'Masukkan URL',
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
                    height: 16,
                  ),

                  Column(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          image != null
                              ? SizedBox(
                                  width: size.width * 0.83,
                                  height: size.height * 0.15,
                                  child: Image.file(
                                    image!,
                                    fit: BoxFit.cover,
                                  ))
                              : GestureDetector(
                                  onTap: () async {
                                    await getImage();
                                  },
                                  child: Container(
                                    width: size.width * 0.83,
                                    height: size.height * 0.15,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                        8,
                                      ),
                                      color: greyColor,
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const [
                                        Icon(
                                          Icons.upload,
                                          size: 40,
                                        ),
                                        Text(
                                          "Upload Logo Anda",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                          Column(
                            children: [
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
                                child: const Padding(
                                  padding: EdgeInsets.only(
                                    right: 0,
                                  ),
                                ),
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
                      Text(
                        "**Beberapa tema tidak mendukung fitu ini**",
                        style: TextStyle(fontSize: 10),
                      )
                    ],
                  ),
                  Row(
                    children: const [
                      Text(
                        "**Gunakan resolusi 3:1 untuk hasil yang optimal**",
                        style: TextStyle(fontSize: 10),
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: 15,
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
                        width: size.width * 0.40,
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
                        width: size.width * 0.40,
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
                  // ignore: prefer_const_constructors
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
