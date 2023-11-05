import 'dart:async';

import 'package:dualpop_core/dualpop_core_app.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key, required this.nextRoute});

  final String nextRoute;

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Modular.to.pushReplacementNamed(widget.nextRoute);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: AppColorsDS.brandColorPrimaryMain,
      body: Center(
        child: Stack(
          children: <Widget>[
            Container(
              alignment: Alignment.centerLeft,
              // child: const CommonSplashAnimationDS(),
            ),
            Container(
              alignment: Alignment.centerLeft,
              // child: SvgIconDS.asset(icon: AppIconsSVGDS.splashIcon),
            ),
          ],
        ),
      ),
    );
  }
}