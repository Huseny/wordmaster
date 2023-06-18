import 'package:word_master/comp/quizes/quiz_question_model.dart';

class IndianQuiz {
  List<QuestionModel> get questions => [
        QuestionModel(
          'What is the capital of India?',
          {
            'New Delhi': true,
            'Mumbai': false,
            'Kolkata': false,
            'Chennai': false
          },
        ),
        QuestionModel(
          'What is the national animal of India?',
          {'Tiger': true, 'Elephant': false, 'Lion': false, 'Peacock': false},
        ),
        QuestionModel(
          'Which festival is widely celebrated in India?',
          {'Diwali': true, 'Christmas': false, 'Eid': false, 'Holi': false},
        ),
        QuestionModel(
          'What is the official language of India?',
          {'Hindi': true, 'English': false, 'Bengali': false, 'Tamil': false},
        ),
        QuestionModel(
          'Which river is considered sacred in India?',
          {
            'Ganges': true,
            'Yamuna': false,
            'Brahmaputra': false,
            'Narmada': false
          },
        ),
        QuestionModel(
          'Who is the father of the Indian nation?',
          {
            'Mahatma Gandhi': true,
            'Jawaharlal Nehru': false,
            'B.R. Ambedkar': false,
            'Subhash Chandra Bose': false
          },
        ),
        QuestionModel(
          'What is the national fruit of India?',
          {'Mango': true, 'Banana': false, 'Apple': false, 'Orange': false},
        ),
        QuestionModel(
          'Which sport is popular in India?',
          {
            'Cricket': true,
            'Football': false,
            'Tennis': false,
            'Basketball': false
          },
        ),
      ];
}
