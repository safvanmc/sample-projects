import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Counterapp extends StatefulWidget {
  const Counterapp({super.key});

  @override
  State<Counterapp> createState() => _CounterappState();
}

class _CounterappState extends State<Counterapp> {
  var c=0;
  int d=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.amberAccent,title: Text('COUNTER APP')),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(color: Colors.red,onPressed: () {
                  d=c--;
                  setState(() {
                    d=c;
                  });

                  }, icon: Icon(CupertinoIcons.minus)),
                Text('$c'),
                IconButton(color: Colors.red,onPressed: () {
                  d=c++;
                  setState(() {
                    d=c;

                  });

                }, icon: Icon(CupertinoIcons.plus))


              ],
            ),
            Column(
              children: [
                ElevatedButton(onPressed: () {
                  setState(() {
                    c=00;
                  });


                }, child: Text('Reset'))
              ],
            )
          ],
        ),
      ),
    );
  }
}
