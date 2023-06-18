import '../education.dart';

class EducationMapper {
  Map<String, dynamic> get mapping => {
        "educations": Education().educationAndAcademics,
        "Spanish": Education().spanishEducation,
        "French": Education().frenchEducation,
        "German": Education().germanEducation,
        "Italian": Education().italianEducation,
        "Chinese": Education().chineseEducation,
        "Japanese": Education().japaneseEducation,
        "Russian": Education().russianEducation
      };
}
