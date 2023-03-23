import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import '../config/colors.dart';
import '../widgets/textinputform.dart';
import '../widgets/button.dart';
import 'Login.dart';
import 'package:get/route_manager.dart';

class Register extends StatelessWidget {
  Register({super.key});
  final TextEditingController firstnameController = TextEditingController();
  final TextEditingController lastnameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Container(
          width: double.infinity,
          padding:
              const EdgeInsets.only(top: 50, bottom: 20, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.center,
                child: Text(
                  'Amategeko',
                  style: TextStyle(
                      fontSize: 32,
                      color: GlobalColors.primaryColor,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 60, bottom: 30),
                child: Text(
                  'Fungura Konti',
                  style: TextStyle(
                      fontSize: 20,
                      color: GlobalColors.grey,
                      fontWeight: FontWeight.w500),
                ),
              ),
              TextInputForm(
                controller: firstnameController,
                text: 'Izina ribanza',
                obsecure: false,
                textInputType: TextInputType.text,
                icon: Icons.account_circle_outlined,
              ),
              TextInputForm(
                controller: lastnameController,
                text: 'Izina rindi',
                obsecure: false,
                textInputType: TextInputType.text,
                icon: Icons.account_circle_outlined,
              ),
              TextInputForm(
                controller: emailController,
                text: 'Andika imeyili',
                obsecure: false,
                textInputType: TextInputType.emailAddress,
                icon: Icons.email_outlined,
              ),
              TextInputForm(
                controller: passwordController,
                text: 'Ijambo banga',
                obsecure: true,
                textInputType: TextInputType.visiblePassword,
                icon: Icons.lock_open,
              ),
              const SizedBox(
                height: 30,
              ),
              const ButtonGlobal(),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    'Usanzwe ufite Konti? ',
                    style: TextStyle(color: GlobalColors.grey, fontSize: 15),
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () => Get.to(Login()),
                    child: Text(
                      'Injira',
                      style: TextStyle(
                          color: GlobalColors.primaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                  )
                ],
              )
            ],
          ),
        )),
      ),
    );
  }
}
