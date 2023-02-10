import 'package:flutter/material.dart';

import '../../../../contants/color_style.dart';
import '../../../widgets/colors.dart';
import '../berbagi_link_page.dart';

class TagihanPage extends StatelessWidget {
  static const nameRoute = '/tagihan';

  const TagihanPage({Key? key}) : super(key: key);

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
                    Navigator.of(context).pop(BerbagilinkPage());
                  },
                  icon: Image(
                    image: const AssetImage(
                      'assets/images/iconback.png',
                    ),
                    color: black1Color,
                  ),
                ),
                Text(
                  'Tagihan',
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
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(24),
                        ),
                        hintStyle: TextStyle(color: Colors.grey[800]),
                        prefix: const SizedBox(width: 10),
                        hintText: "Cari ...",
                        fillColor: Colors.white70,
                        suffixIcon: SizedBox(
                          child: IconButton(
                              onPressed: () {}, icon: const Icon(Icons.search)),
                          width: 18,
                        )),
                  ),
                ],
              ),
              // Search end
              const SizedBox(
                width: 30,
              ),

              // Tagihan List
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
                        "Daftar Tagihan",
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
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            width: 0.3,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 14),
                      height: 40,
                      // width: 355,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Nomor Order",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Paket",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Periode",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Status",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    for (int i = 0; i < 15; i++)
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        color: i % 2 == 1 ? ColorSelect.primaryColor : null,
                        height: 40,
                        // width: 355,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              'BBGLINK245200006',
                              style: TextStyle(fontSize: 11),
                            ),
                            Text(
                              'Bussiness',
                              style: TextStyle(fontSize: 11),
                            ),
                            Text(
                              '1 Bulan',
                              style: TextStyle(fontSize: 11),
                            ),
                            Text(
                              'EXPIRED\n22/11/2022',
                              style: TextStyle(fontSize: 11),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      )
                  ],
                ),
              ),
              const SizedBox(height: 30)
            ],
          ),
        ),
      ),
    );
  }
}
