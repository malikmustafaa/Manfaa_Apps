import 'package:flutter/material.dart';
import 'package:manfaa_apps/berbagi_link/tabs/profile/profile.dart';
import 'package:manfaa_apps/contants/color_style.dart';
import 'package:manfaa_apps/contants/text.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class UbahPassword extends StatefulWidget {
  const UbahPassword({Key? key}) : super(key: key);

  @override
  State<UbahPassword> createState() => _UbahPasswordState();
}

class _UbahPasswordState extends State<UbahPassword> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final _passwordController = TextEditingController();
  final _konfirmasiPasswordController = TextEditingController();

  bool isHidden = true;
  bool valPassword = false;
  bool valKonfirmasiPassword = false;
  bool alertCheck = false;
  bool _passError = false;
  bool _passKonfirmError = false;

  String textEmpty = "mohon diisi";
  String _textPassError = "";
  String _textPassKonfirmError = "";

  bool _doValidate() {
    Pattern pattern =
        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?)*$";

    RegExp regexPass = RegExp(r'^(?=.*?[a-z])(?=.*?[0-9]).{8,32}$');
    RegExp regexkonfirmPass = RegExp(r'^(?=.*?[a-z])(?=.*?[0-9]).{8,32}$');
    bool _success = true;

    String _pass = _passwordController.text;
    String _passConfirm = _konfirmasiPasswordController.text;

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

  void _ubahpassword() async {
    if (_doValidate()) {
      print("object === >");
    }
  }

  TextEditingController password = TextEditingController();
  TextEditingController konfirmasipassword = TextEditingController();
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
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop(const Profile());
                  },
                  child: Image(
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
                  'Ubah Password',
                  style: TextStyle(
                    color: black1Color,
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                  ),
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
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 8,
              ),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          SetText.profil,
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
                          'Ubah Password',
                          style: header2Style,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 00.03,
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        SetText.password_baru,
                        style: defaultStyle,
                      ),
                    ),
                    SizedBox(
                      height: size.height * 00.02,
                    ),
                    TextField(
                      controller: _passwordController,
                      autocorrect: false,
                      obscureText: isHidden,
                      keyboardType: TextInputType.text,
                      style: const TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w400),
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                            icon: (Icon(
                              Icons.remove_red_eye,
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
                        hintText: "Masukkan password baru",
                        errorText: _passError
                            ? SetText.password + ' ' + _textPassError
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
                      height: size.height * 00.02,
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        SetText.konfirmpassword_baru,
                        style: defaultStyle,
                      ),
                    ),
                    SizedBox(
                      height: size.height * 00.02,
                    ),
                    TextField(
                      controller: _konfirmasiPasswordController,
                      autocorrect: false,
                      obscureText: isHidden,
                      keyboardType: TextInputType.text,
                      style: const TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w400),
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                            icon: (Icon(
                              Icons.remove_red_eye,
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

                        hintText: "Masukkan password baru",
                        // labelText: "Your Password",
                        errorText: _passKonfirmError
                            ? SetText.konfirmasiPassword +
                                ' ' +
                                _textPassKonfirmError
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
                          width: size.width * 0.45,
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
                          width: size.width * 0.45,
                          // padding: const EdgeInsets.only(left: 10),
                          child: ElevatedButton(
                            onPressed: _ubahpassword,
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
                    SizedBox(
                      height: size.height * 00.06,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
