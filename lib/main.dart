import 'package:flutter/material.dart';
import 'package:music_player/pages/home/home.model.dart';
import 'package:provider/provider.dart';

import 'pages/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChangeNotifierProvider<HomeModel>(
          create: (BuildContext context) {
            return HomeModel();
          },
          child: const MyHomePage(title: 'Flutter Demo Home Page')),
    );
  }
}
