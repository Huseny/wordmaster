
import '../greeting.dart';

class ColorMapper {
  Map<String, dynamic> get mapping => {
        "Spanish": ColorsAndShapes().colorsAndShapesSpanish,
        "French": ColorsAndShapes().colorsAndShapesFrench,
        "German": ColorsAndShapes().colorsAndShapesGerman,
        "Italian": ColorsAndShapes().colorsAndShapesItalian,
        "Chinese": ColorsAndShapes().colorsAndShapesChinese,
        "Japanese": ColorsAndShapes().colorsAndShapesJapanese,
        "Russian": ColorsAndShapes().colorsAndShapesRussian,
        "Arabic": ColorsAndShapes().colorsAndShapesArabic,
        "Indian": ColorsAndShapes().colorsAndShapesHindi,
      };
}
