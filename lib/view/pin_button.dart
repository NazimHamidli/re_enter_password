import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_re_enter_password/controller/pin_code_provider.dart';

class PinButton extends StatelessWidget {
  const PinButton({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.read<PinCodeProvider>().addPin(text, context);
      },
      child: Container(
        width: 90,
        height: 71,
        margin: const EdgeInsets.all(6),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: const Color(0xffC4B677)),
            borderRadius: BorderRadius.circular(15)),
        child: Center(
          child: Text(text,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.w600)),
        ),
      ),
    );
  }
}
