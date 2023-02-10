// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:manfaa_apps/contants/color_style.dart';

import '../pages/berbagilink_page/manajemen_user_page/tambahkan_akun_page/edit_user_page.dart';

// ignore: must_be_immutable
class TableDaftarAkunWidget extends StatefulWidget {
  const TableDaftarAkunWidget({Key? key}) : super(key: key);

  @override
  State<TableDaftarAkunWidget> createState() => _TableDaftarAkunWidgetState();
}

class _TableDaftarAkunWidgetState extends State<TableDaftarAkunWidget> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            height: size.height * 00.075,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(
                  30,
                ),
                topRight: Radius.circular(
                  30,
                ),
              ),
              color: biruBgColor,
            ),
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.group,
                          color: biruColor,
                          size: 25,
                        ),
                        SizedBox(
                          width: size.width * 0.030,
                        ),
                        Text(
                          'Daftar Akun',
                          style: biru2Style,
                        ),
                      ],
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.circle,
                        size: 25,
                        color: biruColor,
                      ),
                    ),
                  ]),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: black1Color,
                  width: 1,
                ),
                left: BorderSide(
                  color: black1Color,
                  width: 1,
                ),
                right: BorderSide(
                  color: black1Color,
                  width: 1,
                ),
              ),
            ),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: greyColor,
                        width: 1.5,
                      ),
                    ),
                  ),
                  height: size.height * 00.05,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Nama',
                        style: newStyle,
                      ),
                      Text(
                        'Email',
                        style: newStyle,
                      ),
                      Text(
                        'Peran',
                        style: newStyle,
                      ),
                      Text(
                        'Action',
                        style: newStyle,
                      ),
                    ],
                  ),
                ),
                for (int i = 0; i < 8; i++)
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    height: size.height * 00.05,
                    color: i % 2 == 1 ? greyColor : null,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Ahmad',
                          style: anaklistStyle,
                        ),
                        Text(
                          "ahmadx@gm..",
                          style: anaklistStyle,
                        ),
                        Text(
                          'Admin',
                          style: anaklistStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (content) =>
                                          const EditUserPage(),
                                    ));
                              },
                              child: const Icon(
                                Icons.edit,
                              ),
                            ),
                            SizedBox(
                              width: size.width * 00.04,
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: const Icon(
                                Icons.delete,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
