// ignore_for_file: non_constant_identifier_names, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:manfaa_apps/contants/color_style.dart';

class TableUserTerhubungWidget extends StatefulWidget {
  const TableUserTerhubungWidget({Key? key}) : super(key: key);

  @override
  State<TableUserTerhubungWidget> createState() => _TableDaftarAkunState();
}

class _TableDaftarAkunState extends State<TableUserTerhubungWidget> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
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
              horizontal: 20,
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
                      'User Mengaitkan Akun Anda',
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
              ],
            ),
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
            // color: i % 2 == 1 ? greyColor : null,
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
                      'Status',
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
                  height: size.height * 00.05,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
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
                        'Status',
                        style: anaklistStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Icon(
                            Icons.edit,
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
    );
  }
}
