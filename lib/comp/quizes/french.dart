import 'package:word_master/comp/quizes/quiz_question_model.dart';

class FrenchQuiz {
  List<QuestionModel> get questions => [
        QuestionModel(
          'Comment dit-on "bonjour" en français?',
          {
            'Hello': false,
            'Goodbye': false,
            'Thank you': false,
            'Bonjour': true
          },
        ),
        QuestionModel(
          'Combien font 2 + 3?',
          {'4': false, '5': true, '6': false, '7': false},
        ),
        QuestionModel(
          'Quelle est la capitale de la France?',
          {'Paris': true, 'Lyon': false, 'Marseille': false, 'Toulouse': false},
        ),
        // Add more questions here
      ];
}
