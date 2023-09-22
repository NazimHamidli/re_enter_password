import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controller/pin_code_provider.dart';

class PinHolder extends StatelessWidget {
  const PinHolder({super.key});
  @override
  Widget build(BuildContext context) {
    return Consumer<PinCodeProvider>(builder: (context, state, child) {
      return Center(
        child: Column(
          children: [
            const Text('Enter PIN'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: state.pinList,
            ),
            const SizedBox(
              height: 15,
            ),
            const Text('Re-Enter PIN'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: state.reEnteredPinList,
            ),
          ],
        ),
      );
    });
  }
}
