import 'package:flutter/material.dart';
import 'package:manfaa_apps/berbagi_link/tabs/profile/afiliasi/afiliasi.dart';
import 'package:manfaa_apps/contants/color_style.dart';
import '../../../../../widgets/table_daftar_downline.dart';
import '../../profile.dart';

class DaftarDownline extends StatefulWidget {
  const DaftarDownline({Key? key}) : super(key: key);

  @override
  State<DaftarDownline> createState() => _DaftarDownlineState();
}

class _DaftarDownlineState extends State<DaftarDownline> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
                    Navigator.of(context).pop(const Afiliasi());
                  },
                  icon: Image(
                    image: const AssetImage(
                      'assets/images/iconback.png',
                    ),
                    color: black1Color,
                  ),
                ),
                Text(
                  'Daftar Downline',
                  style: appbarStyle,
                ),
              ],
            ),
          ],
        ),
        actions: [
          IconButton(
            iconSize: 65,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Profile()),
              );
            },
            icon: CircleAvatar(
              backgroundColor: biruBgColor,
              backgroundImage: const AssetImage(
                "assets/images/orang.png",
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 8,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Afiliasi',
                        style: header1Style,
                      ),
                      SizedBox(
                        width: size.width * 0.010,
                      ),
                      const Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                      ),
                      SizedBox(
                        width: size.width * 0.010,
                      ),
                      Text(
                        'Daftar Downline',
                        style: header2Style,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 00.03,
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      'Jumlah Afiliasi : 3',
                      style: appbarStyle,
                    ),
                  ),
                  SizedBox(
                    height: size.height * 00.02,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    height: size.height * 00.065,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        16,
                      ),
                      color: biruBgColor,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.file_copy_outlined,
                                color: biruColor,
                              ),
                            ),
                            Text(
                              'Facebook',
                              style: default2tyle,
                            ),
                          ],
                        ),
                        Text(
                          '0',
                          style: angkastyle,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.height * 00.02,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    height: size.height * 00.065,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        16,
                      ),
                      color: biruBgColor,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.file_copy_outlined,
                                color: biruColor,
                              ),
                            ),
                            Text(
                              'Google+',
                              style: default2tyle,
                            ),
                          ],
                        ),
                        Text(
                          '1',
                          style: angkastyle,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.height * 00.02,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    height: size.height * 00.065,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        16,
                      ),
                      color: biruBgColor,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.file_copy_outlined,
                                color: biruColor,
                              ),
                            ),
                            Text(
                              'Whatsapp',
                              style: default2tyle,
                            ),
                          ],
                        ),
                        Text(
                          '2',
                          style: angkastyle,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.height * 00.02,
                  ),
                  Container(
                    height: size.height * 00.0033,
                    color: greyColor,
                  ),
                  SizedBox(
                    height: size.height * 00.02,
                  ),
                  const TableDaftarDownline(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
