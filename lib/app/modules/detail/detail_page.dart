import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './detail_controller.dart';

// ignore: use_key_in_widget_constructors
class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DetailController>(
      builder: (_) => const Scaffold(),
    );
  }
}
