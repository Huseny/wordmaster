import 'package:word_master/comp/quizes/quiz_question_model.dart';

class JapaneseQuiz {
  List<QuestionModel> get questions => [
        QuestionModel(
          'こんにちはを英語でなんと言いますか？',
          {'Hello': true, 'Goodbye': false, 'Thank you': false, 'Yes': false},
        ),
        QuestionModel(
          '5 + 3 はいくつですか？',
          {'7': false, '8': true, '9': false, '10': false},
        ),
        QuestionModel(
          '日本の首都はどこですか？',
          {'東京': true, '大阪': false, '京都': false, '名古屋': false},
        ),
        QuestionModel(
          '机を英語でなんと言いますか？',
          {'Table': false, 'Chair': false, 'Desk': true, 'Book': false},
        ),
        QuestionModel(
          '1週間には何日ありますか？',
          {'7': true, '5': false, '6': false, '4': false},
        ),
        QuestionModel(
          '赤を日本語でなんと言いますか？',
          {'Red': false, 'Blue': false, '緑': false, '赤': true},
        ),
        QuestionModel(
          '日本の五十音の順番はどうなっていますか？',
          {
            'あいうえお': false,
            'いろはにほへと': false,
            'あいうえおかきく': false,
            'あいうえおかきくさしす': true
          },
        ),
        QuestionModel(
          'ありがとうを英語でなんと言いますか？',
          {
            'Thank you': false,
            'You\'re welcome': false,
            'Sorry': false,
            'Arigatou': true
          },
        ),
      ];
}
