// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:manfaa_apps/views/pages/berbagilink_page/bagi_to_page/bagi_to_page.dart';

import '../../../../contants/color_style.dart';
import '../../../widgets/colors.dart';
import '../../../widgets/title_text.dart';

class AnalisPage extends StatefulWidget {
  static const nameRoute = '/AnalisPage';

  const AnalisPage({Key? key}) : super(key: key);

  @override
  State<AnalisPage> createState() => _AnalisPageState();
}

class _AnalisPageState extends State<AnalisPage> {
  DateTime selectDate_dari = DateTime.now();
  DateTime selectDate_hingga = DateTime.now();
  String dropdownvalue = 'Item 1';
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  @override
  Widget build(BuildContext context) {
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
                    Navigator.of(context).pop(const BagiToPage());
                  },
                  icon: Image(
                    image: const AssetImage(
                      'assets/images/iconback.png',
                    ),
                    color: black1Color,
                  ),
                ),
                Text(
                  'Analisis Bagi.to',
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
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Analisis Link",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Dari",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      const Text(
                        "Hingga ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "(max. 1 bulan)",
                        style: TextStyle(color: ColorSelect.disableColor),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {
                      showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2016),
                              lastDate: DateTime(2025),
                              initialEntryMode: DatePickerEntryMode.input)
                          .then((value) {
                        if (value != null)
                          // ignore: curly_braces_in_flow_control_structures
                          setState(() {
                            selectDate_hingga = value;
                          });
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(DateFormat.yMd().format(selectDate_hingga)),
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {
                      showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2016),
                              lastDate: DateTime(2025),
                              initialEntryMode: DatePickerEntryMode.input)
                          .then((value) {
                        if (value != null)
                          // ignore: curly_braces_in_flow_control_structures
                          setState(() {
                            selectDate_dari = value;
                          });
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(DateFormat.yMd().format(selectDate_dari)),
                    ),
                  ),
                ),
              ],
            ),
            const titleText("Filter"),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: ColorSelect.disableColor),
                        borderRadius: BorderRadius.circular(12)),
                    child: DropdownButton(
                      isExpanded: true,
                      value: dropdownvalue,
                      icon: const Icon(Icons.keyboard_arrow_down),
                      items: items.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(
                            items,
                            style: const TextStyle(color: Colors.black),
                          ),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownvalue = newValue!;
                        });
                      },
                      underline: const SizedBox(),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.all(16),
              margin: const EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(32),
                    topRight: Radius.circular(32),
                  ),
                  color: ColorSelect.primaryColor),
              child: Row(
                children: [
                  Icon(
                    Icons.group,
                    color: ColorSelect.primaryColorText,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      "Jumlah Total Klik Link",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: ColorSelect.primaryColorText),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  // borderRadius: BorderRadius.circular(12),
                  // Border
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(12)
                  // Border End
                  ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Jumlah Total Klik Link",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 16),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 6.0),
                          child: Text(
                            "68",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 24),
                          ),
                        ),
                      ],
                    ),
                    const Divider(),
                    const total_klik(),
                    const Divider(),
                    const total_klik(),
                    const Divider(),
                    const total_klik(),
                    const Divider(),
                    const total_klik(),
                    const Divider(),
                    const total_klik(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class total_klik extends StatelessWidget {
  const total_klik({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "bagi.to/ABC1",
              style: TextStyle(fontSize: 12),
            ),
            Text(
              "https://maps.google.com/?cid=3153958313...",
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(right: 8.0),
          child: Text(
            "17",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
      ],
    );
  }
}
