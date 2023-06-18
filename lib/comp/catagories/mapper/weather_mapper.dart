
import '../greeting.dart';

class WeatherMapper {
  Map<String, dynamic> get mapping => {
        "Spanish": WeatherAndSeasons().spanishWeatherPhrases,
        "French": WeatherAndSeasons().frenchWeatherPhrases,
        "German": WeatherAndSeasons().germanWeatherPhrases,
        "Italian": WeatherAndSeasons().italianWeatherPhrases,
        "Chinese": WeatherAndSeasons().chineseWeatherPhrases,
        "Japanese": WeatherAndSeasons().japaneseWeatherPhrases,
        "Russian": WeatherAndSeasons().russianWeatherPhrases,
        "Arabic": WeatherAndSeasons().weatherArabic,
        "Indian": WeatherAndSeasons().hindiWeatherPhrases,
      };
}
