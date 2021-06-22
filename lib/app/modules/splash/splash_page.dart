import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './splash_controller.dart';

// ignore: use_key_in_widget_constructors
class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      builder: (_) => const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
