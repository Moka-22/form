import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
   TextFieldWidget({
    super.key,
    required this.hintName,
    required this.labelText,
    required this.icon,
    required this.controller,
  });
  final String hintName;
  final String labelText;
  final Icon icon;
  final inputText = '';
  TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Field is required';
        }
      },
      decoration: InputDecoration(
        hintText: hintName,
        labelText: labelText,
        prefixIcon: icon,
        border: OutlineInputBorder(),
      ),
    );
  }
}
