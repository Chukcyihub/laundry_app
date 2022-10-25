import 'package:flutter/material.dart';

class Confirmation extends StatefulWidget {
  const Confirmation({super.key});

  @override
  State<Confirmation> createState() => _ConfirmationState();
}

class _ConfirmationState extends State<Confirmation> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text("Order is confirmed"),
          ),
          body: Container(
            width: 400,
            height: 400,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
