import 'package:contact_form/screens/summary_screen.dart';
import 'package:contact_form/utils/colors.dart';
import 'package:contact_form/utils/icons.dart';
import 'package:contact_form/widgets/text_form_field_widget.dart';
import 'package:contact_form/widgets/text_widget.dart';
import 'package:flutter/material.dart';

import '../widgets/button_widget.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  GlobalKey<FormState> formKey = GlobalKey();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final messageController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const TextWidget(text: 'Form'),
        centerTitle: true,
        backgroundColor: kPrimaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TextWidget(
                text: 'Enter Your Info',
              ),
              const SizedBox(
                height: 25,
              ),
              TextFieldWidget(
                hintName: 'Name',
                labelText: 'Enter Your Name',
                icon: nameIcon, controller: nameController,
              ),
              const SizedBox(
                height: 25,
              ),
              TextFieldWidget(
                hintName: 'Email',
                labelText: 'Enter Your Email',
                icon: emailIcon, controller: emailController,
              ),
              const SizedBox(
                height: 25,
              ),
              TextFieldWidget(
                hintName: 'Message',
                labelText: 'Enter Your Message',
                icon: messageIcon, controller: messageController,
              ),
              const SizedBox(
                height: 25,
              ),
              ButtonWidget(
                text: 'Submit',
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => SummaryScreen(
                          name: nameController.text,
                          email: emailController.text,
                          message: messageController.text,
                        ),
                      ),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
