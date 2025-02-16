import 'package:flutter/cupertino.dart';

//iOS UI
class CurrencyCupertino extends StatefulWidget {
  const CurrencyCupertino({super.key});

  @override
  State<CurrencyCupertino> createState() => _CurrencyCupertinoState();
}

class _CurrencyCupertinoState extends State<CurrencyCupertino> {
  final TextEditingController textEditingController = TextEditingController();
  double result = 0;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        backgroundColor: CupertinoColors.destructiveRed,
        navigationBar: CupertinoNavigationBar(
          backgroundColor: CupertinoColors.activeBlue,
          middle: Text(
            'Currency Converter',
            style: TextStyle(color: CupertinoColors.white),
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                  '₦ ${result != 0 ? result.toStringAsFixed(2) : result.toStringAsFixed(0)}',
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(255, 255, 255, 1),
                  )),
              Container(
                padding: const EdgeInsets.all(10),
                child: CupertinoTextField(
                    controller: textEditingController,
                    style: TextStyle(
                      color: CupertinoColors.black,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(5),
                      color: CupertinoColors.white,
                    ),
                    placeholder: "Enter Amount in USD(\$)",
                    prefix: Text("Please enter the amount in USD(\$)"),
                    keyboardType: TextInputType.numberWithOptions(
                        decimal: true, signed: true)),
              ),
              const SizedBox(height: 10),
              CupertinoButton(
                color: CupertinoColors.black,
                child: const Text(
                  'Convert',
                  style: TextStyle(color: CupertinoColors.white),
                ),
                onPressed: () {
                  setState(() {
                    result = double.parse(textEditingController.text) * 1700;
                  });
                },
              ),
            ],
          ),
        ));
  }
}
