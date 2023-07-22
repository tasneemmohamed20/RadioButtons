import 'package:flutter/material.dart';
class RadioButtonList extends StatefulWidget {
  const RadioButtonList({super.key});

  @override
  _RadioButtonListState createState() => _RadioButtonListState();
}
class _RadioButtonListState extends State<RadioButtonList> {
  int? selectedRadio=-1;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return RadioListTile(
            value: index,
            groupValue: selectedRadio,
            onChanged:(index){setState(() {
              selectedRadio=index;
            });},
            title: Text('radio ${index+1}'),
          );
        },
      ),
    );
  }
}


