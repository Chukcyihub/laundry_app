import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ilaundry/success_Page.dart';

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
    final TextEditingController clotheType = TextEditingController();
    final TextEditingController clotheColour = TextEditingController();
    final TextEditingController price = TextEditingController();
    final TextEditingController gender = TextEditingController();
    final TextEditingController feedback = TextEditingController();
    final TextEditingController quantity = TextEditingController();
    final GlobalKey<FormState> formkey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(title),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: formkey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const SizedBox(height: 15),
                const Text(
                  "Enter the details of your Lundary Orders and click to Proceed",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.green,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const SizedBox(height: 10),
                const Divider(
                  height: 15,
                  thickness: 8,
                  indent: 5,
                  endIndent: 5,
                  color: Colors.green,
                ),
                const SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: TextFormField(
                    validator: (value) {
                      if (value == "") {
                        return "Clothe type is required";
                      }
                      return null;
                    },
                    controller: clotheType,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(33.0))),
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
                    validator: (value) {
                      if (value == "") {
                        return "Clothe Colour is required";
                      }
                      return null;
                    },
                    controller: clotheColour,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(33.0))),
                      labelText: "Clothe Colour",
                      hintText: "e.g red or green",
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: TextFormField(
                    validator: (value) {
                      if (value == "") {
                        return " Enter a correct value for price";
                      }

                      return null;
                    },
                    controller: price,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      prefix: Text("₦"),
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(33.0))),
                      labelText: "Price",
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: TextFormField(
                    validator: (value) {
                      if (value == "") {
                        return "Gender should be male or female";
                      }
                      return null;
                    },
                    controller: gender,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(33.0))),
                      labelText: "Gender",
                      hintText: "Male/Female",
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: TextFormField(
                    controller: feedback,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(33.0))),
                      labelText: "Feedback",
                      hintText: "Complaints/Suggestions",
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: TextFormField(
                    validator: (value) {
                      if (value == "") {
                        return "quantity feed cannot be empty";
                      }
                      if (int.parse(value!) < 1) {
                        return "Quantity value cannot be 0";
                      }
                      return null;
                    },
                    controller: quantity,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      labelText: "quantity",
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (formkey.currentState!.validate()) {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => SuccessPage(
                            clotheType: clotheType.text,
                            clotheColour: clotheColour.text,
                            price: int.parse(price.text),
                            gender: gender.text,
                            feedback: feedback.text,
                            quantity: int.parse(quantity.text),
                          ),
                        ),
                      );
                    }
                  },
                  child: const Text("Proceed"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
