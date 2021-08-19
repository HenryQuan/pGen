import 'dart:io';

import 'package:flutter/foundation.dart';

class App {
  static final isWeb = kIsWeb;

  /// Platform doesn't work on Web so need to be careful
  static final isDekstop = !isWeb &&
      (Platform.isLinux ||
          Platform.isMacOS ||
          Platform.isWindows ||
          Platform.isFuchsia);
  static final isMobile = !isWeb && (Platform.isAndroid || Platform.isIOS);
}
