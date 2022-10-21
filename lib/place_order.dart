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
          const SizedBox(height: 10),
          const Divider(
            height: 15,
            thickness: 3,
            indent: 5,
            endIndent: 5,
            color: Colors.black,
          ),
          const SizedBox(height: 20),
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
            height: 15,
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
                prefix: Text("₦"),
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
