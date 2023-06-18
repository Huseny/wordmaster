import 'package:flutter/material.dart';
import 'package:word_master/comp/catagories.dart';
import 'package:word_master/comp/catagories/mapper/number_mapper.dart';
import 'package:word_master/comp/language_model.dart';
import 'package:word_master/comp/quizes/quiz_mapper.dart';
import 'package:word_master/lessons/numbers.dart';
import 'package:word_master/lessons/quiz.dart';

import 'lessons/translator.dart';

class Lessons extends StatelessWidget {
  final Language language;
  Lessons({super.key, required this.language});
  final List<Map<String, String>> catagories = Catagories().catagories;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff6f7f9),
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: const Color.fromRGBO(58, 66, 86, 1.0),
        title: Text(language.name),
      ),
      body: ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: catagories.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 8.0,
              margin:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
              child: Container(
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(64, 75, 96, 0.9),
                ),
                child: ListTile(
                  contentPadding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 10.0),
                  leading: Container(
                    padding: const EdgeInsets.only(right: 12.0),
                    decoration: const BoxDecoration(
                      border: Border(
                        right: BorderSide(width: 1.0, color: Colors.white24),
                      ),
                    ),
                    child: Image.asset(
                      catagories[index]["image"]!,
                      width: 50,
                    ),
                  ),
                  title: Text(
                    catagories[index]["Name"]!,
                    style: const TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(left: 10.0, top: 10),
                    child: Text(
                      catagories[index]["Description"]!,
                      style: const TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ),
                  trailing: const Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.white,
                    size: 30.0,
                  ),
                  onTap: () {
                    if (catagories[index]["Name"] == "Quiz") {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => QuizScreen(
                                    questions:
                                        QuizMapper().mapping[language.name]!,
                                  )));
                    } else if (catagories[index]["Name"] ==
                        "Numbers and Counting") {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => NumBer(
                                    numbers:
                                        NumberMapper().mapping[language.name]!,
                                  )));
                    } else if (catagories[index]["Name"] == "Translator") {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Translator(
                                    language: language,
                                  )));
                    } else {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Scaffold(
                                    body: Center(
                                      child: Text(catagories[index]["Name"]!),
                                    ),
                                  )));
                    }
                  },
                ),
              ),
            );
          }),
    );
  }
}
