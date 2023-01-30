import 'package:flutter/material.dart';
import 'package:manfaa_apps/berbagi_link/tabs/event_online/event_online.dart';
import 'package:manfaa_apps/berbagi_link/tabs/integrasi_pihak_ketiga/integrasi_pihak_ketiga.dart';
import 'package:manfaa_apps/berbagi_link/tabs/manajemen_User/manajemen_user.dart';
import 'package:manfaa_apps/berbagi_link/tabs/profile/profile.dart';
import 'package:manfaa_apps/widgets/custom_wrap.dart';

class TabBerbagiLink extends StatefulWidget {
  const TabBerbagiLink({Key? key}) : super(key: key);

  @override
  State<TabBerbagiLink> createState() => _TabBerbagiLinkState();
}

class _TabBerbagiLinkState extends State<TabBerbagiLink> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      width: double.infinity,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 6,
          vertical: 20,
        ),
        child: Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          children: <Widget>[
            MITMenuContainer.none(
              onTap: () {},
              image: Image.asset(
                'assets/images/ubahtampilan.png',
                width: 66,
              ),
              text: 'Ubah Tampilan',
            ),
            MITMenuContainer.none(
              onTap: () {},
              image: Image.asset(
                'assets/images/analisislink.png',
                width: 66,
              ),
              text: 'Analisis Link',
            ),
            MITMenuContainer.none(
              onTap: () {},
              image: Image.asset(
                'assets/images/pratinjau.png',
                width: 66,
              ),
              text: 'Pratinjau',
            ),
            MITMenuContainer.none(
              onTap: () {},
              image: Image.asset(
                'assets/images/tema.png',
                width: 66,
              ),
              text: 'Tema',
            ),
            MITMenuContainer.none(
              onTap: () {},
              image: Image.asset(
                'assets/images/trackingpixel.png',
                width: 66,
              ),
              text: 'Tracking Pixels',
            ),
            MITMenuContainer.none(
              onTap: () {},
              image: Image.asset(
                'assets/images/emaildatabase.png',
                width: 66,
              ),
              text: 'Email Database',
            ),
            MITMenuContainer.none(
              onTap: () {},
              image: Image.asset(
                'assets/images/tagihan.png',
                width: 66,
              ),
              text: 'Tagihan',
            ),
            MITMenuContainer.none(
              onTap: () {},
              image: Image.asset(
                'assets/images/bagito.png',
                width: 66,
              ),
              text: 'Bagi.to',
            ),
            MITMenuContainer.none(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ManajemenUser(),
                  ),
                );
              },
              image: Image.asset(
                'assets/images/manajemenuser.png',
                width: 66,
              ),
              text: 'Manajemen User',
            ),
            MITMenuContainer.none(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const EventOnline(),
                  ),
                );
              },
              image: Image.asset(
                'assets/images/eventonline.png',
                width: 66,
              ),
              text: 'Event Online',
            ),
            MITMenuContainer.none(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Profile(),
                  ),
                );
              },
              image: Image.asset(
                'assets/images/profile.png',
                width: 66,
              ),
              text: 'Profile',
            ),
            MITMenuContainer.none(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const IntegrasiPihakKetiga(),
                  ),
                );
              },
              image: Image.asset(
                'assets/images/integrasipihakketiga.png',
                width: 66,
              ),
              text: 'Integrasi Pihak Ketiga',
            ),
          ],
        ),
      ),
    ));
  }
}
