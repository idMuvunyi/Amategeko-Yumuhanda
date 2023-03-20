import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../config//colors.dart';

class TextInputForm extends StatelessWidget {
  const TextInputForm(
      {super.key,
      required this.controller,
      required this.text,
      required this.textInputType,
      required this.obsecure});

  final TextEditingController controller;
  final String text;
  final TextInputType textInputType;
  final bool obsecure;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.only(top: 5),
      height: 55,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(color: Colors.black54.withOpacity(0.1), blurRadius: 7)
          ]),
      child: TextFormField(
        controller: controller,
        obscureText: obsecure,
        keyboardType: textInputType,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 10),
            hintText: text,
            hintStyle: TextStyle(color: Colors.grey),
            border: InputBorder.none),
      ),
    );
  }
}
