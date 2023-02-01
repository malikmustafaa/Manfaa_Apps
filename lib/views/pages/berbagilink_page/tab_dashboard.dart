import 'package:flutter/material.dart';
import 'package:manfaa_apps/contants/text.dart';

class TabDashboard extends StatelessWidget {
  const TabDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text(SetText.tabdashboard)),
    );
  }
}
