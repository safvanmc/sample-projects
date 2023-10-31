import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Abc extends StatefulWidget {
  const Abc({super.key});

  @override
  State<Abc> createState() => _AbcState();
}

class _AbcState extends State<Abc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {
              Fluttertoast.showToast(msg: 'hi welcome !!',toastLength: Toast.LENGTH_LONG,
                  fontSize: 20,
                  backgroundColor: Colors.red);
            }, child: Text('Click Me'),),
            ElevatedButton(onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Successfully submitted'),duration: Duration(seconds: 10)),);
            }, child: Text('ok'))
          ],
        ),
      ),
    );
  }
}
