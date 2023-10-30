import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SampleToast extends StatefulWidget {
  const SampleToast({super.key});

  @override
  State<SampleToast> createState() => _SampleToastState();
}

class _SampleToastState extends State<SampleToast> {
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