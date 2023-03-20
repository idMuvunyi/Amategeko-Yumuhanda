import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import '../config/colors.dart';
import '../widgets/textinputform.dart';
import '../widgets/button.dart';

class Login extends StatelessWidget {
  Login({super.key});
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Container(
          width: double.infinity,
          padding: EdgeInsets.only(top: 50, bottom: 20, left: 20, right: 20),
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
                margin: EdgeInsets.only(top: 60, bottom: 30),
                child: Text(
                  'Injira Muri Konti',
                  style: TextStyle(
                      fontSize: 20,
                      color: GlobalColors.grey,
                      fontWeight: FontWeight.w500),
                ),
              ),
              TextInputForm(
                controller: passwordController,
                text: 'Andika imeyili',
                obsecure: true,
                textInputType: TextInputType.emailAddress,
              ),
              TextInputForm(
                controller: emailController,
                text: 'Ijambo banga',
                obsecure: true,
                textInputType: TextInputType.visiblePassword,
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
                    'Ntabwo urafungura konti? ',
                    style: TextStyle(color: GlobalColors.grey, fontSize: 15),
                  ),
                  InkWell(
                    onTap: () => {},
                    child: Text(
                      'Bikore',
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
