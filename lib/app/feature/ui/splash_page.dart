import 'dart:async';

import 'package:dualpop_commons_dependencies/dualpop_commons_dependencies.dart';
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
     backgroundColor: const Color(0xFF363272),
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
