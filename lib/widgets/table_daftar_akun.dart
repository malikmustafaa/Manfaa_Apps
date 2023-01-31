// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:manfaa_apps/contants/color_style.dart';

import '../berbagi_link/tabs/manajemen_User/tambahkan akun/edit_user.dart';

// ignore: must_be_immutable
class TableDaftarAkun extends StatefulWidget {
  const TableDaftarAkun({Key? key}) : super(key: key);

  @override
  State<TableDaftarAkun> createState() => _TableDaftarAkunState();
}

class _TableDaftarAkunState extends State<TableDaftarAkun> {
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
                  horizontal: 20,
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
                                    builder: (content) => const EditUser(),
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
    );
  }
}
