import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './home_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: _.logOut,
              icon: const Icon(Icons.exit_to_app_rounded),
            )
          ],
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.transparent,
        ),
      ),
    );
  }
}
