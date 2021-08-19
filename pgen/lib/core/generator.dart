import 'dart:math';

class PasswordGenerator {
  static final _chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz';
  static final _symbols = '_-+=:?@!?^';
  static final _numbers = '0123456789';
  final Random _rnd = Random();
  static int _minValue = 18;
  static int _maxValue = 36;

  /// Generate a new password based on the given length
  /// https://stackoverflow.com/a/61929967
  String newPassword({
    double percentage = 0,
    bool numbers = true,
    bool symbols = true,
    bool letters = true,
  }) {
    var characters = '';
    if (numbers) characters += _numbers;
    if (symbols) characters += _symbols;
    if (letters) characters += _chars;

    if (characters.length == 0) return 'error';
    return String.fromCharCodes(
      Iterable.generate(
        ((_maxValue - _minValue) * percentage + _minValue).toInt(),
        (_) => characters.codeUnitAt(_rnd.nextInt(characters.length)),
      ),
    );
  }
}
