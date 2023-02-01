// ignore_for_file: non_constant_identifier_names, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:manfaa_apps/views/pages/berbagilink_page/manajemen_user_page/tambahkan_akun_page/edit_user_page.dart';

import '../../contants/color_style.dart';

class TableDaftarDownlineWidget extends StatefulWidget {
  const TableDaftarDownlineWidget({Key? key}) : super(key: key);

  @override
  State<TableDaftarDownlineWidget> createState() => _TableDaftarDownlineState();
}

class _TableDaftarDownlineState extends State<TableDaftarDownlineWidget> {
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
                          'Daftar Downline',
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
                  ])),
        ),
        Container(
          decoration: const BoxDecoration(
            border: Border(
              left: BorderSide(
                color: Colors.black,
                width: 1,
              ),
              right: BorderSide(
                color: Colors.black,
                width: 1,
              ),
              bottom: BorderSide(
                color: Colors.black,
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
                child: Container(
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
                        'Action',
                        style: newStyle,
                      ),
                    ],
                  ),
                ),
              ),
              for (int i = 0; i < 3; i++)
                Container(
                  color: i % 2 == 1 ? greyColor : null,
                  height: size.height * 00.05,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Ahmad',
                        style: anaklistStyle,
                      ),
                      SizedBox(
                        width: size.width * 00.1,
                      ),
                      Text(
                        'ahmadxxxxxx@gmail.com',
                        style: anaklistStyle,
                      ),
                      SizedBox(
                        width: size.width * 00.05,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (content) => const EditUserPage(),
                                ),
                              );
                            },
                            child: const Icon(
                              Icons.edit,
                            ),
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
