import 'package:word_master/comp/quizes/arabic.dart';
import 'package:word_master/comp/quizes/chinese.dart';
import 'package:word_master/comp/quizes/french.dart';
import 'package:word_master/comp/quizes/german.dart';
import 'package:word_master/comp/quizes/indian.dart';
import 'package:word_master/comp/quizes/italian.dart';
import 'package:word_master/comp/quizes/japanese.dart';
import 'package:word_master/comp/quizes/quiz_question_model.dart';
import 'package:word_master/comp/quizes/russian.dart';
import 'package:word_master/comp/quizes/spanish.dart';

class QuizMapper {
  Map<String, List<QuestionModel>> get mapping => {
        "Spanish": SpanishQuiz().questions,
        "French": FrenchQuiz().questions,
        "German": GermanQuiz().questions,
        "Italian": ItalianQuiz().questions,
        "Chinese": ChineseQuiz().questions,
        "Japanese": JapaneseQuiz().questions,
        "Russian": RussianQuiz().questions,
        "Arabic": ArabicQuiz().questions,
        "Indian": IndianQuiz().questions
      };
}
