import 'package:flutter/material.dart';
import 'package:manfaa_apps/views/pages/berbagilink_page/analisis_link_page/analisis_link_page.dart';
import 'package:manfaa_apps/views/pages/berbagilink_page/bagi_to_page/bagi_to_page.dart';
import 'package:manfaa_apps/views/pages/berbagilink_page/email_database_page/email_database_page.dart';
import 'package:manfaa_apps/views/pages/berbagilink_page/pratinjau_page/pratinjau_page.dart';

import 'package:manfaa_apps/views/pages/berbagilink_page/profile_page/profil_berbagilink_page.dart';
import 'package:manfaa_apps/views/pages/berbagilink_page/tagihan_page/tagihan_page.dart';
import 'package:manfaa_apps/views/pages/berbagilink_page/tema_page/tema.dart';
import 'package:manfaa_apps/views/pages/berbagilink_page/tracking_pixels_page/tracking_pixels_page.dart';
import 'package:manfaa_apps/views/pages/berbagilink_page/ubahTampilan/UbahTampilan.dart';

import '../../widgets/custom_wrap.dart';

import 'event_online_page/event_online_page.dart';
import 'integrasi_pihak_ketiga_page/integrasi_pihak_ketiga_page.dart';
import 'manajemen_user_page/manajemen_user_page.dart';

class TabBerbagilinkPage extends StatefulWidget {
  const TabBerbagilinkPage({Key? key}) : super(key: key);

  @override
  State<TabBerbagilinkPage> createState() => _TabBerbagilinkPageState();
}

class _TabBerbagilinkPageState extends State<TabBerbagilinkPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      width: double.infinity,
      child: Container(
        padding: const EdgeInsets.symmetric(
          //   horizontal: 6,
          vertical: 20,
        ),
        child: Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          children: <Widget>[
            MITMenuContainer.none(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => UbahTampilanPage(),
                  ),
                );
              },
              image: Image.asset(
                'assets/images/ubahtampilan.png',
                width: 66,
              ),
              text: 'Ubah Tampilan',
            ),
            MITMenuContainer.none(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AnalisisLinkPage(),
                  ),
                );
              },
              image: Image.asset(
                'assets/images/analisislink.png',
                width: 66,
              ),
              text: 'Analisis Link',
            ),
            MITMenuContainer.none(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PratinjauPage(),
                  ),
                );
              },
              image: Image.asset(
                'assets/images/pratinjau.png',
                width: 66,
              ),
              text: 'Pratinjau',
            ),
            MITMenuContainer.none(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TemaPage(),
                  ),
                );
              },
              image: Image.asset(
                'assets/images/tema.png',
                width: 66,
              ),
              text: 'Tema',
            ),
            MITMenuContainer.none(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const trackingPixelsPage(),
                  ),
                );
              },
              image: Image.asset(
                'assets/images/trackingpixel.png',
                width: 66,
              ),
              text: 'Tracking Pixels',
            ),
            MITMenuContainer.none(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const emailDatabasePage(),
                  ),
                );
              },
              image: Image.asset(
                'assets/images/emaildatabase.png',
                width: 66,
              ),
              text: 'Email Database',
            ),
            MITMenuContainer.none(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TagihanPage(),
                  ),
                );
              },
              image: Image.asset(
                'assets/images/tagihan.png',
                width: 66,
              ),
              text: 'Tagihan',
            ),
            MITMenuContainer.none(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const BagiToPage(),
                  ),
                );
              },
              image: Image.asset(
                'assets/images/bagito.png',
                width: 66,
              ),
              text: 'Bagi.to',
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MITMenuContainer.none(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ManajemenUserPage(),
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
                        builder: (context) => const EventOnlinePage(),
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
                        builder: (context) => const ProfilePage(),
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
                        builder: (context) => const IntegrasiPihakKetigaPage(),
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
          ],
        ),
      ),
    ));
  }
}
