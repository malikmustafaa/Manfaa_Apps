import 'package:flutter/material.dart';

import '../../../../../contants/color_style.dart';
import 'artikelBaru/buatartikelBaru.dart';
import 'daftarArtikel/daftarartikel.dart';
import 'daftarLink/daftarlinkmain.dart';
import 'grupLinkbaru/gruplink.dart';
import 'judulBaru/judulbaru.dart';
import 'linkBaru/buatlinkbaru.dart';

class TautanPage extends StatelessWidget {
  const TautanPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(padding: EdgeInsets.only(top: 18)),
            const judulbaru(),
            const Linkbaru(),
            const gruplink(),
            const buatArtikelbaru(),
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.all(16),
                  height: 1,
                  color: black1Color,
                ),
                const DaftarLinkMain(),
                const DaftarArtikelmain(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
