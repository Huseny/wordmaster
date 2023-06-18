import 'language_model.dart';

class Languages {
  Languages();
  List<Language> get languages => [
        Language(name: 'Spanish', image: 'assets/spain.png', progress: 0),
        Language(name: 'French', image: 'assets/france.png', progress: 0),
        Language(name: 'German', image: 'assets/germany.png', progress: 0),
        Language(name: 'Italian', image: 'assets/italy.png', progress: 0),
        Language(name: 'Chinese', image: 'assets/china.png', progress: 0),
        Language(name: 'Japanese', image: 'assets/japan.png', progress: 0),
        Language(name: 'Russian', image: 'assets/russia.png', progress: 0),
        Language(name: 'Arabic', image: 'assets/saudiarabia.png', progress: 0),
        Language(name: 'Indian', image: 'assets/india.png', progress: 0),
      ];
}
