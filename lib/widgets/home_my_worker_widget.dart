import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ibdaa/models/my_worker_provider.dart';
import 'package:provider/provider.dart';
import '../style/colorapp.dart';
class HomeMyWorkerWidget extends StatelessWidget {
  const HomeMyWorkerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              children: const[
                Padding(
                  padding: const EdgeInsets.only(right:  17.0 ,top: 7 ),
                  child: Text('الخــدمــات' ,textAlign: TextAlign.right, style: TextStyle(fontSize: 20), ),
                ),
              ],
            ),
            Divider(thickness: 1 ,indent: 10 ,endIndent: 200),
            Container(
              height: 283,
              width: double.infinity,
              child:Consumer<MyWorkerProvider>(
                  builder: (context, value, child) =>  ListView.builder(

                  scrollDirection: Axis.horizontal,
                  itemCount: value.myworker.length,
                  itemBuilder: (ctx , i )=>   Container(
                      height: 300,
                      width: 200,
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Card(
                        elevation: 20,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Container(
                                width: 140,
                                height: 140,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Stack(
                                    children: [
                                      Container(
                                        width: 140,
                                        height: 140,
                                        child: Image.network(
                                            value.myworker[i].imgUrl,
                                            fit: BoxFit.cover),
                                      ),
                                      Container(
                                          margin: EdgeInsets.all(5),
                                          decoration: BoxDecoration(
                                            color: ColorStyle().color1,
                                            borderRadius: BorderRadius.circular(1000) ,
                                          ),
                                          child: IconButton(onPressed: (){}, icon: Icon(Icons.favorite ,color: Colors.white,)))
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 12.0, vertical: 6),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'كهربائي منازل',
                                          textAlign: TextAlign.start,
                                          style:
                                          TextStyle(fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          'وصف قصير عن الكهربائي',
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 13),
                                        ),
                                        Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.symmetric(vertical: 6.0 ,horizontal: 0),
                                              child: Text(
                                                '0776806499',
                                                textAlign: TextAlign.start,
                                                style:
                                                TextStyle(fontWeight: FontWeight.bold),
                                              ),
                                            ),
                                            SizedBox(width: 3),
                                            IconButton(onPressed: (){}, icon: Icon(Icons.phone))
                                          ],
                                        ),
                                      ],
                                    )),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ) ),

            ),
            Container(
              margin: EdgeInsets.all(15),
              height: 50,
              width: double.infinity,
              child:Consumer<MyWorkerProvider>(
                builder: (context, value, child) => ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: value.myworker.length,
                  itemBuilder: (ctx , i )=> Container(
                    width: 60 ,
                    height: 60,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(value.myworker[i].imgUrl),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right:  17.0 ,top: 2 ),
              child: Text('الخــدمــات' ,textAlign: TextAlign.right, style: TextStyle(fontSize: 20), ),
            ),
            Container(
              height: 160,
              width: double.infinity,
              child:Consumer<MyWorkerProvider>(
                  builder: (context, value, child) => ListView.builder(


                        scrollDirection: Axis.horizontal,
                        itemCount: value.myworker.length,
                        itemBuilder: (ctx , i )=> Card(
                          elevation: 20,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,

                            children: [
                              Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 5.0, vertical: 0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        value.myworker[i].name,
                                        textAlign: TextAlign.start,
                                        style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        'وصف قصير عن الكهربائي',
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 13),
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.symmetric(vertical: 6.0 ,horizontal: 0),
                                            child: Text(
                                              '0776806499',
                                              textAlign: TextAlign.start,
                                              style:
                                              TextStyle(fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          SizedBox(width: 3),
                                          IconButton(onPressed: (){}, icon: Icon(Icons.phone))
                                        ],
                                      ),
                                    ],
                                  )),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,

                                children: [

                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,

                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Container(
                                      width: 140,
                                      height: 100,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Stack(
                                          children: [
                                            Container(
                                              width: 140,
                                              height: 140,
                                              child: Image.network(
                                                  'https://cdn.pixabay.com/photo/2017/03/28/12/10/chairs-2181947_960_720.jpg',
                                                  fit: BoxFit.cover),
                                            ),
                                            Container(
                                                margin: EdgeInsets.all(5),
                                                decoration: BoxDecoration(
                                                  color: ColorStyle().color1.withOpacity(0.7),
                                                  borderRadius: BorderRadius.circular(1000) ,
                                                ),
                                                child: IconButton(onPressed: (){}, icon: Icon(Icons.favorite ,color: Colors.white,)))
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

  ]) ),







    );
  }
}
