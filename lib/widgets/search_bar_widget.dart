import 'package:flutter/material.dart';
class SearchBarWidget extends StatelessWidget {
  String hint ;
   SearchBarWidget({Key? key , required this.hint }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.all(8.0),
      child: TextField(
        decoration: InputDecoration(
            label: Text('بحث'),
            hintText: hint,
            suffixIcon: IconButton(
                onPressed: () {}, icon: Icon(Icons.search_outlined))),
        keyboardType: TextInputType.text,
      ),
    );
  }
}
