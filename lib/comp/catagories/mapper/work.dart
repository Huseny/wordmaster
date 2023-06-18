import '../education.dart';
import '../work.dart';

class WorkMapper {
  Map<String, dynamic> get mapping => {
        "Spanish": Work().spanishWorkAndCareers,
        "French": Work().frenchWorkAndCareers,
        "German": Work().germanWorkAndCareers,
        "Italian": Education().italianEducation,
        "Chinese": Education().chineseEducation,
        "Japanese": Education().japaneseEducation,
        "Russian": Education().russianEducation
      };
}
