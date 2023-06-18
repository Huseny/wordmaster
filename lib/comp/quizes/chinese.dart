import 'package:word_master/comp/quizes/quiz_question_model.dart';

class ChineseQuiz {
  List<QuestionModel> get questions => [
        QuestionModel(
          '如何用中文说“你好”？',
          {'Hello': false, 'Goodbye': false, '你好': true, '谢谢': false},
        ),
        QuestionModel(
          '2 + 3 等于多少？',
          {'4': false, '5': true, '6': false, '7': false},
        ),
        QuestionModel(
          '中国的首都是哪里？',
          {'北京': true, '上海': false, '广州': false, '成都': false},
        ),
        QuestionModel(
          '用中文如何翻译“书”？',
          {'Book': false, 'Pen': false, '书': true, '桌子': false},
        ),
        QuestionModel(
          '一周有多少天？',
          {'7': true, '5': false, '6': false, '4': false},
        ),
        QuestionModel(
          '红色用中文怎么说？',
          {'Red': false, 'Blue': false, '绿色': false, '红色': true},
        ),
        QuestionModel(
          '中文字母的顺序是什么？',
          {'A B C': false, 'A C B': false, 'B A C': false, 'A B C D': true},
        ),
        QuestionModel(
          '如何用中文说“谢谢”？',
          {'Thank you': false, '请': false, '对不起': false, '谢谢': true},
        ),
      ];
}
