import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pgen/core/app.dart';

class AdaptiveText extends StatelessWidget {
  const AdaptiveText(
    this.data, {
    Key? key,
    this.style,
    this.textAlign,
    this.minLines,
    this.maxLines,
  }) : super(key: key);

  final String data;
  final TextStyle? style;
  final TextAlign? textAlign;
  final int? minLines;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    if (App.isDekstop || App.isWeb) {
      return SelectableText(
        data,
        style: style,
        textAlign: textAlign,
        minLines: minLines,
        maxLines: maxLines,
      );
    } else {
      return Text(
        data,
        style: style,
        textAlign: textAlign,
        maxLines: maxLines,
      );
    }
  }
}
