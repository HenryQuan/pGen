import 'package:flutter/material.dart';
import 'package:pgen/widgets/AdaptiveText.dart';

class AppTitle extends StatelessWidget {
  const AppTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            const Text(
              'pGen',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            // Padding(
            //   // align with pGen title
            //   padding: const EdgeInsets.only(top: 4, left: 16),
            //   child: Wrap(
            //     children: [
            //       AdaptiveText(
            //         'a simple password generator on all platforms',
            //         textAlign: TextAlign.left,
            //         style: TextStyle(
            //           fontWeight: FontWeight.w400,
            //         ),
            //         maxLines: 2,
            //       ),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
