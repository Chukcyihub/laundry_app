import 'package:flutter/material.dart';

class PlaceOrder extends StatelessWidget {
  final String title;
  final String image;
  const PlaceOrder({
    Key? key,
    required this.title,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(title),
        centerTitle: true,
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("Exit"),
          )
        ],
      ),
    );
  }
}
