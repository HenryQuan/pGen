import 'package:flutter/material.dart';

class CheckBoxText extends StatefulWidget {
  const CheckBoxText(
    this.data, {
    Key? key,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  final String data;
  final bool value;
  final void Function(bool?)? onChanged;

  @override
  _CheckBoxTextState createState() => _CheckBoxTextState();
}

class _CheckBoxTextState extends State<CheckBoxText> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (widget.onChanged != null) widget.onChanged!(!widget.value);
      },
      child: Row(
        children: [
          Checkbox(
            value: widget.value,
            onChanged: widget.onChanged,
          ),
          Text(widget.data),
        ],
      ),
    );
  }
}
