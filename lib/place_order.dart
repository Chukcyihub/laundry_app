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
          const SizedBox(height: 15),
          const Text(
            "Enter the details of your Lundary Orders and click to Proceed",
          ),
          const SizedBox(height: 15),
          const Text(
              "----------------------------------------------------------------------------------------------------"),
          const SizedBox(height: 15),
          const SizedBox(height: 25),
          const Padding(
            padding: EdgeInsets.only(left: 30, right: 30),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Clothe type",
                hintText: "e.g T- shirt",
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Clothe Colour",
                hintText: "e.g red or green",
              ),
            ),
          ),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.currency_bitcoin),
                border: OutlineInputBorder(),
                labelText: "Price",
              ),
            ),
          ),
          const SizedBox(height: 15),
          const Padding(
            padding: EdgeInsets.only(left: 30, right: 30),
            child: TextField(
              decoration: InputDecoration(
                labelText: "quantity",
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("Proceed"),
          ),
        ],
      ),
    );
  }
}
