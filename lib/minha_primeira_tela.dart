// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
//         useMaterial3: true,
//       ),
//       home: Container(color: Colors.white,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Stack(alignment: AlignmentDirectional.center, children: [
//               Container(width: 100, height: 100, color: Colors.red),
//               Container(width: 50, height: 50, color: Colors.blue),
//             ]),
//             Stack(alignment: AlignmentDirectional.center, children: [
//               Container(width: 100, height: 100, color: Colors.red),
//               Container(width: 50, height: 50, color: Colors.blue),
//             ]),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Container(color: Colors.black, width: 50, height: 50,),
//                 Container(color: Colors.pink, width: 50, height: 50,),
//                 Container(color: Colors.cyan, width: 50, height: 50,),
//               ],),
//             Container(
//               color: Colors.amber,
//               height: 30,
//               width: 300,
//               child: Text(
//                 'Teste Button',
//                 style: TextStyle(color: Colors.black, fontSize: 30,),
//                 textAlign: TextAlign.center,
//               ),
//             ),
//             ElevatedButton(onPressed: () {
//               print("Você apertou o botão");
//             }, child: Text('Aperte o Botão')),
//           ],
//         ),
//       ),
//     );
//   }
// }