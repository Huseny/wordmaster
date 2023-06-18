import 'package:flutter/material.dart';
import 'package:word_master/homepage.dart';
import 'package:word_master/lessons/quiz_color.dart';

class ResultScreen extends StatefulWidget {
  final int score;
  const ResultScreen(this.score, {Key? key}) : super(key: key);

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.pripmaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            width: double.infinity,
            child: Text(
              "Congratulations",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 45.0,
          ),
          const Text(
            "You Score is",
            style: TextStyle(color: Colors.white, fontSize: 34.0),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Text(
            "${widget.score}",
            style: const TextStyle(
              color: Colors.orange,
              fontSize: 85.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 100.0,
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomePage(),
                ),
              );
            },
            style: TextButton.styleFrom(
              shape: const StadiumBorder(),
              backgroundColor: AppColor.secondaryColor,
              padding: const EdgeInsets.all(18.0),
            ),
            child: const Text(
              "Repeat the quiz",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
