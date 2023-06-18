import 'package:word_master/comp/quizes/quiz_question_model.dart';

class GermanQuiz {
  List<QuestionModel> get questions => [
        QuestionModel(
          'Wie sagt man "Hallo" auf Deutsch?',
          {'Hello': false, 'Goodbye': false, 'Danke': false, 'Hallo': true},
        ),
        QuestionModel(
          'Wie viel ist 2 + 4?',
          {'5': false, '6': true, '7': false, '8': false},
        ),
        QuestionModel(
          'Wie heißt die Hauptstadt von Deutschland?',
          {'Berlin': true, 'Hamburg': false, 'München': false, 'Köln': false},
        ),
        // Add more questions here
      ];
}
