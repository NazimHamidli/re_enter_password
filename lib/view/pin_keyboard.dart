import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controller/pin_code_provider.dart';
import 'pin_button.dart';

class PinKeyboard extends StatelessWidget {
  const PinKeyboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            PinButton(text: '1'),
            PinButton(text: '4'),
            PinButton(text: '7'),
          ],
        ),
        const Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            PinButton(text: '2'),
            PinButton(text: '5'),
            PinButton(text: '8'),
            PinButton(text: '0'),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const PinButton(text: '3'),
            const PinButton(text: '6'),
            const PinButton(text: '9'),
            Container(
              width: 100,
              height: 90,
              margin: const EdgeInsets.only(bottom: 15),
              child: IconButton(
                  onPressed: () {
                    context.read<PinCodeProvider>().removePin();
                  },
                  icon: const Icon(
                    Icons.backspace_outlined,
                    color: Color(0xffC1C1C6),
                    size: 30,
                  )),
            ),
          ],
        ),
      ],
    );
  }
}
