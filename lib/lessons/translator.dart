import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:translator/translator.dart';
import 'package:word_master/comp/language_model.dart';

import '../comp/lanuage_code.dart';

class Translator extends StatefulWidget {
  final Language language;
  const Translator({super.key, required this.language});

  @override
  State<Translator> createState() => _TranslatorState();
}

class _TranslatorState extends State<Translator> {
  FlutterTts flutterTts = FlutterTts();
  GoogleTranslator translator = GoogleTranslator();
  String inputText = '';
  bool _loading = false;
  String _translatedText = "";
  Future translate() async {
    setState(() {
      _loading = true;
    });
    Translation translation = await translator.translate(inputText,
        to: LanguageCode().mapping[widget.language.name]!);
    setState(() {
      _translatedText = translation.text;
      _loading = false;
    });
  }

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
        title: const Text('Translate & Speech'),
        centerTitle: true,
        backgroundColor: const Color(0xffFFC100),
      ),
      body: Column(
        children: [
          TextField(
            style: const TextStyle(color: Colors.white),
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(25),
              hintText: 'Enter Text...',
              hintStyle: const TextStyle(color: Colors.white),
              border: InputBorder.none,
              filled: true,
              fillColor: const Color(0xff263238),
              suffixIcon: _loading
                  ? const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CircularProgressIndicator(
                        backgroundColor: Colors.white,
                      ),
                    )
                  : IconButton(
                      icon: const Icon(
                        Icons.translate,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        if (inputText.isNotEmpty) translate();
                      },
                    ),
            ),
            onChanged: (input) {
              inputText = input;
            },
          ),
          Expanded(
              child: ListTile(
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            title: Text(
              "English: ${widget.language.name}",
              style: const TextStyle(
                  color: Colors.grey, fontWeight: FontWeight.bold),
            ),
            subtitle: _translatedText != ""
                ? Text("${widget.language.name}: $_translatedText")
                : const Text(""),
            trailing: IconButton(
              onPressed: () {
                speak(LanguageCode().mapping[widget.language.name]!,
                    _translatedText);
              },
              icon: const Icon(
                Icons.play_arrow,
                color: Colors.white,
              ),
            ),
          )),
        ],
      ),
    );
  }
}
