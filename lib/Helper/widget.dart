import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';

class DropDownFieldWidget extends StatelessWidget {
  const DropDownFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DropDownTextField(
      dropDownList: [
        DropDownValueModel(name: 'No', value: 'No'),
        DropDownValueModel(name: 'Yup', value: 'Yup'),
      ],
      textFieldDecoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          )),
    );
  }
}
