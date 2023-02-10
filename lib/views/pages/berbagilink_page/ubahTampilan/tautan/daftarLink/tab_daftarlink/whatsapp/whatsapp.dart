import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:image_picker/image_picker.dart';

import '../../../../../../../../contants/color_style.dart';

// ignore: camel_case_types
class whatsapp extends StatefulWidget {
  const whatsapp({Key? key}) : super(key: key);

  @override
  State<whatsapp> createState() => _instagram();
}

final List<Tab> myTabs = List.generate(
  3,
  (index) => Tab(text: 'TAB $index'),
);

// ignore: camel_case_types
class _instagram extends State<whatsapp> with SingleTickerProviderStateMixin {
  late TabController tabController;

  // ignore: prefer_typing_uninitialized_variables
  var kTitleTextStyle;

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  bool isDisabled = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
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
                  const Text("Tampilkan Judul"),
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
                children: const [
                  Text(
                    "Judul",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 48,
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: black1Color),
                    borderRadius: BorderRadius.circular(15),
                    color: const Color.fromARGB(224, 255, 255, 255)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Padding(
                    //
                    //padding: EdgeInsets.only(left: 10)),

                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Padding(padding: EdgeInsets.only(left: 10)),
                        Text("WhatsApp",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ))
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),

              Row(
                children: const [
                  Text(
                    "Tipe",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ],
              ),

              const SizedBox(
                height: 10,
              ),
              Container(
                height: 48,
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: black1Color),
                    borderRadius: BorderRadius.circular(15),
                    color: const Color.fromARGB(224, 255, 255, 255)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Padding(
                    //
                    //padding: EdgeInsets.only(left: 10)),

                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Padding(padding: EdgeInsets.only(left: 10)),
                        Text("Pilih Tipe",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ))
                      ],
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.keyboard_arrow_down_rounded)),
                  ],
                ),
              ),

              const SizedBox(
                height: 20,
              ),

              Row(
                children: const [
                  Text(
                    "Judul",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 48,
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: black1Color),
                    borderRadius: BorderRadius.circular(15),
                    color: const Color.fromARGB(223, 163, 212, 255)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Padding(
                    //
                    //padding: EdgeInsets.only(left: 10)),

                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Padding(padding: EdgeInsets.only(left: 10)),
                        Icon(Icons.people),
                        SizedBox(
                          width: 5,
                        ),
                        Text("Pilih Tipe",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ))
                      ],
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.keyboard_arrow_down_rounded)),
                  ],
                ),
              ),

              const SizedBox(
                height: 20,
              ),

              Row(
                children: const [
                  Text(
                    "Jenis",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ],
              ),

              const SizedBox(
                height: 10,
              ),

              Container(
                height: 48,
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: black1Color),
                    borderRadius: BorderRadius.circular(15),
                    color: const Color.fromARGB(223, 163, 212, 255)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Padding(
                    //
                    //padding: EdgeInsets.only(left: 10)),

                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Padding(padding: EdgeInsets.only(left: 10)),
                        Image.asset("assets/images/ig.png"),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text("Pilih Tipe",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ))
                      ],
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.keyboard_arrow_down_rounded)),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),

              Row(
                children: const [
                  Text(
                    "Username Instragram",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 48,
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: black1Color),
                    borderRadius: BorderRadius.circular(15),
                    color: const Color.fromARGB(224, 255, 255, 255)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Padding(
                    //
                    //padding: EdgeInsets.only(left: 10)),

                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Padding(padding: EdgeInsets.only(left: 10)),
                        Text("ui.Zilong",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ))
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: const [
                  Text(
                    "Generate",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 48,
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: black1Color),
                    borderRadius: BorderRadius.circular(15),
                    color: const Color.fromARGB(224, 255, 255, 255)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Padding(
                    //
                    //padding: EdgeInsets.only(left: 10)),

                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Padding(padding: EdgeInsets.only(left: 10)),
                        Text("whatsapp.com/ui.zilong",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ))
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 20,
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
                    width: size.width * 0.35,
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
                    width: size.width * 0.35,
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
              const SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      ),
    );
  }
}
