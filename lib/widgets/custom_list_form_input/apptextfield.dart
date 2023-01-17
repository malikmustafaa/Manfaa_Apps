// ignore_for_file: unnecessary_this, duplicate_ignore

import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:manfaa_apps/contants/color_style.dart';

import 'dropdown.dart';

// ignore: must_be_immutable
class AppTextField extends StatefulWidget {
  TextEditingController textEditingController = TextEditingController();
  // final Function onPressed;
  final String title;
  final String hint;

  final bool isFieldSelected;
  final bool isVisibility;
  final bool validator;
  final List<SelectedListItem>? provinsi;
  final List<SelectedListItem>? kota;
  final List<SelectedListItem>? kecamatan;
  final List<SelectedListItem>? agama;
  final List<SelectedListItem>? jeniskelamin;
  final List<SelectedListItem>? statusperkawinan;
  final List<SelectedListItem>? goldarah;

  AppTextField({
    // required this.onPressed,
    required this.textEditingController,
    required this.title,
    required this.hint,
    required this.isFieldSelected,
    required this.isVisibility,
    required this.validator,
    this.provinsi,
    this.kota,
    this.kecamatan,
    this.agama,
    this.jeniskelamin,
    this.statusperkawinan,
    this.goldarah,
    Key? key,
  }) : super(key: key);

  @override
  _AppTextFieldState createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  final TextEditingController _searchTextEditingController =
      TextEditingController();

  bool isHidden = false;
  bool isValidasi = false;

  /// This is on text changed method which will display text field on changed.
  void onTextFieldTap() {
    // ignore: prefer_typing_uninitialized_variables
    var selectWidget;
    // ignore: prefer_typing_uninitialized_variables
    var selectTitle;
    if (widget.provinsi != null) {
      selectWidget = widget.provinsi;
      selectTitle = 'Peran';
    }

    DropDownState(
      DropDown(
        submitButtonText: 'Done',
        // submitButtonColor: Pallete.primary,
        searchHintText: 'Search...',
        bottomSheetTitle: selectTitle,
        searchBackgroundColor: Colors.black12,
        dataList: selectWidget ?? [],
        selectedItems: (List<dynamic> selectedList) {
          // showSnackBar(selectedList.toString());
        },
        selectedItem: (String selected) {
          // showSnackBar(selected);
          widget.textEditingController.text = selected;
        },
        enableMultipleSelection: false,
        searchController: _searchTextEditingController,
      ),
    ).showModal(context);
  }

  // void showSnackBar(String message) {
  //   ScaffoldMessenger.of(context).showSnackBar(
  //     SnackBar(
  //       content: Text(message),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    log('=======> validator');
    log('${widget.validator}');

    final _formKey = GlobalKey<FormState>();
    Size size = MediaQuery.of(context).size;

    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.title),
          SizedBox(
            height: size.height * 00.02,
          ),
          // Text(widget.dua),
          TextFormField(
            controller: widget.textEditingController,

            obscureText: isHidden,
            // cursorColor: Pallete.textFieldColor,
            onTap: widget.isFieldSelected
                ? () {
                    // FocusScope.of(context).unfocus();
                    // onTextFieldTap();
                  }
                : null,
            decoration: InputDecoration(
              // isDense: true,
              hintText: widget.hint,
              hintStyle: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: black1Color,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: const BorderRadius.all(Radius.circular(12)),
                borderSide: BorderSide(
                  width: 1.5,
                  color: greyColor,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: const BorderRadius.all(Radius.circular(12)),
                borderSide: BorderSide(
                  color: greyColor,
                  width: 1.5,
                ),
              ),
              // icon: widget,
              suffixIcon: widget.isFieldSelected
                  ? GestureDetector(
                      onTap: () {
                        if (widget.isVisibility) {
                          if (isHidden == true) {
                            isHidden = false;
                          } else {
                            isHidden = true;
                          }
                          setState(() {});
                        }
                        FocusScope.of(context).unfocus();
                        // onTextFieldTap();
                      },
                      child: const Icon(
                        Icons.keyboard_arrow_down_rounded,
                      ),
                    )
                  : widget.isVisibility
                      ? IconButton(
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
                          })
                      : null,
            ),
          ),
          widget.validator && widget.textEditingController != null
              ? Text(
                  'Mohon diisi ' + widget.title,
                  style: const TextStyle(color: Colors.red),
                )
              : Container(),
          SizedBox(
            height: size.height * 00.02,
          ),
        ],
      ),
    );
  }
}
