import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:sampleproject/Counterapp.dart';
import 'package:sampleproject/Dropdown.dart';
import 'package:sampleproject/SafToast.dart';
import 'package:sampleproject/main.dart';
import 'package:sampleproject/navigationbar.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:Drop1(),
    );
  }
}
//
// class Counterapp extends StatefulWidget {
//   const Counterapp({super.key});
//
//   @override
//   State<Counterapp> createState() => _CounterappState();
// }

// class _CounterappState extends State<Counterapp> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Row(
//           children: [
//             AppBar(
//               title: Text('COUNTER APP'),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
