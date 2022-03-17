import 'package:flutter/material.dart';

class LogoImageWithBorder extends StatelessWidget {
  const LogoImageWithBorder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 12.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(23),
          border: Border.all(color: Colors.white, width: 2.0)),
      child: Image.asset('assets/images/logo.png'),
    );
  }
}
