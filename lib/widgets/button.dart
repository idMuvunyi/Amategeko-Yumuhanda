import 'package:flutter/material.dart';
import '../config/colors.dart';

class ButtonGlobal extends StatelessWidget {
  const ButtonGlobal({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => print('Login clicked'),
      child: Container(
        alignment: Alignment.center,
        height: 55,
        decoration: BoxDecoration(
          color: GlobalColors.primaryColor,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
                color: GlobalColors.black.withOpacity(0.3), blurRadius: 10)
          ],
        ),
        child: Text(
          'Ohereza',
          style: TextStyle(
              color: GlobalColors.white,
              fontSize: 18,
              fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}
