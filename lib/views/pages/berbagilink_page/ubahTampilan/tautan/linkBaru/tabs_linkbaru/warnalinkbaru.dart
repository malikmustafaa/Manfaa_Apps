import 'package:flutter/material.dart';

import '../../../../../../../contants/color_style.dart';

// ignore: camel_case_types
class warnaLinkbaru extends StatefulWidget {
  const warnaLinkbaru({Key? key}) : super(key: key);

  @override
  State<warnaLinkbaru> createState() => _Tabs1State();
}

final List<Tab> myTabs = List.generate(
  3,
  (index) => Tab(text: 'TAB $index'),
);

class _Tabs1State extends State<warnaLinkbaru>
    with SingleTickerProviderStateMixin {
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
  border: Border.all(color: biruColor),
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
                  const Text("Ubah Warna"),
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
                    "Warna Tombol",
                    style: TextStyle(fontWeight: FontWeight.bold),
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
                  prefixIcon: const Icon(
                    Icons.color_lens,
                    color: Colors.blueAccent,
                  ),
                  hintText: '#FFFFFF',
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
                height: 20,
              ),

              Row(
                children: const [
                  Text(
                    "Warna Teks Tombol",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
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
                  prefixIcon: const Icon(
                    Icons.color_lens,
                    color: Colors.blueAccent,
                  ),
                  hintText: '#FFFFFF',
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
                height: 20,
              ),
              Row(
                children: const [
                  Text(
                    "Warna Garis",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
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
                  prefixIcon: const Icon(
                    Icons.color_lens,
                    color: Colors.blueAccent,
                  ),
                  hintText: '#FFFFFF',
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
                height: 30,
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
                    width: size.width * 0.37,
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
                    width: size.width * 0.37,
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
