import 'package:flutter/material.dart';
import 'package:word_master/comp/languages.dart';
import 'package:word_master/lessons_page.dart';

import 'comp/language_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late List<Language> languages;
  @override
  void initState() {
    languages = Languages().languages;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(58, 66, 86, 1.0),
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: const Color.fromRGBO(58, 66, 86, 1.0),
        title: const Text("Word Master"),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.list))],
      ),
      body: ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: languages.length,
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
                      languages[index].image,
                      width: 50,
                    ),
                  ),
                  title: Text(
                    languages[index].name,
                    style: const TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: LinearProgressIndicator(
                          backgroundColor: const Color.fromRGBO(
                            209,
                            224,
                            224,
                            0.2,
                          ),
                          value: languages[index].progress,
                          valueColor:
                              const AlwaysStoppedAnimation(Colors.green),
                        ),
                      ),
                      const Expanded(
                        flex: 4,
                        child: Padding(
                          padding: EdgeInsets.only(left: 10.0),
                        ),
                      ),
                    ],
                  ),
                  trailing: const Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.white,
                    size: 30.0,
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Lessons(
                                  language: languages[index],
                                )));
                  },
                ),
              ),
            );
          }),
    );
  }
}
