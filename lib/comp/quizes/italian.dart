import 'package:word_master/comp/quizes/quiz_question_model.dart';

class ItalianQuiz {
  List<QuestionModel> get questions => [
        QuestionModel(
          'Come si dice "ciao" in italiano?',
          {'Hello': false, 'Buongiorno': false, 'Ciao': true, 'Grazie': false},
        ),
        QuestionModel(
          'Quanto fa 5 + 3?',
          {'7': false, '8': true, '9': false, '10': false},
        ),
        QuestionModel(
          'Qual è la capitale dell\'Italia?',
          {'Roma': true, 'Milano': false, 'Firenze': false, 'Venezia': false},
        ),
        QuestionModel(
          'Come si traduce "libro" in italiano?',
          {'Book': false, 'Pen': false, 'Libro': true, 'Tavolo': false},
        ),
        QuestionModel(
          'Quanti giorni ci sono in una settimana?',
          {'7': true, '5': false, '6': false, '4': false},
        ),
        QuestionModel(
          'Come si dice "rosso" in italiano?',
          {'Red': false, 'Blue': false, 'Verde': false, 'Rosso': true},
        ),
        QuestionModel(
          'Qual è l\'ordine delle lettere dell\'alfabeto italiano?',
          {'A B C': false, 'A C B': false, 'B A C': false, 'A B C D': true},
        ),
        QuestionModel(
          'Come si dice "grazie" in italiano?',
          {
            'Thank you': false,
            'Prego': false,
            'Mi dispiace': false,
            'Grazie': true
          },
        ),
      ];
}
