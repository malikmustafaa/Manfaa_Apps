import 'package:flutter/material.dart';

class Custom extends StatefulWidget {
  const Custom({Key? key}) : super(key: key);

  @override
  State<Custom> createState() => _CustomState();
}

class _CustomState extends State<Custom> {
  double _currentSliderPrimaryValue = 0.2;
  double _currentSliderSecondaryValue = 0.5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        reverse: true,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
          child: Column(
            children: [
              const Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Pilih Tipe Header',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Ubuntu',
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                  ),
                ),
              ),
              // ignore: prefer_const_constructors

              Tabcard(),
              ButtonSolid(),
              ButtonOutline(),
              ContainerWarna(),
              TambahkanBackground(),
              ContainerSimpan(),
            ],
          ),
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget Tabcard() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      reverse: true,
      child: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          Row(
            children: const [
              Card(
                color: Color(0xE0259AB9),
                shape: RoundedRectangleBorder(
                    side: BorderSide(width: 3, color: Colors.black),
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                child: SizedBox(
                  height: 190,
                  width: 145,
                ),
              ),
              Card(
                color: Color(0xE0259AB9),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                child: SizedBox(
                  height: 180,
                  width: 135,
                ),
              ),
              Card(
                color: Color(0xE0259AB9),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                child: SizedBox(
                  height: 180,
                  width: 135,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget ButtonSolid() {
    return Column(
      children: [
        const SizedBox(
          height: 15,
        ),
        const Divider(
          color: Colors.grey,
          height: 2, // Warna pada garis
        ),
        const SizedBox(
          height: 15,
        ),
        const Align(
          alignment: Alignment.bottomLeft,
          child: Text(
            'Pilih Tipe Button',
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'Ubuntu',
              fontWeight: FontWeight.w700,
              fontSize: 16,
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        const Align(
          alignment: Alignment.bottomLeft,
          child: Text(
            'Solid',
            style: TextStyle(
              fontFamily: 'Ubuntu',
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 15,
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 45,
              width: 100,
              child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        const MaterialStatePropertyAll(Color(0xFFFF9800)),
                    shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Teks',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  )),
            ),
            SizedBox(
              height: 45,
              width: 100,
              child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        const MaterialStatePropertyAll(Color(0xFFFF9800)),
                    shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                        side: const BorderSide(width: 2),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Teks',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  )),
            ),
            SizedBox(
              height: 45,
              width: 100,
              child: ElevatedButton(
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                      Color(0xFFFF9800),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Teks',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  )),
            ),
          ],
        ),
      ],
    );
  }

  // ignore: non_constant_identifier_names
  Widget ButtonOutline() {
    return Column(
      children: [
        const SizedBox(
          height: 15,
        ),
        const Align(
          alignment: Alignment.bottomLeft,
          child: Text(
            'Outline',
            style: TextStyle(
              fontFamily: 'Ubuntu',
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 15,
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 45,
              width: 100,
              child: TextButton(
                style: ButtonStyle(
                  padding: MaterialStateProperty.all<EdgeInsets>(
                      const EdgeInsets.all(15)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                      side: const BorderSide(color: Colors.black, width: 2),
                    ),
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  'Teks',
                  style: TextStyle(fontSize: 14, color: Colors.orange),
                ),
              ),
            ),
            SizedBox(
              height: 45,
              width: 100,
              child: TextButton(
                style: ButtonStyle(
                  padding: MaterialStateProperty.all<EdgeInsets>(
                      const EdgeInsets.all(15)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                      side: const BorderSide(color: Colors.black, width: 2),
                    ),
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  'Teks',
                  style: TextStyle(fontSize: 14, color: Colors.orange),
                ),
              ),
            ),
            SizedBox(
              height: 45,
              width: 100,
              child: TextButton(
                style: ButtonStyle(
                  padding: MaterialStateProperty.all<EdgeInsets>(
                      const EdgeInsets.all(15)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                      side: const BorderSide(color: Colors.black, width: 2),
                    ),
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  'Teks',
                  style: TextStyle(fontSize: 14, color: Colors.orange),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        const Divider(
          color: Colors.grey,
          height: 2, // Warna pada garis
        ),
      ],
    );
  }

  // ignore: non_constant_identifier_names
  Widget ContainerWarna() {
    return Column(
      children: [
        const SizedBox(
          height: 15,
        ),
        const Align(
          alignment: Alignment.bottomLeft,
          child: Text(
            'Warna & Font',
            style: TextStyle(
              fontFamily: 'Ubuntu',
              color: Colors.black,
              fontWeight: FontWeight.w700,
              fontSize: 16,
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Align(
          alignment: Alignment.bottomLeft,
          child: Text(
            'Warna Latar',
            style: TextStyle(
              fontFamily: 'Ubuntu',
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(width: 2, color: Colors.grey),
          ),
          height: 65,
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 2, color: Colors.grey),
                ),
                height: 54,
                width: 54,
              ),
              const SizedBox(
                width: 15,
              ),
              const Text(
                '#FFFFFF',
                style: TextStyle(
                    fontFamily: 'Ubuntu',
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                    fontSize: 16),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Align(
          alignment: Alignment.bottomLeft,
          child: Text(
            'Warna Teks',
            style: TextStyle(
              fontFamily: 'Ubuntu',
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(width: 2, color: Colors.grey),
          ),
          height: 65,
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 2, color: Colors.grey),
                ),
                height: 54,
                width: 54,
              ),
              const SizedBox(
                width: 15,
              ),
              const Text(
                '#FFFFFF',
                style: TextStyle(
                    fontFamily: 'Ubuntu',
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                    fontSize: 16),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Align(
          alignment: Alignment.bottomLeft,
          child: Text(
            'Warna Tombol',
            style: TextStyle(
              fontFamily: 'Ubuntu',
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(width: 2, color: Colors.grey),
          ),
          height: 65,
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 2, color: Colors.grey),
                ),
                height: 54,
                width: 54,
              ),
              const SizedBox(
                width: 15,
              ),
              const Text(
                '#FFFFFF',
                style: TextStyle(
                    fontFamily: 'Ubuntu',
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                    fontSize: 16),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Align(
          alignment: Alignment.bottomLeft,
          child: Text(
            'Warna Teks pada Tombol',
            style: TextStyle(
              fontFamily: 'Ubuntu',
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(width: 2, color: Colors.grey),
          ),
          height: 65,
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 2, color: Colors.grey),
                ),
                height: 54,
                width: 54,
              ),
              const SizedBox(
                width: 15,
              ),
              const Text(
                '#FFFFFF',
                style: TextStyle(
                    fontFamily: 'Ubuntu',
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                    fontSize: 16),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        const Divider(
          color: Colors.grey,
          height: 2, // Warna pada garis
        ),
        const SizedBox(
          height: 15,
        ),
      ],
    );
  }

  // ignore: non_constant_identifier_names
  Widget TambahkanBackground() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              'Tambahkan Background',
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  color: Colors.black),
            ),
            Text(
              'Hapus',
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  color: Colors.grey),
            )
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Card(
              color: const Color(0xE0259AB9),
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12))),
              child: SizedBox(
                height: 160,
                width: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.upload,
                      size: 40,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Upload Gambar',
                      style: TextStyle(
                          fontFamily: 'Ubuntu',
                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Align(
                  child: Text(
                    'Blur',
                    style: TextStyle(
                        fontFamily: 'Ubuntu',
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Colors.black),
                  ),
                ),
                Slider(
                  value: _currentSliderPrimaryValue,
                  secondaryTrackValue: _currentSliderPrimaryValue,
                  label: _currentSliderPrimaryValue.round().toString(),
                  onChanged: (double value) {
                    setState(() {
                      _currentSliderPrimaryValue = value;
                    });
                  },
                ),
                const Text(
                  'Transparansi',
                  style: TextStyle(
                      fontFamily: 'Ubuntu',
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Colors.black),
                ),
                Slider(
                  value: _currentSliderSecondaryValue,
                  secondaryTrackValue: _currentSliderSecondaryValue,
                  label: _currentSliderSecondaryValue.round().toString(),
                  onChanged: (double value) {
                    setState(() {
                      _currentSliderSecondaryValue = value;
                    });
                  },
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        const Divider(
          color: Colors.grey,
          height: 2, // Warna pada garis
        ),
        const SizedBox(
          height: 15,
        ),
      ],
    );
  }

  // ignore: non_constant_identifier_names
  Widget ContainerSimpan() {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Column(
      children: [
        SizedBox(
          height: 50,
          width: w / 1,
          child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(const Color(0xE0259AB9)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)))),
              onPressed: () {},
              child: const Text(
                'Simpan',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              )),
        ),
        SizedBox(
          height: h / 3,
        )
      ],
    );
  }
}
