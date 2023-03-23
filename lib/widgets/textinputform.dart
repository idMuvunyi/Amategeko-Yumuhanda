import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../config//colors.dart';

class TextInputForm extends StatelessWidget {
  const TextInputForm(
      {super.key,
      required this.controller,
      required this.text,
      required this.textInputType,
      required this.obsecure,
      required this.icon});

  final TextEditingController controller;
  final String text;
  final TextInputType textInputType;
  final bool obsecure;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
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
            contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            hintText: text,
            hintStyle: TextStyle(color: Colors.grey),
            border: InputBorder.none,
            prefixIcon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                icon,
                color: GlobalColors.primaryColor,
              ),
            )),
      ),
    );
  }
}
