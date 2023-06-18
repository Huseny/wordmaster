  import 'package:flutter/material.dart';
  import 'package:flutter_tts/flutter_tts.dart';

  class FamilyAndRelationShips extends StatelessWidget {
    FamilyAndRelationShips({super.key, required this.family,});

    final List<Map<String, String>> family;
    final FlutterTts flutterTts = FlutterTts();

    Future speak(String languageCode, String text) async {
      await flutterTts.setLanguage(languageCode);
      await flutterTts.setPitch(1);
      await flutterTts.setVolume(1);
      await flutterTts.setSpeechRate(1);
      await flutterTts.speak(text);
    }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black87,
          title: const Text('Famly and Relationships'),
        ),
        body: ListView.builder(
          itemCount: family.length,
          itemBuilder: (context, index) {
            return Container(
              width: double.infinity,
              height: 80,
              color: Colors.orange,
              child: ListTile(
                title: Text(
                  family[index]["translation"]!,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
                subtitle: Text(
                  family[index]["phrase"]!,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {
                    speak('es', family[index]["pronunciation"]!);
                  },
                  icon: const Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                  ),
                ),
              ),
            );
          },
        ),
      );
    }
  }
