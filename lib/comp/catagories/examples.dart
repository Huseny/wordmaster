// import 'package:http/http.dart' as http;
// import 'dart:convert';

// Future<List<String>> fetchCommonPhrases(String languageCode) async {
//   // const apiUrl = 'https://glosbe.com/gapi/tm';
//   final response = await http.get(Uri.parse(
//       'https://glosbe.com/gapi/translate?from=eng&dest=kor&format=json&pretty=true&phrase=phrase'));

//   print(response.statusCode);
//   if (response.statusCode == 200) {
//     final data = json.decode(response.body);
//     final phrases = List<String>.from(
//         data['examples'].map((example) => example['first']['text']));
//     return phrases;
//   } else {
//     throw Exception('Failed to fetch common phrases');
//   }
// }
