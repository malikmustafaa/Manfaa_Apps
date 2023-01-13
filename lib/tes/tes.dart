// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:manfaa_apps/contants/color_style.dart';

class Tes extends StatefulWidget {
  const Tes({Key? key}) : super(key: key);

  @override
  State<Tes> createState() => _TesState();
}

class _TesState extends State<Tes> {
  List<Akun> akunList = [
    Akun(nama: "Ahmad", email: "ahmadx@gm..", peran: "Admin", action: "a"),
    Akun(nama: "Ahmad", email: "ahmadx@gm..", peran: "Admin", action: "a"),
    Akun(nama: "Ahmad", email: "ahmadx@gm..", peran: "Admin", action: "a"),
    Akun(nama: "Ahmad", email: "ahmadx@gm..", peran: "Admin", action: "a"),
    Akun(nama: "Ahmad", email: "ahmadx@gm..", peran: "Admin", action: "a"),
    Akun(nama: "Ahmad", email: "ahmadx@gm..", peran: "Admin", action: "a"),
    Akun(nama: "Ahmad", email: "ahmadx@gm..", peran: "Admin", action: "a"),
    Akun(nama: "Ahmad", email: "ahmadx@gm..", peran: "Admin", action: "a"),
  ];

  @override
  Widget build(BuildContext context) {
    print(akunList);
    return Scaffold(
      body: Container(
        // width: 365,
        // height: 40,

        // margin: EdgeInsets.only(right: 10),
        // padding: EdgeInsets.only(right: 20),
        decoration: const BoxDecoration(
          // /color: greyColor,
          border: Border(
            left: BorderSide(
              color: Colors.black,
              width: 1.5,
            ),
            right: BorderSide(
              color: Colors.black,
              width: 1.5,
            ),
            bottom: BorderSide(
              color: Colors.black,
              width: 1,
            ),
          ),
        ),
        // margin: EdgeInsets.symmetric(),

        child: DataTable(
          // sortColumnIndex: 2,
          sortAscending: true,
          columns: const [
            DataColumn(
              label: Text('Nama'),
            ),

            DataColumn(label: Text('Email')),

            DataColumn(label: Text('Peran')),
            DataColumn(label: Text('Action')),
            // DataColumn(
            //   label: Text('Opening Quantity'),
            //   numeric: true,
            // ),
            // DataColumn(label: Text('Quantity In'), numeric: true),
            // DataColumn(label: Text('Quantity Out'), numeric: true),
            // DataColumn(label: Text('Closing Quantity67'), numeric: true)
          ],

          rows: akunList // accessing list from Getx controller
              .map(
                (Akun) => DataRow(
                  cells: [
                    DataCell(
                      Text(Akun.nama.toString()),
                    ),
                    DataCell(
                      Text(Akun.email.toString()),
                    ),
                    DataCell(
                      Text(Akun.peran.toString()),
                    ),
                    DataCell(
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: const Icon(
                              Icons.edit,
                              color: Colors.black,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: const Icon(
                              Icons.delete,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
              .toList(),

          // rows: const [
          // DataRow(selected: true, cells: [
          //   DataCell(Text('EL-7861')),

          //   DataCell(Text('96.00'))
          // ]),
          // DataRow(cells: [
          //   DataCell(Text('EL-7862')),
          //   DataCell(Text('Meat grinder')),
          //   DataCell(Text('538.00'), showEditIcon: true),
          //   // DataCell(Text('133.00')),
          //   // DataCell(Text('0.00')),
          //   DataCell(Text('96.00'))
          // ]),
          // DataRow(cells: [
          //   DataCell(Text('EL-7862')),
          //   DataCell(Text('Microwave oven')),
          //   DataCell(Text('116.00')),
          //   DataCell(Text('28.00')),
          //   DataCell(Text('5.00')),
          //   DataCell(Text('139.00'))
          // ]),
          // ],
        ),
      ),
    );
  }
}

class Akun {
  String? nama;
  String? email;
  String? peran;
  String? action;

  Akun({this.nama, this.email, this.peran, this.action});
}
