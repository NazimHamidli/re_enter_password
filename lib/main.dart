import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_re_enter_password/controller/pin_code_provider.dart';
import 'package:task_re_enter_password/view/pin_holder.dart';

import 'view/pin_keyboard.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (_) => PinCodeProvider()..fillLists(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Task Re-Enter PIN'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: const Padding(
        padding: EdgeInsets.only(top: 30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            PinHolder(),
            SizedBox(
              height: 15,
            ),
            PinKeyboard()
          ],
        ),
      ),
    );
  }
}
