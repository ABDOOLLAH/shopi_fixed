import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(
      child: const Center(child: Text('home',style: TextStyle(fontSize: 40),)),
    ),);
  }
}
