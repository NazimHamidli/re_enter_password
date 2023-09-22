import 'package:flutter/material.dart';

import '../view/pin_holder_item.dart';

class PinCodeProvider extends ChangeNotifier {
  String pin = '';
  String repeatedPin = '';
  List<Widget> pinList = [];
  List<Widget> reEnteredPinList = [];

  void fillLists() {
    for (int i = 0; i < 4; i++) {
      pinList.add(const PinHolderItem(
        itemColor: Colors.white,
      ));
      reEnteredPinList.add(const PinHolderItem(
        itemColor: Colors.white,
      ));
    }
  }

  void addPin(String pinKey, BuildContext context) {
    if (pin.length < 4) {
      pin += pinKey;
      pinList[pin.length - 1] = const PinHolderItem(itemColor: Colors.green);
    } else {
      if (repeatedPin.length < 4) {
        repeatedPin += pinKey;
        reEnteredPinList[repeatedPin.length - 1] =
            const PinHolderItem(itemColor: Colors.green);
        if (repeatedPin.length == 4) {
          checkPinsIsEqual(context);
        }
      }
    }
    notifyListeners();
  }

  void removePin() {
    if (repeatedPin.isNotEmpty && repeatedPin.length <= 4) {
      reEnteredPinList[repeatedPin.length - 1] =
          const PinHolderItem(itemColor: Colors.white);

      repeatedPin = repeatedPin.substring(0, repeatedPin.length - 1);
    } else {
      if (pin.isNotEmpty && pin.length <= 4) {
        pinList[pin.length - 1] = const PinHolderItem(itemColor: Colors.white);

        pin = pin.substring(0, pin.length - 1);
      }
    }
    notifyListeners();
  }

  void checkPinsIsEqual(BuildContext context) {
    if (pin == repeatedPin) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          backgroundColor: Colors.green,
          content: Center(child: Text('Success!')),
          duration: Duration(seconds: 2)));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          backgroundColor: Colors.red,
          content: Center(child: Text('Error!')),
          duration: Duration(seconds: 2)));
    }
  }
}
