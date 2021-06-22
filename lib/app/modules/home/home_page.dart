import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './home_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (_) => Scaffold(
        body: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.transparent,
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  onChanged: _.onUserNameChanged,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    labelText: "username",
                  ),
                ),
                TextField(
                  onChanged: _.onPasswordChanged,
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: "password",
                  ),
                ),
                ElevatedButton(
                  onPressed: _.submit,
                  child: const Text('send'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
