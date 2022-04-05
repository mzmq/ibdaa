import 'package:flutter/material.dart';
import 'package:ibdaa/style/colorapp.dart';

import '../widgets/drawer.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorStyle().barDarkApp,
        centerTitle: true,
        title: Text('Mohammad alqannas' ,style: TextStyle(fontSize: 15)),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [

            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  child: Positioned(
                    child: Stack(
                      children: [
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                              ),
                              child: Image.network(
                                  'https://cdn.pixabay.com/photo/2017/08/10/08/47/laptop-2620118_960_720.jpg'),
                            ),
                          ),
                        ),
                        Container(
                          child: Positioned(
                              left: 10,
                              bottom: 10,
                              child: Card(
                                  elevation: 10,
                                  color: Colors.white54,
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.photo_camera,
                                        color: Colors.black,
                                      )))),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Positioned(
                      bottom: 0,
                      child: Align(
                        alignment: Alignment.center,
                        child: Center(
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(1000),
                                border:
                                    Border.all(width: 4, color: Colors.white)),
                            child: Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                CircleAvatar(
                                  radius: 100,
                                  backgroundImage: NetworkImage(
                                      'https://mohammadalqannas.com/images/269861137_5042857319092733_4153595512844205636_n.jpg'),
                                ),
                                Positioned(
                                    right: 30,
                                    child: Container(
                                        width: 40,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              width: 2, color: Colors.black),
                                          borderRadius:
                                              BorderRadius.circular(1000),
                                          color: Colors.white70,
                                        ),
                                        child: Icon(
                                          Icons.photo_camera,
                                          color: Colors.black,
                                        )))
                              ],
                            ),
                          ),
                        ),
                      )),
                )
              ],
            ),

            SizedBox(height: 15),
            Text(
              'Mohammad alqannas',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.phone),
                    label: Text('اتصل الان'),
                    style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all(Colors.green))),
                SizedBox(
                  width: 15,
                ),
                ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.message),
                    label: Text('رسالة'),
                    style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all(Colors.blue))),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.settings),
                    label: Text('الذهاب الى الاعدادت'),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            ColorStyle().barDarkApp))),
                IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz))
              ],
            ),



            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text('130'),
                      Text('منتج'),

                    ],
                  ),
                  Column(
                    children: [
                      Text('10'),
                      Text('عمال'),

                    ],
                  ),
                  Column(
                    children: [
                      Text('15'),
                      Text('مشاريع'),

                    ],
                  ),
                ],
              ),
            ),
            Text('معرض الصور'),
            GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 6,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 2,
                    childAspectRatio: 3 / 2),
                itemBuilder: (ctx, i) => Image.asset('assets/images/Electrician.jpg')) ,
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                    color: ColorStyle().barDarkApp,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Text('المنتجات',
                          style: TextStyle(fontSize: 20, color: Colors.white)),
                    )),
                CircleAvatar(
                    backgroundColor: ColorStyle().barDarkApp,
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.add,
                          color: Colors.white,
                        )))
              ],
            ),
            GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 3,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 3 / 2),
                itemBuilder: (ctx, i) => buildGridTile()) ,
            Divider(),
          ],
        ),
      ),
    );
  }

  Padding buildGridTile() {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: GridTile(
        child: Image.asset(
          'assets/images/Electrician.jpg',
          height: 300,
        ),
        header: GridTileBar(
          backgroundColor: Colors.white10,
          leading: CircleAvatar(
              radius: 22,
              backgroundImage: NetworkImage(
                  'https://mohammadalqannas.com/images/269861137_5042857319092733_4153595512844205636_n.jpg')),
          title: Text('Mohammad alqannas',
              style: TextStyle(
                  fontSize: 18,
                  color: ColorStyle().barDarkApp,
                  fontWeight: FontWeight.bold)),
          subtitle: Text('mohamamd',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.black54,
                  fontWeight: FontWeight.normal)),
          trailing: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_horiz,
                color: Colors.black,
              )),
        ),
        footer: Card(
            color: Colors.white24,
            elevation: 10,
            child: GridTileBar(
                leading: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.favorite_border_rounded,
                      color: ColorStyle().barDarkApp,
                    )),
                title: Text('Product Name',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.normal)),
                trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.add_shopping_cart,
                      color: Colors.black,
                    )),
                backgroundColor: Colors.white10)),
      ),
    );
  }
}
