import 'package:flutter/material.dart';
import 'package:manfaa_apps/views/pages/berbagilink_page/ubahTampilan/tautan/linkBaru/tabs_linkbaru/animasi.dart';
import 'package:manfaa_apps/views/pages/berbagilink_page/ubahTampilan/tautan/linkBaru/tabs_linkbaru/arahkan.dart';
import 'package:manfaa_apps/views/pages/berbagilink_page/ubahTampilan/tautan/linkBaru/tabs_linkbaru/ikonlinkbaru.dart';
import 'package:manfaa_apps/views/pages/berbagilink_page/ubahTampilan/tautan/linkBaru/tabs_linkbaru/judul.dart';
import 'package:manfaa_apps/views/pages/berbagilink_page/ubahTampilan/tautan/linkBaru/tabs_linkbaru/penjadwalanLink.dart';
import 'package:manfaa_apps/views/pages/berbagilink_page/ubahTampilan/tautan/linkBaru/tabs_linkbaru/sublink.dart';
import 'package:manfaa_apps/views/pages/berbagilink_page/ubahTampilan/tautan/linkBaru/tabs_linkbaru/warnalinkbaru.dart';

class Linkbaru extends StatefulWidget {
  const Linkbaru({Key? key}) : super(key: key);

  @override
  State<Linkbaru> createState() => _LinkbaruState();
}

final List<Tab> myTabs = List.generate(
  7,
  (index) => Tab(text: 'TAB $index'),
);

class _LinkbaruState extends State<Linkbaru>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  // ignore: prefer_typing_uninitialized_variables
  var kTitleTextStyle;

  @override
  void initState() {
    tabController = TabController(length: 7, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

// class _LinkbaruState extends State<Linkbaru> {
  // File? image;
  // late TabController tabController;

  // Future getImage() async {
  //   final ImagePicker _picker = ImagePicker();
  //   final XFile? ImagePicked =
  //       await _picker.pickImage(source: ImageSource.gallery);
  //   image = File(ImagePicked!.path);
  //   setState(() {});
//   }

  bool isDisabled = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(
            10,
          ),
        ),
        color: Color.fromARGB(225, 37, 154, 185),
      ),
      margin: const EdgeInsets.only(left: 13, right: 13, bottom: 13, top: 13),
      child: ExpansionTile(
        collapsedIconColor: const Color.fromARGB(255, 0, 0, 0),
        title: Container(
          transform: Matrix4.translationValues(8, 0, 10),
          decoration:
              const BoxDecoration(color: Color.fromRGBO(37, 154, 185, 0.1)),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Row(
              children: const [
                Icon(
                  Icons.file_copy_outlined,
                  // color: biruColor,
                  size: 25,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 10,
                ),
                Text('Buat Link Baru',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold)),
              ],
            ),
          ]),
        ),
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
              border: Border.all(color: Colors.black),
            ),
            child: Column(
              children: [
                //Judul
                _tabsWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container _tabsWidget() {
    // ignore: sized_box_for_whitespace
    return Container(
      // padding: EdgeInsets.symmetric(horizontal: 15),
      height: 320,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 0, right: 0),
            child: Column(
              children: [
                Container(
                  decoration: const BoxDecoration(),
                  child: TabBar(
                    isScrollable: true,
                    unselectedLabelColor: Colors.black,
                    // labelColor: Colors.black,
                    // indicatorColor: Colors.black,
                    // indicatorWeight: 02,
                    labelColor: Colors.black,
                    indicator: const UnderlineTabIndicator(
                        borderSide: BorderSide(width: 2, color: Colors.black)),
                    controller: tabController,

                    tabs: const [
                      // 1
                      Tab(
                        child: Text(
                          "Judul",
                          style: TextStyle(
                            fontFamily: 'ubuntu',
                            fontSize: 17,
                          ),
                        ),
                      ),
                      // 2
                      Tab(
                        child: Text(
                          "Sublink",
                          style: TextStyle(
                            fontFamily: 'ubuntu',
                            fontSize: 17,
                          ),
                        ),
                      ),
                      // 3
                      Tab(
                        child: Text(
                          "Warna",
                          style: TextStyle(
                            fontFamily: 'ubuntu',
                            fontSize: 17,
                          ),
                        ),
                      ),
                      // 4
                      Tab(
                        child: Text(
                          "Ikon",
                          style: TextStyle(
                            fontFamily: 'ubuntu',
                            fontSize: 17,
                          ),
                        ),
                      ),
                      // 5
                      Tab(
                        child: Text(
                          "Penjadwalan",
                          style: TextStyle(
                            fontFamily: 'ubuntu',
                            fontSize: 17,
                          ),
                        ),
                      ),
                      // 6
                      Tab(
                        child: Text(
                          "Animasi",
                          style: TextStyle(
                            fontFamily: 'ubuntu',
                            fontSize: 17,
                          ),
                        ),
                      ),
                      // 7
                      Tab(
                        child: Text(
                          "Arahkan",
                          style: TextStyle(
                            fontFamily: 'ubuntu',
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: const [
                judullinkbaru(),
                subLink(),
                warnaLinkbaru(),
                ikonLinkBaru(),
                penjadwalanLink(),
                animasiLinkbaru(),
                arahkanlinkbaru()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
