
import '../greeting.dart';

class FoodMapper {
  Map<String, dynamic> get mapping => {
        "Spanish": FoodAndDining().spanishPhrases,
        "French": FoodAndDining().frenchPhrases,
        "German": FoodAndDining().germanPhrases,
        "Italian": FoodAndDining().italianPhrases,
        "Chinese": FoodAndDining().chinesePhrases,
        "Japanese": FoodAndDining().japanesePhrases,
        "Russian": FoodAndDining().russianPhrases,
        "Arabic": FoodAndDining().arabicPhrases,
        "Indian": FoodAndDining().hindiPhrases,
      };
}
