import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Saftoast extends StatefulWidget {
  const Saftoast({super.key});

  @override
  State<Saftoast> createState() => _SaftoastState();
}

class _SaftoastState extends State<Saftoast> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: () {
            Fluttertoast.showToast(msg: 'hi welcome !!',toastLength: Toast.LENGTH_LONG,
                fontSize: 20,
                backgroundColor: Colors.red);
          }, child: Container(width: 100,height: 100,color: Colors.amber,child: Text('Click Me'),)),
        ],
      ),
    );
  }
}
