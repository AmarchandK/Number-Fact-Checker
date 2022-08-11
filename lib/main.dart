// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:developer';

import 'package:basic_http/apis.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.amber,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _controller = TextEditingController();
  String textToShown = 'Enter a Number & See the facts!!!';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: _controller,
              keyboardType: TextInputType.number,
              keyboardAppearance: Brightness.dark,
              decoration: const InputDecoration(
                  label: Text('Number'),
                  border: OutlineInputBorder(),
                  hintText: 'Enter a Number'),
            ),
          ),
          FloatingActionButton.extended(
            onPressed: () async {
              final _num = _controller.text;
              final _result = await getNumFact(num: _num);
              setState(() {
                textToShown = _result.text ?? 'No Facts Found, Sorry';
              });
            },
            label: const Text('Submit'),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Text(textToShown),
          )
        ],
      ),
    );
  }
}
