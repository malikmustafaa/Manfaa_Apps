import 'package:flutter/material.dart';

class ItemKategori extends StatefulWidget {
  final String text;
  final String image;
  // final String text;
  final GestureTapCallback onTap;
  const ItemKategori(
      {required this.text, Key? key, required this.image, required this.onTap})
      : super(key: key);

  @override
  State<ItemKategori> createState() => _ItemKategoriState();
}

class _ItemKategoriState extends State<ItemKategori> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
