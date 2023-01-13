import 'package:flutter/material.dart';
import 'package:manfaa_apps/contants/color_style.dart';

class UserMengaitkan extends StatefulWidget {
  const UserMengaitkan({Key? key}) : super(key: key);

  @override
  State<UserMengaitkan> createState() => _DaftarAkunState();
}

class _DaftarAkunState extends State<UserMengaitkan> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 18,
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
        ),

        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
          color: Color(0xFFE3F2FD),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.group,
              color: biruColor,
              size: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 50,
              ),
              child: Text(
                "User Mengaitkan Akun Anda",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  fontStyle: FontStyle.normal,
                  color: biruColor,
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.circle,
                size: 25,
                color: biruColor,
              ),
            ),
          ],
        ),
        // padding: EdgeInsets.symmetric(),
      ),
    );
  }
}
