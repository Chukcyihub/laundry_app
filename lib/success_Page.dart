// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter/material.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Welcome"),
        centerTitle: true,
      ),
      body: const Center(
          child: Text("Your Order has been Successfully Completed")),
    );
  }
}
