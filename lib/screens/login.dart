import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../style/colorapp.dart';

import 'home.dart';

class loginApp extends StatefulWidget {
  const loginApp({Key? key}) : super(key: key);

  @override
  State<loginApp> createState() => _loginAppState();
}
bool iconvisibility = true ;
bool iconv = true ;
bool noVis = false ;
class _loginAppState extends State<loginApp> {
  @override
  Widget build(BuildContext context) {

Color gold =  ColorStyle().gold ;
Color backgroundDark =  ColorStyle().backgroundDark ;
Color hintDark =  ColorStyle().hintDark ;
Color lightGray =  ColorStyle().lightGray ;
Color barDark =  ColorStyle().barDark ;
Color w =  ColorStyle().w ;

    return Scaffold(
      body: Container(
        height: double.infinity,
        color: barDark,
        child: Column(
          children: [
            SizedBox(height: 30,) ,
            Expanded(
              flex: 1,
              child: Image.asset(
                'assets/images/logo.png',
                width: 400,
              ),
            ),
            Expanded(
              flex: 2,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text('Login' ,style: TextStyle(color: gold , fontSize: 25 , fontWeight: FontWeight.w300),),
                    buildContainer(
                      maxLength:8 ,
                        labelName: 'Phone Number',
                        prefixText: '07',
                        hintName: 'x xxxx xxx ',
                        IconFeild: Icon(
                          FontAwesomeIcons.user, color: gold,),
                        hintDark: hintDark,
                        insideBtn: gold,
                        lightGray: lightGray,
                        w: w,
                        visi: noVis
                    ),
                    buildContainer(
                      maxLength: 25,
                        labelName: 'Password',
                        hintName: 'Enter Your Password',
                        IconFeild: Icon(
                          FontAwesomeIcons.lock, color: gold,),
                        hintDark: hintDark,
                        Suf: IconButton(
                            onPressed: (){
                              setState(() {
                                iconv = !iconv ;
                                print(iconv) ;
                              });
                            },
                            icon: Icon(iconv? Icons.visibility :  Icons.visibility_off_outlined , color: gold,
                            )),
                        insideBtn: gold,
                        lightGray: lightGray,
                        w: w ,
                        visi: iconv
                    ),
                    ElevatedButton.icon(

                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>HomePage() ));
                      },
                      icon: Icon(FontAwesomeIcons.doorClosed),
                      label: Text('Login'),
                      style: ButtonStyle(
                        padding:MaterialStateProperty.all(EdgeInsets.only(left: 30 , right: 30)) ,
                        backgroundColor: MaterialStateProperty.all(gold)
                      )
                      ,),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container buildContainer({
    required String labelName,
    required String hintName,
    required Icon IconFeild,
    Color? insideBtn,
    Color? w,
    Color? hintDark,
    Color? lightGray,
    IconButton? Suf ,
    bool? visi  ,
    String? prefixText ,
    int? maxLength,
  }) {
    return Container(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: TextField(
            maxLength: maxLength,
            style: TextStyle(color: insideBtn  ),
            decoration: InputDecoration(

                icon: IconFeild,
                prefixText: prefixText,
                prefixStyle: TextStyle(fontSize: 16 , color: Colors.white) ,
                labelText: labelName,
                labelStyle: TextStyle(fontSize: 17, color: w),
                hintText: hintName,
                suffixIcon: Suf,
                hintStyle: TextStyle(fontSize: 13, color: hintDark),
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: lightGray!,
                    )),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: insideBtn!,
                    ))),
            keyboardType: TextInputType.text,
            obscureText: visi! ,

          ),
        ));
  }
}
