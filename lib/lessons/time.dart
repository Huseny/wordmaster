import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class TimeAndDate extends StatelessWidget {
  TimeAndDate({super.key, required this.time,});

  final List<Map<String, String>> time;
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
        title: const Text('Time and Date'),
      ),
      body: ListView.builder(
        itemCount: time.length,
        itemBuilder: (context, index) {
          return Container(
            width: double.infinity,
            height: 80,
            color: Colors.orange,
            child: ListTile(
              title: Text(
                time[index]["translation"]!,
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
              subtitle: Text(
                time[index]["phrase"]!,
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
              trailing: IconButton(
                onPressed: () {
                  speak('es', time[index]["pronunciation"]!);
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
