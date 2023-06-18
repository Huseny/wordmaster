
import '../greeting.dart';

class GreetingMapper {
  Map<String, dynamic> get mapping => {
        "greetings": GreetingsAndIntroductions().greetings,
        "Spanish": GreetingsAndIntroductions().spanishGreetings,
        "French": GreetingsAndIntroductions().frenchGreetings,
        "German": GreetingsAndIntroductions().germanGreetings,
        "Italian": GreetingsAndIntroductions().italianGreetings,
        "Chinese": GreetingsAndIntroductions().chineseGreetings,
        "Japanese": GreetingsAndIntroductions().japaneseGreetings,
        "Russian": GreetingsAndIntroductions().russianGreetings,
        "Arabic": GreetingsAndIntroductions().arabicGreetings,
        "Indian": GreetingsAndIntroductions().hindiGreetings,
      };
}
