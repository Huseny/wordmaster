import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class Greeting extends StatelessWidget {
  Greeting({super.key, required this.greetings, required this.converted});

  final List<String> greetings;
  final List<Map<String, String>> converted;
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
        title: const Text('Greetings'),
      ),
      body: ListView.builder(
        itemCount: converted.length,
        itemBuilder: (context, index) {
          return Container(
            width: double.infinity,
            height: 80,
            color: Colors.orange,
            child: ListTile(
              title: Text(
                converted[index]["greeting"]!,
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
              subtitle: Text(
                greetings[index],
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
              trailing: IconButton(
                onPressed: () {
                  speak('es', converted[index]["Pronunciation"]!);
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
