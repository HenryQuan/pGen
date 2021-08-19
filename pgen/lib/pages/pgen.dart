import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pgen/core/generator.dart';
import 'package:pgen/widgets/AdaptiveText.dart';
import 'package:pgen/widgets/AppTitle.dart';
import 'package:pgen/widgets/CheckBoxText.dart';
import 'package:pgen/widgets/Copyright.dart';
import 'package:pgen/widgets/WrapBox.dart';

class PGenPage extends StatefulWidget {
  const PGenPage({Key? key}) : super(key: key);

  @override
  _PGenPageState createState() => _PGenPageState();
}

class _PGenPageState extends State<PGenPage> {
  bool _useNumbers = true;
  bool _useSymbols = true;
  bool _useLetters = true;
  String _password = '';
  double _value = 0;
  final _generator = PasswordGenerator();

  @override
  void initState() {
    super.initState();
    _password = _generator.newPassword(
      percentage: _value,
      numbers: _useNumbers,
      symbols: _useSymbols,
      letters: _useLetters,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const AppTitle(),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: AdaptiveText(
                'A simple password generator available on all platforms.',
              ),
            ),
            WrapBox(
              width: 120,
              children: [
                CheckBoxText(
                  'Numbers',
                  value: _useNumbers,
                  onChanged: (value) {},
                ),
                CheckBoxText(
                  'Symbols',
                  value: _useSymbols,
                  onChanged: (value) {
                    if (value != null) {
                      setState(() {
                        _useSymbols = value;
                      });
                    }
                  },
                ),
                CheckBoxText(
                  'Letters',
                  value: _useLetters,
                  onChanged: (value) {},
                ),
              ],
            ),
            Slider.adaptive(
              value: _value,
              onChanged: (value) {
                setState(() {
                  _value = value;
                });
              },
            ),
            const Spacer(),
            Column(
              children: [
                Container(
                  height: 64,
                  margin: const EdgeInsets.only(left: 16, right: 16, bottom: 8),
                  decoration: BoxDecoration(
                    border: Border.all(color: Theme.of(context).primaryColor),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: InkWell(
                    onTap: () {
                      Clipboard.setData(ClipboardData(text: _password));

                      // This is needed so that there won't be more bars popping if the user taps it too much
                      ScaffoldMessenger.of(context).removeCurrentSnackBar();
                      final snackBar = SnackBar(
                        content: Text('Copied to clipboard.'),
                        behavior: SnackBarBehavior.floating,
                        action: SnackBarAction(
                          label: 'Done',
                          onPressed: () {
                            ScaffoldMessenger.of(context).hideCurrentSnackBar();
                          },
                        ),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: AdaptiveText(
                        _password,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                FractionallySizedBox(
                  widthFactor: 0.618,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _password = _generator.newPassword(
                          percentage: _value,
                          numbers: _useNumbers,
                          symbols: _useSymbols,
                          letters: _useLetters,
                        );
                      });
                    },
                    child: const Text('Generate'),
                  ),
                ),
              ],
            ),
            const Copyright(),
          ],
        ),
      ),
    );
  }
}
