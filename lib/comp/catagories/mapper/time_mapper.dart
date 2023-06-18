
import '../greeting.dart';

class TimeMapper {
  Map<String, dynamic> get mapping => {
        "Spanish": TimeAndDates().spanishPhrases,
        "French": TimeAndDates().frenchPhrases,
        "German": TimeAndDates().germanPhrases,
        "Italian": TimeAndDates().italianPhrases,
        "Chinese": TimeAndDates().chinesePhrases,
        "Japanese": TimeAndDates().japanesePhrases,
        "Russian": TimeAndDates().russianPhrases,
        "Arabic": TimeAndDates().arabicPhrases,
        "Indian": TimeAndDates().hindiPhrases,
      };
}
