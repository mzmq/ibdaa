import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ibdaa/screens/add_worker.dart';

import '../main.dart';

class TectSupport extends StatelessWidget {
  const TectSupport({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30  ),

                ),
                width: double.infinity,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Card(
                    color:barDark,
                    elevation: 10,
          child: Image.asset('assets/images/logo.png'),),
                ),
              )
      ),
          Expanded(
            flex: 2,
              child: Column(
                children: [
                  ListTile(title:Text('تواصل مع الدعم الفني' , style: TextStyle(fontSize: 27) ,textAlign: TextAlign.center) ,),
                  Divider(thickness: 1 , color: gold,),
                  ListTile(title: Text('رقم الهاتف') , trailing: IconButton(onPressed: (){}, icon: Icon(Icons.phone)), leading: Icon(Icons.person_outlined, color:  gold),),
                  ListTile(title: Text('عمان - طبربور') , trailing: IconButton(onPressed: (){}, icon: Icon(Icons.location_on)), leading: Icon(Icons.map , color: Colors.brown,),),
                  ListTile(title: Text('www.ibdaa.com') , trailing: IconButton(onPressed: (){}, icon: Icon(Icons.open_in_new)), leading: Icon(Icons.language , color: Colors.blue,),),
                  ListTile(title: Text('واتس اب') , trailing: IconButton(onPressed: (){}, icon: Icon(Icons.chevron_right)), leading: FaIcon(FontAwesomeIcons.whatsapp , color: Colors.green,),),
                  ListTile(title: Text('احمد ربك اني عملت هاي الصفحة بكفيك') , trailing: IconButton(onPressed: (){}, icon: Icon(Icons.pan_tool)), leading: Icon(Icons.pan_tool , color: Colors.black,),),
                ],
              )
      ),
        ],
      ),
    );
  }
}
