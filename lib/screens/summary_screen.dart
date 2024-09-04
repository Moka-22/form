import 'package:contact_form/utils/colors.dart';
import 'package:contact_form/widgets/button_widget.dart';
import 'package:contact_form/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class SummaryScreen extends StatelessWidget {
  const SummaryScreen({
    super.key,
    required this.name,
    required this.email,
    required this.message,
  });
  final String name;
  final String email;
  final String message;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextWidget(text: 'Summary'),
        centerTitle: true,
        backgroundColor: kPrimaryColor,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: Column(
            children: [
              TextWidget(text: 'Name : $name'),
              const SizedBox(
                height: 5,
              ),
              TextWidget(text: 'E-Mail : $email'),
              const SizedBox(
                height: 5,
              ),
              TextWidget(text: 'Message : $message'),
              const SizedBox(
                height: 20,
              ),
              ButtonWidget(
                  text: 'Close',
                  onPressed: () {
                    Navigator.pop(context);
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
