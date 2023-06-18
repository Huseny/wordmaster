import 'package:flutter/material.dart';
import 'comp/catagories.dart';
import 'homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final List<Map<String, String>> catagories = Catagories().catagories;

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "WordMaster",
      home: HomePage(),
      // routes: {
      //   "/": (context) => const HomePage(),
      //   for (Map<String, String> category in catagories)
      //     '/${category['Name']!}': (context) => Scaffold(
      //           body: Center(
      //             child: Text(context.toString()),
      //           ),
      //         )
      // },
    );
  }
}
