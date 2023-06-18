import 'package:word_master/comp/catagories/numbers.dart';

class NumberMapper {
  Map<String, dynamic> get mapping => {
        "Spanish": Numbers().spanish,
        "French": Numbers().french,
        "German": Numbers().germany,
        "Italian": Numbers().italian,
        "Chinese": Numbers().chinese,
        "Japanese": Numbers().japanese,
        "Russian": Numbers().russian,
        "Arabic": Numbers().arabic,
        "Indian": Numbers().indian
      };
}
