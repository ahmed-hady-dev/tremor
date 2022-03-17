// ignore_for_file: implementation_imports

import 'dart:async';

import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tremor/widgets/logo_image_with_border.dart';
import '../home/home_view.dart';

import '../../constants/app_colors.dart';
import '../../core/router/router.dart';
import '../login/login_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  bool _visible = false;
  @override
  void initState() {
    super.initState();
    Timer(const Duration(milliseconds: 1), () {
      setState(() {
        _visible = !_visible;
      });
    });
    Timer(const Duration(milliseconds: 2500), () {
      // MagicRouter.navigateAndPopAll(
      //     CacheHelper.isLogged ? const HomeView() : const LoginView());
      MagicRouter.navigateAndPopAll(const LoginView());
    });
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(color: Colors.white),
        child: AnimatedOpacity(
            duration: const Duration(milliseconds: 2000),
            opacity: _visible ? 1.0 : 0.0,
            child: Stack(
              children: [
                Container(
                    width: 150.0,
                    margin: EdgeInsets.only(
                        left: width * 0.1,
                        top: height * 0.1,
                        bottom: height * 0.1),
                    decoration: BoxDecoration(
                        color: AppColors.blue,
                        borderRadius: BorderRadius.circular(16.0))),
                Center(
                  child: Container(
                    height: 150.0,
                    margin: EdgeInsets.only(
                        top: height * 0.1, bottom: height * 0.1),
                    decoration: const BoxDecoration(color: AppColors.blue),
                  ),
                ),
                Positioned(
                    left: width * 0.05,
                    top: height * 0.41,
                    width: 280,
                    child: const LogoImageWithBorder()),
              ],
            )),
      ),
    );
  }
}
