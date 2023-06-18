import 'package:word_master/comp/quizes/quiz_question_model.dart';

class SpanishQuiz {
  List<QuestionModel> get questions => [
        QuestionModel(
          '¿Cómo se dice "hola" en español?',
          {'Hello': true, 'Goodbye': false, 'Thank you': false, 'Yes': false},
        ),
        QuestionModel(
          '¿Cuánto es 5 + 3?',
          {'7': false, '8': true, '9': false, '10': false},
        ),
        QuestionModel(
          '¿Cuál es el color del cielo?',
          {'Azul': true, 'Rojo': false, 'Verde': false, 'Amarillo': false},
        ),
        QuestionModel(
          '¿Cómo se dice "gracias" en español?',
          {'Thank you': true, 'Please': false, 'Sorry': false, 'Yes': false},
        ),
        QuestionModel(
          '¿Cuál es la capital de España?',
          {
            'Madrid': true,
            'Barcelona': false,
            'Sevilla': false,
            'Valencia': false
          },
        ),
        // Add more questions here
      ];
}
