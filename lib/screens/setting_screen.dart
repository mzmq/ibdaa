import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:toggle_switch/toggle_switch.dart';

import 'package:ibdaa/widgets/drawer.dart';
import '../style/colorapp.dart';
import '../style/colorapp.dart';

class SettingScreen extends StatefulWidget {
  SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool _expand = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: ColorStyle().barDarkApp,
        title: Text('أعدادت التطبيق'),
      ),
      body:  Consumer<ColorStyle>(
        builder: (context, value, child) => Column(
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.palette_rounded , color: ColorStyle().barDarkApp,),
                    title: Text('الوان التطبيق'),
                    trailing: IconButton(
                      onPressed: () {
                        setState(() {
                          _expand = !_expand;
                        });
                      },
                      icon: Icon(_expand
                          ? Icons.expand_more_rounded
                          : Icons.expand_less_rounded),
                    ),
                  ),
                  _expand
                      ? Container(
                          child: null,
                        )
                      :  ToggleSwitch(

                      minWidth: 180.0,
                      initialLabelIndex: 1,
                      cornerRadius: 20.0,
                      activeFgColor: Colors.white,
                      inactiveBgColor: Colors.grey,
                      inactiveFgColor: Colors.white,
                      totalSwitches: 2,
                      labels: [' Light Mode ', ' Dark Mode '],
                      icons: [Icons.light_mode_rounded, Icons.dark_mode_rounded],
                      activeBgColors: [[ColorStyle().barLightApp],[ColorStyle().barDarkApp]],
                      onToggle: (index) {
                        if(index == 1 ){

                          value.ChangeToDarkMode();
                        }
                        else{

                         value.ChangeToLightMode() ;

                        }
                      },
                    ),


                ],
              ),
            ),
          ),
        ],
      ),
    ),);
  }
}
