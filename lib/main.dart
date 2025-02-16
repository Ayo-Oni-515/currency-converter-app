import 'package:currency_converter_app/currencyconverter.dart';
import 'package:flutter/material.dart';

void main() {
  //Currency Converter Main Function
  runApp(MaterialApp(
    title: 'Currency Converter',
    debugShowCheckedModeBanner: false,
    theme: ThemeData.light(useMaterial3: true),
    home: const Currencyconverter(),
  ));
}