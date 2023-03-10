import 'package:flutter/material.dart';
import 'package:manfaa_apps/contants/color_style.dart';

class TableDaftarAkunTerhubungWidget extends StatefulWidget {
  const TableDaftarAkunTerhubungWidget({Key? key}) : super(key: key);

  @override
  State<TableDaftarAkunTerhubungWidget> createState() =>
      _TableDaftarAkunState();
}

class _TableDaftarAkunState extends State<TableDaftarAkunTerhubungWidget> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          height: size.height * 00.075,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(
                30,
              ),
              topRight: Radius.circular(
                30,
              ),
            ),
            color: Color(0xFFE3F2FD),
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
                      'Daftar Akun yang Terhubung',
                      style: biru2Style,
                    ),
                  ],
                ),
                Icon(
                  Icons.circle,
                  size: 25,
                  color: biruColor,
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
