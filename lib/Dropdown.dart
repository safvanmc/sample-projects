import 'package:flutter/material.dart';

class Drop1 extends StatefulWidget {
  const Drop1({super.key});

  @override
  State<Drop1> createState() => _Drop1State();
}

class _Drop1State extends State<Drop1> {
  String dropdownvalue = 'Item 1';

  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            DropdownButton(
                value: dropdownvalue,
                icon: Icon(Icons.keyboard_arrow_down),
                items: items.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(items),
                  );
                }).toList(),
              onChanged: (String?newValue) {
                  setState(() {
                    dropdownvalue=newValue!;
                  });

              },
            ),
            DropdownButton(items: items, onChanged: onChanged)
          ],
        ),
      ),
    );
  }
}
