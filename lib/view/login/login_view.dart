import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tremor/view/login/controller/login_cubit.dart';

import '../../widgets/logo_image_with_border.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: BlocConsumer<LoginCubit, LoginState>(
        listener: (context, state) {},
        builder: (context, state) {
          return SafeArea(
            child: Scaffold(
              body: Stack(fit: StackFit.expand, children: [
                ImageFiltered(
                  imageFilter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                  child: Image.asset('assets/images/background2.png',
                      fit: BoxFit.cover),
                ),
                Column(
                  children: <Widget>[
                    LogoImageWithBorder(),
                  ],
                )
              ]),
            ),
          );
        },
      ),
    );
  }
}
