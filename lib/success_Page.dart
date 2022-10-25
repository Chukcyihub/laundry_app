import 'package:flutter/material.dart';

class SuccessPage extends StatefulWidget {
  const SuccessPage(
      {Key? key,
      required this.clotheType,
      required this.clotheColour,
      required this.price,
      required this.gender,
      required this.feedback,
      required this.quantity})
      : super(key: key);

  final String clotheType;
  final String clotheColour;
  final String price;
  final String gender;
  final String feedback;
  final String quantity;

  @override
  State<SuccessPage> createState() => _SuccessPageState();
}

class _SuccessPageState extends State<SuccessPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Order Detail"),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            ListTile(
              leading: const Icon(Icons.girl),
              title: Text("Clothe type is ${widget.clotheType}"),
            ),
            ListTile(
              leading: const Icon(Icons.color_lens),
              title: Text("Clothe Colour is ${widget.clotheColour}"),
            ),
            ListTile(
              leading: const Icon(Icons.price_change),
              title: Text("Clothe Price is ${widget.price}"),
            ),
            ListTile(
              leading: const Icon(Icons.boy),
              title: Text("Gender is ${widget.gender}"),
            ),
            ListTile(
              leading: const Icon(Icons.feedback),
              title: Text("feedback: ${widget.feedback}"),
            ),
            ListTile(
              leading: const Icon(Icons.production_quantity_limits),
              title: Text("Clothe Quantity is ${widget.quantity}"),
            )
          ],
        ),
      ),
    );
  }
}
