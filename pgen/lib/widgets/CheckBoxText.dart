import 'package:flutter/material.dart';

class CheckBoxText extends StatefulWidget {
  const CheckBoxText(
    this.data, {
    Key? key,
  }) : super(key: key);

  final String data;

  @override
  _CheckBoxTextState createState() => _CheckBoxTextState();
}

class _CheckBoxTextState extends State<CheckBoxText> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Row(
        children: [
          Checkbox(value: true, onChanged: (value) {}),
          Text(widget.data),
        ],
      ),
    );
  }
}
