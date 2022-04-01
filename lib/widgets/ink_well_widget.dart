import 'package:flutter/material.dart';

import '../style/colorapp.dart';

class InkWellWidget extends StatelessWidget {
  String URL;

  String Title;

  dynamic NextPage;

  InkWellWidget(
      {Key? key,
      required this.URL,
      required this.Title,
      required this.NextPage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return buildInkWellCard(context,
        url: URL, textTitleCard: Title, NextPage: NextPage);
  }

  InkWell buildInkWellCard(BuildContext context,
      {required String url, required String textTitleCard, required NextPage}) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (_) => NextPage));
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        elevation: 10,
        color: ColorStyle().lightGray,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Stack(
            children: [
              Image.asset(
                url,
                fit: BoxFit.cover,
              ),
              Container(
                margin: EdgeInsets.only(top: 0, left: 90),
                height: 70,
                width: double.infinity,
                child: Card(
                  color: Colors.black87,
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.only(bottomLeft: Radius.circular(50))),
                  child: Container(
                    child: Center(
                      child: Text(
                        textTitleCard,
                        style: TextStyle(
                            fontSize: 30,
                            color: ColorStyle().gold,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
