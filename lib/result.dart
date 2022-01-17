import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result(
      {Key? key, required this.result, required this.isMale, required this.age})
      : super(key: key);

  final double result;
  final bool isMale;
  final int age;

  String get resultPhrase {
    String resultText = "";
    if (result >= 30)
      resultText = 'Obese';
    else if (result > 25 && result < 30)
      resultText = "Overwehaight";
    else if (result > 18 && result < 25)
      resultText = "Normal";
    else
      resultText = "Thik";
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Result"), centerTitle: true),
        body: SafeArea(
            child: Center(
          child: Column(
            mainAxisAlignment:MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Gender: ${isMale ? 'Male' : 'Female'}',
                style: Theme.of(context).textTheme.headline1
              ),
              Text(
                'Healthness: $resultPhrase',
                style: Theme.of(context).textTheme.headline1,
                textAlign:TextAlign.center,
              ),
              Text(
                'Result: $result',
                style: Theme.of(context).textTheme.headline1
              ),
              Text(
                'Age: ${age.toStringAsFixed(2)}',
                style: Theme.of(context).textTheme.headline1
              ),
            ],
          ),
        )));
  }
}
