import 'package:flutter/material.dart';
import 'package:pgen/widgets/AdaptiveText.dart';

class Copyright extends StatelessWidget {
  const Copyright({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: const AdaptiveText('© 2021 Yiheng Quan'),
      ),
    );
  }
}
