import 'package:flutter/material.dart';
import 'package:sampleproject/Counterapp.dart';
import 'package:sampleproject/Image.dart';
import 'package:sampleproject/SafToast.dart';

class NaviBar extends StatefulWidget {
  const NaviBar({super.key});

  @override
  State<NaviBar> createState() => _NaviBarState();
}

class _NaviBarState extends State<NaviBar> {
  int selectedindex=0;
  static List Safwidgets=[
    Counterapp(),
    Imagepicker(),
    Abc()
  ];
  void onitemTapped(int index){
    setState(() {
      selectedindex=index;
    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Safwidgets.elementAt(selectedindex),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
         BottomNavigationBarItem(
             icon: Icon(Icons.home),
           label: '',
           backgroundColor: Colors.cyan
         ),
          BottomNavigationBarItem(
              icon: Icon(Icons.search) ,
            label: '',
            backgroundColor: Colors.amber
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person),
          label: '',
          backgroundColor: Colors.red)
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex:selectedindex,
        iconSize: 20,
        onTap:onitemTapped ,
        elevation: 5,
      ),

    );
  }
}
