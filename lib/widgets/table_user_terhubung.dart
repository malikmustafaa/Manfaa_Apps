// ignore_for_file: non_constant_identifier_names, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:manfaa_apps/contants/color_style.dart';
import 'package:manfaa_apps/contants/text.dart';

import '../berbagi_link/tabs/manajemen_User/tambahkan akun/edit_user.dart';

class TableUserTerhubung extends StatefulWidget {
  const TableUserTerhubung({Key? key}) : super(key: key);

  @override
  State<TableUserTerhubung> createState() => _TableDaftarAkunState();
}

class _TableDaftarAkunState extends State<TableUserTerhubung> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildDaftarList(),
        _HeaderListData(),
        _ListData(),
      ],
    );
  }

  Widget _buildDaftarList() {
    Size size = MediaQuery.of(context).size;
    return Container(
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
          horizontal: 20,
        ),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
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
                SetText.user_akun_yang_mengaitkan,
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

      // ),
    );
  }

  Widget _ListData() {
    Size size = MediaQuery.of(context).size;
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: 8,
      itemBuilder: (context, index) {
        return Container(
          height: size.height * 00.05,
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
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  SetText.ahmad,
                  style: anaklistStyle,
                ),
                Text(
                  SetText.email1,
                  style: anaklistStyle,
                ),
                Text(
                  SetText.status,
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
                    ]),
              ],
            ),
          ),
        );
      },
    );
  }

  // ignore: non_constant_identifier_names
  Widget _HeaderListData() {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 00.05,
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
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              SetText.nama,
              style: newStyle,
            ),
            Text(
              SetText.email,
              style: newStyle,
            ),
            Text(
              SetText.status,
              style: newStyle,
            ),
            Text(
              SetText.action,
              style: newStyle,
            ),
          ],
        ),
      ),
    );
  }
}
