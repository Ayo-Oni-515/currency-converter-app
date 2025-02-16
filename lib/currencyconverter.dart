import 'package:flutter/material.dart';

class Currencyconverter extends StatelessWidget {
  const Currencyconverter({super.key});

  @override
  Widget build(BuildContext context) {
    return const Currencyevent();
  }
}

class Currencyevent extends StatefulWidget {
  const Currencyevent({super.key});

  @override
  State<Currencyevent> createState() {
    return _CurrencyeventState();
  }
}

class _CurrencyeventState extends State<Currencyevent> {
  final TextEditingController textEditingController = TextEditingController();
  double result = 0;

  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.black,
        width: 2.0,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.all(Radius.circular(15)),
    );

    return Scaffold(
        backgroundColor: const Color.fromARGB(235, 119, 204, 243),
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            'Currency Converter',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                '₦ ${result != 0 ? result.toStringAsFixed(2) : result.toStringAsFixed(0)}',
                style: const TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(255, 255, 255, 1),
                )),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: textEditingController,
                style: const TextStyle(
                  color: Colors.black,
                ),
                decoration: const InputDecoration(
                  hintText: "Enter Amount in USD(\$)",
                  hintStyle: TextStyle(color: Colors.black),
                  prefixIcon: Icon(Icons.monetization_on),
                  prefixIconColor: Colors.black,
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType: const TextInputType.numberWithOptions(
                    decimal: true, signed: true),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      result = double.parse(textEditingController.text) * 1700;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white,
                      minimumSize: const Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5))),
                  child: const Text('Convert')),
            )
          ],
        )));
  }
}
