import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static const double min = 0.0;
  static const double max = 100.0;
  RangeValues currentRangeValue = const RangeValues(min, max);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Range Slider"),
        centerTitle: true,
      ),
      body: RangeSlider(
        values: currentRangeValue,
        min: min,
        max: max,
        divisions: 5,
        activeColor: Colors.blueGrey,
        inactiveColor: Colors.grey,
        labels: RangeLabels(
          '\$${currentRangeValue.start.toInt().toString()}',
          '\$${currentRangeValue.end.toInt().toString()}',
        ),
        onChanged: (value) {
          setState(() {
            currentRangeValue = value;
          });
        },

      ),
    );
  }
}
