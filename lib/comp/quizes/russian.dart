import 'package:word_master/comp/quizes/quiz_question_model.dart';

class RussianQuiz {
  List<QuestionModel> get questions => [
        QuestionModel(
          'Как по-русски говорят "привет"?',
          {'Hello': false, 'Goodbye': false, 'Спасибо': false, 'Привет': true},
        ),
        QuestionModel(
          'Сколько будет 5 + 3?',
          {'7': false, '8': true, '9': false, '10': false},
        ),
        QuestionModel(
          'Как называется столица России?',
          {
            'Москва': true,
            'Санкт-Петербург': false,
            'Новосибирск': false,
            'Екатеринбург': false
          },
        ),
        QuestionModel(
          'Как по-английски говорят "стол"?',
          {'Table': false, 'Chair': false, 'Desk': false, 'Стол': true},
        ),
        QuestionModel(
          'Сколько дней в неделе?',
          {'7': true, '5': false, '6': false, '4': false},
        ),
        QuestionModel(
          'Как по-русски говорят "красный"?',
          {'Red': false, 'Blue': false, 'Зеленый': false, 'Красный': true},
        ),
        QuestionModel(
          'Какова последовательность русского алфавита?',
          {
            'АБВГД': false,
            'АБВГДЕ': false,
            'АБВГДЕЁЖ': false,
            'АБВГДЕЁЖЗИЙК': true
          },
        ),
        QuestionModel(
          'Как по-английски говорят "спасибо"?',
          {
            'Thank you': false,
            'You\'re welcome': false,
            'Sorry': false,
            'Спасибо': true
          },
        ),
      ];
}
