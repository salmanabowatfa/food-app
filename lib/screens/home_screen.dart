import 'package:flutter/material.dart';
import 'package:food_app/controller/home_controller.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});
final HomeController homeController=HomeController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            width: double.infinity,
          ),
          const Text('welcome to my app'),
          ElevatedButton(
              onPressed: () {
                homeController.deleteAccount(context: context);
              },
              child: const Text('delete account'))
        ],
      ),
    );
  }
}
