import 'package:flutter/material.dart';
import 'package:ibdaa/screens/home.dart';
import 'package:ibdaa/style/colorapp.dart';

import '../widgets/drawer.dart';

class Worker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: ColorStyle().darkGray,
          title: Text('Worker'),
        ),
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: 200,
              child: Image.asset(
                'assets/images/cat.jpg',
                fit: BoxFit.cover,
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.person_rounded,
                color: Colors.blue,
              ),
              title: Text(
                'Mohammad alqnnas',
                style: TextStyle(fontSize: 25),
              ),
              trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.phone,
                    color: Colors.green,
                  )),
            ),
            ListTile(
              leading: Icon(
                Icons.place_rounded,
                color: Colors.red,
              ),
              title: Row(
                children: [
                  Text(
                    'Jordan Amman',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.work_rounded,
                color: Colors.brown,
              ),
              title: Row(
                children: [
                  Text(
                    'مواسرجي',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.description_rounded,
                color: Colors.green,
              ),
              title: Row(
                children: const [
                  Expanded(
                    child: TextField(
                      maxLines: 8,
                      decoration: InputDecoration.collapsed(
                          fillColor: Colors.black,
                          hintTextDirection: TextDirection.ltr,
                          hintText:
                              "عندي العديد من الوصف عن نفسي مثلا انا بحب حالى كثير اكثر من اي حد بالعالم  "),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
