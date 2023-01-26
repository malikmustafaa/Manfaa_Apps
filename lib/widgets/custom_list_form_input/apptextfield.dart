// ignore_for_file: unnecessary_this, duplicate_ignore

import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:manfaa_apps/contants/color_style.dart';

import 'dropdown.dart';

class AppTextField extends StatefulWidget {
  TextEditingController textEditingController = TextEditingController();
  final String title;
  final String hint;
  final bool isFieldSelected;
  final List<SelectedListItem>? provinsi;
  final List<SelectedListItem>? kota;
  final List<SelectedListItem>? kecamatan;
  final List<SelectedListItem>? agama;
  final List<SelectedListItem>? jeniskelamin;
  final List<SelectedListItem>? statusperkawinan;
  final List<SelectedListItem>? goldarah;
  AppTextField({
    required this.textEditingController,
    required this.title,
    required this.hint,
    required this.isFieldSelected,
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

  /// This is on text changed method which will display text field on changed.
  void onTextFieldTap() {
    // ignore: prefer_typing_uninitialized_variables
    var selectWidget;
    // ignore: prefer_typing_uninitialized_variables
    var selectTitle;
    if (widget.provinsi != null) {
      selectWidget = widget.provinsi;
      selectTitle = 'Privinsi';
    }

    DropDownState(
      DropDown(
        submitButtonText: 'Done',
        submitButtonColor: greyColor,
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
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.title),
        SizedBox(
          height: size.height * 00.02,
        ),
        TextFormField(
          controller: widget.textEditingController,
          onTap: widget.isFieldSelected
              ? () {
                  FocusScope.of(context).unfocus();
                  onTextFieldTap();
                }
              : null,
          decoration: InputDecoration(
              hintText: widget.hint,
              hintStyle: TextStyle(
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
                fontSize: 16,
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
              suffixIcon: widget.isFieldSelected
                  ? GestureDetector(
                      onTap: () {
                        FocusScope.of(context).unfocus();
                        onTextFieldTap();
                      },
                      child: Icon(
                        Icons.keyboard_arrow_down_sharp,
                        color: black1Color,
                      ),
                    )
                  : null),
        ),
        SizedBox(
          height: size.height * 00.02,
        ),
      ],
    );
  }
}
