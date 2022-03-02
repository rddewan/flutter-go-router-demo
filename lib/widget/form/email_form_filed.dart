import 'package:flutter/material.dart';
import 'package:flutter_goroute_demo/util/email_validator.dart';



class EmailTextFormFiled extends StatelessWidget {
  const EmailTextFormFiled({
    Key? key,
    required this.label,
    required this.textController,
  }) : super(key: key);

  final String label;
  final TextEditingController textController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      restorationId: 'email',
      controller: textController,
      decoration:
          InputDecoration(border: const OutlineInputBorder(), labelText: label),
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return '$label cannot be empty';
        }
        if (!isValidEmail(textController.text)) {
          return '$label is not valid';
        }
        return null;
      },
    );
  }
}
