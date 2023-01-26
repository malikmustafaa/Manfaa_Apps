import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:manfaa_apps/widgets/table_daftar_akun.dart';
import 'package:manfaa_apps/berbagi_link/tabs/manajemen_User/manajemen_user.dart';
import 'package:manfaa_apps/contants/color_style.dart';
import 'package:manfaa_apps/contants/text.dart';

import '../../../../widgets/custom_list_form_input/apptextfield.dart';
import '../../../../widgets/custom_list_form_input/dropdown.dart';

class TambahkanAkun extends StatefulWidget {
  const TambahkanAkun({Key? key}) : super(key: key);

  @override
  State<TambahkanAkun> createState() => _TambahkanAkunState();
}

class _TambahkanAkunState extends State<TambahkanAkun> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final _namaController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _konfirmasiPasswordController = TextEditingController();

  bool valNama = false;
  bool isHidden = false;
  bool valEmail = false;
  bool valPassword = false;
  bool valKonfirmasiPassword = false;
  bool alertCheck = false;
  bool isValidator = false;

  bool _namaError = false;
  bool _emailError = false;
  bool _passError = false;
  bool _passKonfirmError = false;

  String textEmpty = "mohon diisi";
  String _textNamaError = "";
  String _textEmailError = "";
  String _textPassError = "";
  String _textPassKonfirmError = "";

  bool _doValidate() {
    Pattern pattern =
        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?)*$";
    RegExp regexEmail = RegExp(pattern as String);
    RegExp regexPass = RegExp(r'^(?=.*?[a-z])(?=.*?[0-9]).{8,32}$');
    bool _success = true;

    String _nama = _namaController.text;
    String _email = _emailController.text;

    String _pass = _passwordController.text;
    String _passConfirm = _konfirmasiPasswordController.text;

    if (_nama.isEmpty) {
      setState(
        () {
          _textNamaError = textEmpty;
          _namaError = true;
        },
      );
      _success = false;
    } else if (_nama.length < 8) {
      setState(
        () {
          _namaError = true;
          _textNamaError = "minimal 8 karakter";
        },
      );
      _success = false;
    } else {
      setState(
        () {
          _namaError = false;
        },
      );
    }

    if (_email.isEmpty) {
      setState(
        () {
          _textEmailError = textEmpty;
          _emailError = true;
        },
      );
      _success = false;
    } else if (!regexEmail.hasMatch(_email)) {
      setState(
        () {
          _emailError = true;
          _textEmailError = "masukkan dengan benar";
        },
      );
      _success = false;
    } else {
      setState(
        () {
          _emailError = false;
        },
      );
    }

    if (_pass.isEmpty) {
      setState(
        () {
          _textPassError = textEmpty;
          _passError = true;
        },
      );
      _success = false;
    } else if (!regexPass.hasMatch(_pass)) {
      setState(
        () {
          _passError = true;
          _textPassError = " minimal 8 karakter kombinasi huruf dan angka";
        },
      );
      _success = false;
    } else {
      setState(
        () {
          _passError = false;
        },
      );
    }

    if (_passConfirm.isEmpty) {
      setState(
        () {
          _textPassKonfirmError = textEmpty;
          _passKonfirmError = true;
        },
      );
      _success = false;
    } else if (_passConfirm != _pass) {
      setState(
        () {
          _passKonfirmError = true;
          _textPassKonfirmError = " tidak sama";
        },
      );
      _success = false;
    } else {
      setState(
        () {
          _passKonfirmError = false;
        },
      );
    }

    return _success;
  }

  void _tambahkan() async {
    if (_doValidate()) {
      // ignore: avoid_print
      print("object === >");
      // proses kirim data ke BE

    }
  }

  TextEditingController nama = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
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
                    Navigator.of(context).pop(const ManajemenUser());
                  },
                  icon: Image(
                    image: const AssetImage(
                      'assets/images/iconback.png',
                    ),
                    color: black1Color,
                  ),
                ),
                SizedBox(
                  width: size.width * 0.068,
                ),
                Text(
                  SetText.tambahkan_akun,
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
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        SetText.manajemen_user,
                        style: header1Style,
                      ),
                      SizedBox(
                        width: size.width * 0.010,
                      ),
                      const Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                      ),
                      SizedBox(
                        width: size.width * 0.010,
                      ),
                      Text(
                        SetText.tambahkan_akun,
                        style: header2Style,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  Container(child: _buildtambahAkunIconBack()),
                  SizedBox(
                    height: size.height * 00.03,
                  ),
                  Column(
                    children: const [
                      TableDaftarAkun(),
                    ],
                  ),

                  SizedBox(height: size.height * 0.3)
                  //
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildtambahAkunIconBack() {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Color(0xFFE3F2FD),
      ),
      child: ExpansionTile(
        collapsedIconColor: Colors.blue,
        title: Container(
          transform: Matrix4.translationValues(8, 0, 10),
          decoration: const BoxDecoration(
            color: Color(0xFFE3F2FD),
          ),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Row(
              children: [
                Icon(
                  Icons.note_add_rounded,
                  color: biruColor,
                  size: 25,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(
                    SetText.tambahkan_akun,
                    style: biru2Style,
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: const Color(0xff259AB9),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    20,
                  ),
                ),
              ),
              child: Text(
                SetText.neww,
                style: newStyle,
              ),
            ),
          ]),
        ),
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              border: Border(
                left: BorderSide(
                  color: Colors.black,
                  width: 1,
                ),
                right: BorderSide(
                  color: Colors.black,
                  width: 1,
                ),
                bottom: BorderSide(
                  color: Colors.black,
                  width: 1,
                ),
              ),
            ),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Column(
                children: [
                  _mainBody(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _mainBody() {
    Size size = MediaQuery.of(context).size;
    final List<SelectedListItem> _listProvinsi = [
      SelectedListItem(false, 'Aceh'),
      SelectedListItem(false, 'Jakarta'),
      SelectedListItem(false, 'Bandung'),
    ];

    /// This is register text field controllers.
    // ignore: unused_field

    final _peranController = TextEditingController();

    @override
    void dispose() {
      super.dispose();
      _peranController.dispose();
    }

    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Column(
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              SetText.nama,
              style: defaultStyle,
            ),
          ),
          SizedBox(
            height: size.height * 00.02,
          ),
          TextField(
            controller: _namaController,
            inputFormatters: [
              FilteringTextInputFormatter.deny(' '),
              FilteringTextInputFormatter.allow(
                RegExp(
                  (r'[a-z^A-Z^0-9]'),
                ),
              ),
            ],
            autocorrect: false,
            keyboardType: TextInputType.text,
            style: const TextStyle(
              fontSize: 20,
            ),
            decoration: InputDecoration(
              hintStyle: TextStyle(
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
                fontSize: 14,
                color: greyColor,
              ),
              hintText: SetText.nama,
              errorText:
                  _namaError ? SetText.nama + ' ' + _textNamaError : null,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(
                  color: greyColor,
                ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
          SizedBox(
            height: size.height * 00.02,
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              SetText.email,
              style: defaultStyle,
            ),
          ),
          SizedBox(
            height: size.height * 00.02,
          ),
          TextField(
            controller: _emailController,
            inputFormatters: [
              FilteringTextInputFormatter.deny(' '),
            ],
            autocorrect: false,
            keyboardType: TextInputType.text,
            // obscureText: _obsecure,
            style: const TextStyle(
              fontSize: 20,
            ),
            decoration: InputDecoration(
              hintStyle: TextStyle(
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
                fontSize: 14,
                color: greyColor,
              ),
              hintText: SetText.email,
              errorText:
                  _emailError ? SetText.email + ' ' + _textEmailError : null,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(
                  color: greyColor,
                ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
          SizedBox(
            height: size.height * 00.02,
          ),
          AppTextField(
            textEditingController: _peranController,
            title: 'Peran',
            hint: 'Pilih Peran Akun',
            isFieldSelected: true,
            provinsi: _listProvinsi,
          ),
          // AppTextField(
          //   textEditingController: _peranController,
          //   title: 'Provinsi',
          //   hint: 'Pilih Provinsi',
          //   isFieldSelected: true,
          //   provinsi: _listProvinsi,
          // ),
          // AppTextField(
          //   textEditingController: _peranController,
          //   title: "Peran",
          //   hint: "Pilih Peran",
          //   isFieldSelected: true,
          //   provinsi: _listProvinsi,
          // ),
          // AppTextField(
          //   textEditingController: _peranController,
          //   title: 'Peran',
          //   hint: 'Pilih Peran',
          //   isFieldSelected: true,
          //   provinsi: _listProvinsi,

          // ),

          SizedBox(
            height: size.height * 00.02,
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              SetText.password,
              style: defaultStyle,
            ),
          ),
          SizedBox(
            height: size.height * 00.02,
          ),
          TextField(
            inputFormatters: [
              FilteringTextInputFormatter.deny(' '),
            ],
            controller: _passwordController,
            autocorrect: false,
            obscureText: isHidden,
            keyboardType: TextInputType.text,
            // obscureText: _obsecure,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
            decoration: InputDecoration(
              suffixIcon: IconButton(
                  icon: (Icon(
                    isHidden ? Icons.visibility_off : Icons.visibility,
                    color: black1Color,
                  )),
                  onPressed: () {
                    if (isHidden == true) {
                      isHidden = false;
                    } else {
                      isHidden = true;
                    }
                    setState(() {});
                  }),
              hintStyle: TextStyle(
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
                fontSize: 14,
                color: greyColor,
              ),
              hintText: "Masukkan Password",
              errorText:
                  _passError ? SetText.password + ' ' + _textPassError : null,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(
                  color: greyColor,
                ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
          SizedBox(
            height: size.height * 00.02,
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              SetText.konfirmasiPassword,
              style: defaultStyle,
            ),
          ),
          SizedBox(
            height: size.height * 00.02,
          ),
          TextField(
            inputFormatters: [
              FilteringTextInputFormatter.deny(' '),
            ],
            controller: _konfirmasiPasswordController,
            autocorrect: false,
            obscureText: isHidden,
            keyboardType: TextInputType.text,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
            decoration: InputDecoration(
              suffixIcon: IconButton(
                  icon: (Icon(
                    isHidden ? Icons.visibility_off : Icons.visibility,
                    color: black1Color,
                  )),
                  onPressed: () {
                    if (isHidden == true) {
                      isHidden = false;
                    } else {
                      isHidden = true;
                    }
                    setState(() {});
                  }),
              hintStyle: TextStyle(
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
                fontSize: 14,
                color: greyColor,
              ),
              hintText: "Ulangi Pssword",
              errorText: _passKonfirmError
                  ? SetText.konfirmasiPassword + ' ' + _textPassKonfirmError
                  : null,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(
                  color: greyColor,
                ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
          SizedBox(
            height: size.height * 00.06,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    20,
                  ),
                  border: Border.all(
                    width: 1.5,
                    color: black1Color,
                  ),
                ),
                height: size.height * 00.068,
                width: size.width * 0.38,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        20,
                      ),
                    ),
                  ),
                  child: Text(
                    SetText.batal,
                    style: batalStyle,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 00.068,
                width: size.width * 0.38,
                child: ElevatedButton(
                  onPressed: _tambahkan,
                  style: ElevatedButton.styleFrom(
                    primary: black1Color,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        20,
                      ),
                    ),
                  ),
                  child: Text(
                    SetText.simpan,
                    style: simpanStyle,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      SizedBox(
        height: size.height * 00.06,
      ),
    ]);
  }
}
