import 'package:flutter/material.dart';

import '../../../../contants/color_style.dart';
import '../../../widgets/colors.dart';
import '../../../widgets/expansion.dart';
import '../../../widgets/expansion_button.dart';
import '../../../widgets/list_link.dart';
import '../../../widgets/text_field.dart';
import '../../../widgets/title_text.dart';
import '../berbagi_link_page.dart';
import 'analisis_bagito_page.dart';

class BagiToPage extends StatefulWidget {
  static const nameRoute = '/bagiTo';

  const BagiToPage({Key? key}) : super(key: key);

  @override
  State<BagiToPage> createState() => _BagiToPageState();
}

// ignore: camel_case_types
class _BagiToPageState extends State<BagiToPage> {
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                  'Tracking Pixels',
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
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              expansionBtn(
                  "Buat Link Baru",
                  Icons.add_link,
                  Container(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const titleText("Judul"),
                        const textField(
                            "Masukkan Judul Link (contoh: Google Maps)"),
                        const titleText("Link Asli"),
                        const textField("Masukkan Link yang ingin disingkat"),
                        const titleText("Generate Link (otomatis)"),
                        Container(
                          padding: const EdgeInsets.all(4),
                          margin: const EdgeInsets.only(bottom: 12),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              color: ColorSelect.primaryColor),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: const EdgeInsets.only(left: 20),
                                child: Text(
                                  "bagi.to/Judul",
                                  style: TextStyle(
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: ColorSelect.primaryColorText),
                                ),
                              ),
                              Row(
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.file_copy),
                                    color: ColorSelect.primaryColorText,
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.share),
                                    color: ColorSelect.primaryColorText,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [
                            expansionSaveBtn("Batal", false),
                            expansionSaveBtn("Simpan", true),
                          ],
                        )
                      ],
                    ),
                  )),
              // Expansion Button End

              const SizedBox(height: 20),

              // Expansion Button
              expansionBtn(
                "Daftar Link Bagi.to",
                Icons.list,
                Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 8.0, right: 12, left: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Pilih Semua",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Hapus Link",
                            style: TextStyle(color: ColorSelect.disableColor),
                          ),
                        ],
                      ),
                    ),
                    const Divider(),
                    // for (int i = 0; i < 7; i++)
                    const linkList("text"),
                    const linkList("text"),
                    const linkList("text"),
                    const linkList("text"),
                    const linkList("text"),
                    const linkList("text"),

                    const Divider(),
                    const SizedBox(height: 4),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const AnalisPage()));
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: const [
                                Text("Lihat Hasil Analisis Link"),
                                Icon(Icons.chevron_right)
                              ],
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                              shape: const StadiumBorder(),
                              maximumSize: const Size(230, 40),
                              elevation: 0,
                              backgroundColor: ColorSelect.buttonColorText),
                        ),
                        const SizedBox(
                          width: 8,
                        )
                      ],
                    ),
                    const SizedBox(height: 10)
                  ],
                ),
              ),
              // Expansion Button End

              const SizedBox(height: 12),
              const Divider(),
              const SizedBox(height: 12),

              Container(
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: ColorSelect.primaryColor),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.add_rounded,
                          size: 26,
                          color: ColorSelect.primaryColorText,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text('Tutorial memakai fitur Bagi.to',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: ColorSelect.primaryColorText)),
                      ],
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.chevron_right),
                      iconSize: 28,
                      color: ColorSelect.primaryColorText,
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 26),

              Container(
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: ColorSelect.primaryColor),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.add_rounded,
                          size: 26,
                          color: ColorSelect.primaryColorText,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text('Informasi & Promo Terbaru',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: ColorSelect.primaryColorText)),
                      ],
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.chevron_right),
                      iconSize: 28,
                      color: ColorSelect.primaryColorText,
                    ),
                  ],
                ),
              ),
              // Nav Button End
            ],
          ),
        ),
      ),
    );
  }
}
