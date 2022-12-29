import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:manfaa_apps/berbagi_link/tabs/manajemen_User/manajemen_user.dart';

import '../../contants/color_style.dart';

class TabBerbagiLink extends StatefulWidget {
  const TabBerbagiLink({Key? key}) : super(key: key);

  @override
  State<TabBerbagiLink> createState() => _TabBerbagiLinkState();
}

class _TabBerbagiLinkState extends State<TabBerbagiLink> {
  // List<Widget> _generateChildren(int count) {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      width: double.infinity,
      child: Container(
        // color: Colors.amber,
        padding: const EdgeInsets.only(top: 20),
        child: Wrap(spacing: 10, runSpacing: 20, children: [
          _itemUbahTampilan(77, 70),
          _itemAnalisisLink(77, 70),
          _itemPratinjau(77, 70),
          _itemTema(77, 70),
          _itemTrackingPixels(77, 70),
          _itemEmailDatabase(77, 70),
          _itemTagihan(77, 70),
          _itembagito(77, 70),
          _itemManajemenUser(77, 70),
          _itemEventOnline(77, 70),
          _itemProfile(77, 70),
          _itemIntegrasiPihakKetiga(77, 70),
        ]),
      ),
    ));
  }

  Widget _itemUbahTampilan(double widthImg, double heightImg) {
    return GestureDetector(
      onTap: () {
        log('Ubah Tampilan');
      },
      child: Column(
        children: [
          SizedBox(
            width: 80,
            height: 94,
            // color: Colors.green,
            // padding: EdgeInsets.only(right: 2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: widthImg,
                  height: heightImg,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: const Color(0xffD9D9D9)),
                    color: hijauBgColor,
                  ),
                  child: Center(
                    child: Icon(
                      Icons.replay_outlined,
                      size: 40,
                      color: hijauColor,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  'Ubah Tampilan',
                  style: TextStyle(fontSize: 12),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _itemAnalisisLink(double widthImg, double heightImg) {
    return GestureDetector(
      onTap: () {
        log('Analisis Link');
      },
      child: Column(
        children: [
          SizedBox(
            width: 80,
            height: 94,
            // color: Colors.green,
            // padding: EdgeInsets.only(right: 2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: widthImg,
                  height: heightImg,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: const Color(0xffD9D9D9)),
                    color: hijauBgColor,
                  ),
                  child: Center(
                    child: Icon(
                      Icons.link,
                      size: 40,
                      color: hijauColor,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  'Analisis Link',
                  style: TextStyle(fontSize: 12),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _itemPratinjau(double widthImg, double heightImg) {
    return GestureDetector(
      onTap: () {
        log('Pratinjau');
      },
      child: Column(
        children: [
          SizedBox(
            width: 80,
            height: 94,
            // color: Colors.green,
            // padding: EdgeInsets.only(right: 2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: widthImg,
                  height: heightImg,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: const Color(0xffD9D9D9)),
                    color: hijauBgColor,
                  ),
                  child: Center(
                    child: Icon(
                      Icons.file_open_rounded,
                      size: 40,
                      color: hijauColor,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  'Pratinjau',
                  style: TextStyle(fontSize: 12),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _itemTema(double widthImg, double heightImg) {
    return GestureDetector(
      onTap: () {
        log('Tema');
      },
      child: Column(
        children: [
          SizedBox(
            width: 80,
            height: 94,
            // color: Colors.green,
            // padding: EdgeInsets.only(right: 2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: widthImg,
                  height: heightImg,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: const Color(0xffD9D9D9)),
                    color: hijauBgColor,
                  ),
                  child: Center(
                    child: Icon(
                      Icons.call_to_action,
                      size: 40,
                      color: hijauColor,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  'Tema',
                  style: TextStyle(fontSize: 12),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _itemTrackingPixels(double widthImg, double heightImg) {
    return GestureDetector(
      onTap: () {
        log('Tracking Pixels');
      },
      child: Column(
        children: [
          SizedBox(
            width: 80,
            height: 94,
            // color: Colors.green,
            // padding: EdgeInsets.only(right: 2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: widthImg,
                  height: heightImg,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: const Color(0xffD9D9D9)),
                    color: hijauBgColor,
                  ),
                  child: Center(
                    child: Icon(
                      Icons.location_on,
                      size: 40,
                      color: hijauColor,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  'Tracking Pixels',
                  style: TextStyle(fontSize: 11.100),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _itemEmailDatabase(double widthImg, double heightImg) {
    return GestureDetector(
      onTap: () {
        log('Email Database');
      },
      child: Column(
        children: [
          SizedBox(
            width: 80,
            height: 94,
            // color: Colors.green,
            // padding: EdgeInsets.only(right: 2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: widthImg,
                  height: heightImg,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: const Color(0xffD9D9D9)),
                    color: hijauBgColor,
                  ),
                  child: Center(
                    child: Icon(
                      Icons.email,
                      size: 40,
                      color: hijauColor,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  'Email Database',
                  style: TextStyle(fontSize: 11.100),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _itemTagihan(double widthImg, double heightImg) {
    return GestureDetector(
      onTap: () {
        log('Tagihan');
      },
      child: Column(
        children: [
          SizedBox(
            width: 80,
            height: 94,
            // color: Colors.green,
            // padding: EdgeInsets.only(right: 2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: widthImg,
                  height: heightImg,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: const Color(0xffD9D9D9)),
                    color: hijauBgColor,
                  ),
                  child: Center(
                    child: Icon(
                      Icons.attach_money_outlined,
                      size: 40,
                      color: hijauColor,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  'Tagihan',
                  style: TextStyle(fontSize: 12),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _itembagito(double widthImg, double heightImg) {
    return GestureDetector(
      onTap: () {
        log('bagi.to');
      },
      child: Column(
        children: [
          SizedBox(
            width: 80,
            height: 94,
            // color: Colors.green,
            // padding: EdgeInsets.only(right: 2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: widthImg,
                  height: heightImg,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: const Color(0xffD9D9D9)),
                    color: hijauBgColor,
                  ),
                  child: Center(
                    child: Icon(
                      Icons.share,
                      size: 40,
                      color: hijauColor,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  'bagi.to',
                  style: TextStyle(fontSize: 12),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _itemManajemenUser(double widthImg, double heightImg) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (content) => const ManajemenUser(),
            ));
      },
      child: Column(
        children: [
          SizedBox(
            width: 80,
            height: 94,
            // color: Colors.green,
            // padding: EdgeInsets.only(right: 2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: widthImg,
                  height: heightImg,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: const Color(0xffD9D9D9)),
                    color: hijauBgColor,
                  ),
                  child: Center(
                    child: Icon(
                      Icons.group,
                      size: 40,
                      color: hijauColor,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  'Manajemen User',
                  style: TextStyle(fontSize: 10.1000),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _itemEventOnline(double widthImg, double heightImg) {
    return GestureDetector(
      onTap: () {
        log('Event Online');
      },
      child: Column(
        children: [
          SizedBox(
            width: 80,
            height: 94,
            // color: Colors.green,
            // padding: EdgeInsets.only(right: 2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: widthImg,
                  height: heightImg,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: const Color(0xffD9D9D9)),
                    color: hijauBgColor,
                  ),
                  child: Center(
                    child: Icon(
                      Icons.event_note_sharp,
                      size: 40,
                      color: hijauColor,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  'Event Online',
                  style: TextStyle(fontSize: 12),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _itemProfile(double widthImg, double heightImg) {
    return GestureDetector(
      onTap: () {
        log('Profile');
      },
      child: Column(
        children: [
          SizedBox(
            width: 80,
            height: 94,
            // color: Colors.green,
            // padding: EdgeInsets.only(right: 2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: widthImg,
                  height: heightImg,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: const Color(0xffD9D9D9)),
                    color: hijauBgColor,
                  ),
                  child: Center(
                    child: Icon(
                      Icons.person_outline_outlined,
                      size: 40,
                      color: hijauColor,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  'Profile',
                  style: TextStyle(fontSize: 12),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _itemIntegrasiPihakKetiga(double widthImg, double heightImg) {
    return GestureDetector(
      onTap: () {
        log('Integrasi Pihak Ketiga');
      },
      child: Column(
        children: [
          SizedBox(
            width: 80,
            height: 94,
            // color: Colors.green,
            // padding: EdgeInsets.only(right: 2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: widthImg,
                  height: heightImg,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: const Color(0xffD9D9D9)),
                    color: hijauBgColor,
                  ),
                  child: Center(
                    child: Icon(
                      Icons.group_work,
                      size: 40,
                      color: hijauColor,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  'Integrasi Pihak Ketiga',
                  style: TextStyle(
                    fontSize: 8,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
