
import '../greeting.dart';

class FamilyMapper {
  Map<String, dynamic> get mapping => {
        "Spanish": FamilyAndRelationships().spanishPhrases,
        "French": FamilyAndRelationships().frenchPhrases,
        "German": FamilyAndRelationships().germanPhrases,
        "Italian": FamilyAndRelationships().italianPhrases,
        "Chinese": FamilyAndRelationships().chinesePhrases,
        "Japanese": FamilyAndRelationships().japanesePhrases,
        "Russian": FamilyAndRelationships().russianPhrases,
        "Arabic": FamilyAndRelationships().arabicPhrases,
        "Indian": FamilyAndRelationships().hindiPhrases,
      };
}
