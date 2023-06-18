class Catagories {
  Catagories();

  final List<Map<String, String>> _catagories = [
    {
      "Name": "Numbers and Counting",
      "Description":
          "Learn the alphabet and pronunciation rules specific to the target language.",
      "image": "assets/catagories/number.png"
    },
    {
      "Name": "Greetings and Introductions",
      "Description":
          "learn basic greetings, introductions, and polite expressions.",
      "image": "assets/catagories/greeting.png"
    },
    {
      "Name": "Family and Relationships",
      "Description":
          "Learn vocabulary related to family members, relationships, and describing people.",
      "image": "assets/catagories/family.png"
    },
    {
      "Name": "Food and Dining",
      "Description":
          "Learn vocabulary for different types of food, beverages, restaurants, and ordering meals.",
      "image": "assets/catagories/food.png"
    },
    {
      "Name": "Weather and Seasons",
      "Description":
          "Learn weather-related vocabulary, seasons, and describing weather conditions.",
      "image": "assets/catagories/weather.png"
    },
    {
      "Name": "Time and Dates",
      "Description":
          "learn how to tell time, days of the week, months, and important dates.",
      "image": "assets/catagories/time.png"
    },
    {
      "Name": "Colors and Shapes",
      "Description":
          "learn vocabulary for colors, shapes, and describing objects.",
      "image": "assets/catagories/color.png"
    },
    {
      "Name": "Work and Careers",
      "Description":
          "learn vocabulary and phrases related to professions, work, and job-seeking.",
      "image": "assets/catagories/work.png"
    },
    {
      "Name": "Education and Academics",
      "Description":
          "learn vocabulary related to education, schools, subjects, and learning.",
      "image": "assets/catagories/education.png"
    },
    {
      "Name": "Quiz",
      "Description": "take a quiz to test yourself",
      "image": "assets/catagories/quiz.png"
    },
    {
      "Name": "Translator",
      "Description": "tranlate any english word or sentence",
      "image": "assets/catagories/translate.png"
    }
  ];

  List<Map<String, String>> get catagories => _catagories;
}
