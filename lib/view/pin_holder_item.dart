import 'package:flutter/material.dart';

class PinHolderItem extends StatelessWidget {
  const PinHolderItem({super.key, required this.itemColor});
  final Color itemColor;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 40,
        height: 40,
        margin: const EdgeInsets.all(6),
        decoration: BoxDecoration(
          color: itemColor, // Colors.white, //Colors.green olacaq
          shape: BoxShape.circle,
          border: Border.all(color: const Color(0xffC4B677)),
          // borderRadius: BorderRadius.circular(15)),
        ));
  }
}
