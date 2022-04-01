import 'package:flutter/material.dart';

class GridTileVendors extends StatelessWidget {
  String title;

  String ImgUrl;

  GridTileVendors({
    Key? key,
    required this.title,
    required this.ImgUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: GridTile(
          footer: GridTileBar(
            backgroundColor: Colors.black87,
            title: Text(title , style: TextStyle(color: Colors.white),),
          ),
            child: Image.network(
          ImgUrl,
          fit: BoxFit.cover,
        )),
      ),
    );
  }
}
