import 'package:word_master/comp/quizes/quiz_question_model.dart';

class ArabicQuiz {
  List<QuestionModel> get questions => [
        QuestionModel(
          'ما هو ترجمة كلمة "مرحبا" إلى العربية؟',
          {'Hello': false, 'Goodbye': false, 'مرحبا': true, 'شكرا': false},
        ),
        QuestionModel(
          'كم تساوي 2 + 3؟',
          {'4': false, '5': true, '6': false, '7': false},
        ),
        QuestionModel(
          'ما هي عاصمة السعودية؟',
          {'الرياض': true, 'جدة': false, 'مكة': false, 'الدمام': false},
        ),
        QuestionModel(
          'ما هو ترجمة كلمة "كتاب" إلى الإنجليزية؟',
          {'Book': true, 'Pen': false, 'Table': false, 'Chair': false},
        ),
        QuestionModel(
          'كم عدد أيام الأسبوع في العربية؟',
          {'7': true, '5': false, '6': false, '4': false},
        ),
        QuestionModel(
          'ما هو اللون الأحمر بالعربية؟',
          {'Red': true, 'Blue': false, 'Green': false, 'Yellow': false},
        ),
        QuestionModel(
          'ما هو ترتيب حروف الهجاء العربي؟',
          {'أ ب ت': true, 'أ ت ب': false, 'ب ت أ': false, 'ب أ ت': false},
        ),
        QuestionModel(
          'ما هو ترجمة كلمة "شكرا" إلى الإنجليزية؟',
          {'Thank you': true, 'Please': false, 'Sorry': false, 'Yes': false},
        ),
      ];
}
