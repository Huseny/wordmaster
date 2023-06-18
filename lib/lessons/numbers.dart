import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class NumBer extends StatelessWidget {
  NumBer({super.key, required this.numbers});

  final List<Map<String, String>> numbers;
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
        title: const Text('Numbers'),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return Container(
            width: double.infinity,
            height: 80,
            color: Colors.orange,
            child: ListTile(
              title: Text(
                numbers[index]["Number"]!,
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
              subtitle: Text(
                numbers[index]["Pronunciation"]!,
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
              trailing: IconButton(
                onPressed: () {
                  speak('es', numbers[index]["Pronunciation"]!);
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
