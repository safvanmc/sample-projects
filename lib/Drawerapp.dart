import 'package:flutter/material.dart';
import 'package:sampleproject/Dropdown.dart';
import 'package:sampleproject/SafToast.dart';
import 'package:sampleproject/calender.dart';

class Drawersaf extends StatefulWidget {
  const Drawersaf({super.key});

  @override
  State<Drawersaf> createState() => _DrawersafState();
}

class _DrawersafState extends State<Drawersaf> {
  int selectedintex=0;
  static List _widgetoptions=[
    Clndr(),
    Drop1(),
    Abc(),
  ];
  void onitemtaped(int index){
    setState(() {
      selectedintex= index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text('Drawerapp')),
      body:Center(

        child:_widgetoptions[selectedintex],

      ) ,
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.indigo),
              child: Text('Drawer header'),
            ),
            ListTile(
              title: Text('Home'),
              selected: selectedintex==0,
              onTap: (){
               onitemtaped(0);
               Navigator.pop(context);
              },

            ),
            ListTile(
              title: Text('Dropdown'),
              selected: selectedintex==1,
              onTap: () {
                onitemtaped(1);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Toast'),
              selected: selectedintex==2,
              onTap: () {
                onitemtaped(2);
                Navigator.pop(context);
              },
            )

          ],
        ),
      ),
    );
  }
}
