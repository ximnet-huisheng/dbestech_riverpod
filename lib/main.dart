// from https://www.youtube.com/watch?v=2EV5w73QbF4

// from https://www.youtube.com/watch?v=U_9yhp0aSaQ

//1. add ProviderScope at main()
//2. create Provider / StateProvider
//3. add widget that extend ConsumerWidget
//4. read the value
//5. use ref.read to change the state

import 'package:dbestech_riverpod/my_home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

final counterStateProvider = StateProvider<int>(
  (ref) {
    return 0;
  },
);
