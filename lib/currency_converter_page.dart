import 'package:flutter/material.dart';

class CurrencyConverterPage extends StatefulWidget {
  const CurrencyConverterPage({super.key});

  @override
  State<CurrencyConverterPage> createState() => _CurrencyConverterPageState();
}

class _CurrencyConverterPageState extends State<CurrencyConverterPage> {
  double result = 0;

  TextEditingController textEditingController = TextEditingController();

  // A Function to convert the currency
  void convertCurrency() {
    setState(() {
      result = double.parse(textEditingController.text) * 83;
    });
  }

  @override
  Widget build(BuildContext context) {
    // A Function to create a border for the text field
    const border = OutlineInputBorder(
      borderSide: BorderSide(
        color: Color.fromARGB(255, 8, 47, 73),
        width: 2,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
    );

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: const Text('Currency Converter'),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 8, 47, 73),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'INR ${result.toStringAsFixed(2)}',
              style: const TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: textEditingController,
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
                style: const TextStyle(
                  color: Colors.white,
                ),
                decoration: const InputDecoration(
                  hintText: 'Enter amount in USD',
                  hintStyle: TextStyle(
                    color: Colors.white60,
                  ),
                  prefixIcon: Icon(Icons.monetization_on),
                  prefixIconColor: Colors.white60,
                  filled: true,
                  fillColor: Colors.white12,
                  focusedBorder: border,
                  enabledBorder: border,
                ),
              ),
            ),
            TextButton(
              onPressed: convertCurrency,
              style: TextButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 8, 47, 73),
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                //minimumSize: const Size(double.infinity, 50),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
              child: const Text(
                'Convert',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 255, 255, 255),
                  letterSpacing: 1.25,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
