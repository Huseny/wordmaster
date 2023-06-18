// import 'package:flutter/material.dart';
// import 'package:faker/faker.dart';
// import 'package:translator/translator.dart';

// class MyWidget extends StatelessWidget {
//   const MyWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     Future<String> getTranslation(String text) async {
//       GoogleTranslator translator = GoogleTranslator();
//       return (await translator.translate(text, to: 'en')).text;
//     }

//     Future getText() async {
//       final faker = Faker();

//       return await getTranslation(faker.lorem.sentence());
//     }

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Random English Sentences'),
//       ),
//       body: FutureBuilder(
//           future: getText(),
//           builder: (context, snapshot) {
//             if (snapshot.hasData) {
//               print(snapshot.data);
//               return ListView.builder(
//                 itemCount: 10,
//                 itemBuilder: (context, index) {
//                   return ListTile(
//                     title: Text(snapshot.data),
//                   );
//                 },
//               );
//             } else {
//               print("no data");
//               return Placeholder();
//             }
//           }),
//     );
//   }
// }
