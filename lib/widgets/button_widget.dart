import 'package:contact_form/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
   ButtonWidget({
    super.key,
    required this.text,
    required this.onPressed,
  });
  final String text;
  void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: onPressed,
        child: TextWidget(
          text: text,
        ),
        style: ElevatedButton.styleFrom(
          fixedSize: Size(150, 60),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
    );
  }
}
