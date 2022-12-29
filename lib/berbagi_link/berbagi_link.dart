// ignore_for_file: must_be_immutable, avoid_unnecessary_containers, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:manfaa_apps/berbagi_link/tabs/tab_berbagi_link.dart';
import 'package:manfaa_apps/berbagi_link/tabs/tab_dashboard.dart';
import 'package:manfaa_apps/contants/color_style.dart';
// ignore: unused_import

class BerbagiLink extends StatefulWidget {
  IconData? icon;

  BerbagiLink({Key? key}) : super(key: key);

  @override
  State<BerbagiLink> createState() => _BerbagiLinkState();
}

final List<Tab> myTabs = List.generate(
  2,
  (index) => Tab(text: 'TAB $index'),
);

class _BerbagiLinkState extends State<BerbagiLink>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  // ignore: prefer_typing_uninitialized_variables
  var kTitleTextStyle;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            const Color.fromRGBO(255, 255, 255, 1).withOpacity(0.4),
        elevation: 0,
        title: Row(
          children: [
            // ignore: avoid_unnecessary_containers
            Container(
              child: IconButton(
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
                onPressed: () {
                  Navigator.of(context).pop(BerbagiLink());

                  //statements
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 20),
              child: Text(
                'Berbagi.link',
                style: TextStyle(
                    fontStyle: FontStyle.normal,
                    // color: black1Color,
                    color: black1Color,
                    fontSize: 24,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ],
        ),
        actions: [
          // ignore: avoid_unnecessary_containers
          Container(
            child: IconButton(
              iconSize: 65,
              icon: CircleAvatar(
                backgroundImage: const AssetImage("assets/images/orang.png"),
                backgroundColor: biruColor,
              ), //Circl,
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                // margin: const EdgeInsets.only(left: 25),
                height: 48,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.pink[50],
                ),
                child: Container(
                  margin: const EdgeInsets.only(left: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.help,
                        color: orangeColor,
                        size: 25,
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Container(
                        child: Text(
                          "Pelajari cara kerja Berbagi.link",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            fontStyle: FontStyle.normal,
                            color: orangeColor,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 25),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.keyboard_arrow_right_rounded,
                            size: 25,
                            color: orangeColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                // margin: const EdgeInsets.only(left: 25),
                width: 350,
                height: 2,
                decoration: BoxDecoration(
                  color: greyColor,
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Align(
                alignment: Alignment.topLeft,
                // padding: const EdgeInsets.only(right: 220),
                child: Text(
                  "Link punyamu",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                height: 48,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: const Color(0xFFE3F2FD),
                ),
                // ignore: avoid_unnecessary_containers
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 20),
                        child: Text(
                          "berbagi.link/yoga",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            fontStyle: FontStyle.normal,
                            color: biruColor,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            // margin: const EdgeInsets.only(left: 90),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.file_copy_rounded,
                                size: 25,
                                color: biruColor,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 10),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.qr_code_2,
                                size: 25,
                                color: biruColor,
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              _tabsWidget(),

              // Expanded(child: _tesTaba(context))
            ],
          ),
        ),
      ),
    );
  }

  Container _tabsWidget() {
    // ignore: sized_box_for_whitespace
    return Container(
      // padding: EdgeInsets.symmetric(horizontal: 15),
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          const SizedBox(height: 16),
          // ignore: sized_box_for_whitespace
          Container(
            width: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    // color: Color.fromARGB(255, 173, 169, 169),
                    borderRadius: BorderRadius.circular(64),
                    border: Border.all(
                      color: Colors.black, //color of border
                      width: 1, //width of border
                    ),
                  ),
                  child: TabBar(
                    unselectedLabelColor: Colors.black,
                    labelColor: Colors.white,
                    indicatorColor: Colors.white,
                    indicatorWeight: 2,
                    indicator: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(64),
                    ),
                    controller: tabController,
                    tabs: const [
                      Tab(
                        text: 'Dashboard',
                      ),
                      Tab(
                        text: 'Menu Berbagi.link',
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
                TabDashboard(),
                TabBerbagiLink(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
