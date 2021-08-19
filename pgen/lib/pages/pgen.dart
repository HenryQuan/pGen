import 'package:flutter/material.dart';
import 'package:pgen/widgets/AdaptiveText.dart';
import 'package:pgen/widgets/AppTitle.dart';
import 'package:pgen/widgets/Copyright.dart';

class PGenPage extends StatefulWidget {
  const PGenPage({Key? key}) : super(key: key);

  @override
  _PGenPageState createState() => _PGenPageState();
}

class _PGenPageState extends State<PGenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const AppTitle(),
          const AdaptiveText(
            "Hello World",
            textAlign: TextAlign.center,
          ),
          Slider.adaptive(value: 0.5, onChanged: (value) {}),
          Slider.adaptive(value: 0.5, onChanged: (value) {}),
          Slider.adaptive(value: 0.5, onChanged: (value) {}),
          Slider.adaptive(value: 0.5, onChanged: (value) {}),
          Expanded(child: Container()),
          const Copyright(),
        ],
      ),
    );
  }
}
