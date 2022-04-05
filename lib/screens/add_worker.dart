import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ibdaa/widgets/drawer.dart';
import 'package:ibdaa/style/colorapp.dart';
import 'package:intl/intl.dart';
import 'package:image_picker/image_picker.dart';

import 'login.dart';

class AddWorker extends StatefulWidget {
  const AddWorker({Key? key}) : super(key: key);

  @override
  State<AddWorker> createState() => _AddWorkerState();
}

Color gold = ColorStyle().gold;

Color backgroundDark = ColorStyle().backgroundDark;

Color hintDark = ColorStyle().hintDark;

Color lightGray = ColorStyle().lightGray;

Color w = ColorStyle().w;

class _AddWorkerState extends State<AddWorker> {
  DateTime _SelectDate = DateTime.now();

  void _datePiker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1990),
      lastDate: DateTime.now(),
    ).then((value) {
      if (value == null) {
        return;
      }

      setState(() {
        _SelectDate = value;
      });
    });
  }

  final ImagePicker _picker = ImagePicker();
  File? pikedImagenew;

  bool check = false;

  getImg() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
//-----------------------3)check image null ?
    if (image == null) {
      return;
    } else {
      setState(() {
        check = true;
      });
    }
    setState(() {
//-----------------------3-2) assign value to File
      pikedImagenew = File(image.path);
      print(pikedImagenew);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundDark,

      appBar: AppBar(
        backgroundColor: ColorStyle().darkGray,
        title: const Text('اضافة عامل الى ابداع'),
      ),
      body: Form(
        child: ListView(
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    check == false
                        ? CircleAvatar(

                            backgroundImage:
                                AssetImage('assets/images/usergold.png'),
                            radius: 70,
                          )
                        : CircleAvatar(
                            backgroundImage: pikedImagenew == null
                                ? null
                                : FileImage(pikedImagenew!),
                            radius: 70,
                          ),
                    Container(
                        margin: EdgeInsets.only(top: 80, left: 90),
                        child: IconButton(
                            onPressed: () {
                              getImg();
                            },
                            icon: Icon(
                              Icons.add_a_photo_rounded,
                              color: Colors.white,
                              size: 45,
                            ))),
                  ],
                ),
              ],
            ),
            buildContainer(
                maxLines: 1,
                maxLength: 35,
                labelName: 'الاسم الاول',
                hintName: 'ادخل المقطع الاول من اسمك  ',
                IconFeild: Icon(
                  Icons.person_rounded,
                  color: gold,
                ),
                hintDark: hintDark,
                insideBtn: gold,
                lightGray: lightGray,
                keyboardType: TextInputType.name,
                w: w,
                visi: noVis ,
            ),
            buildContainer(
              maxLines: 1,
              maxLength: 35,
              labelName: 'الاسم الاخير',
              hintName: 'ادخل المقطع الثاني من اسمك  ',
              IconFeild: Icon(
                Icons.person_rounded,
                color: gold,
              ),
              hintDark: hintDark,
              insideBtn: gold,
              lightGray: lightGray,
              keyboardType: TextInputType.name,
              w: w,
              visi: noVis ,
            ),
            buildContainer(
                maxLines: 1,
                maxLength: 20,
                labelName: 'رقم الهاتف',
                hintName: '07x xxxx xxx ',
                IconFeild: Icon(
                  Icons.phone,
                  color: gold,
                ),
                keyboardType: TextInputType.phone,
                hintDark: hintDark,
                insideBtn: gold,
                lightGray: lightGray,
                w: w,
                visi: noVis),
            buildContainer(
              keyboardType: TextInputType.visiblePassword,
                maxLines: 1,
                maxLength: 25,
                labelName: 'كلمة المرور',
                hintName: 'الرجاء ادخال كلمة المرور',
                IconFeild: Icon(
                  Icons.lock,
                  color: gold,
                ),
                hintDark: hintDark,
                Suf: IconButton(
                    onPressed: () {
                      setState(() {
                        iconv = !iconv;
                        print(iconv);
                      });
                    },
                    icon: Icon(
                      iconv ? Icons.visibility : Icons.visibility_off_outlined,
                      color: gold,
                    )),
                insideBtn: gold,
                lightGray: lightGray,
                w: w,
                visi: iconv),
            buildContainer(
                maxLines: 1,
                maxLength: 25,
                keyboardType: TextInputType.visiblePassword,
                labelName: 'اعادة كلمة المرور',
                hintName: 'الرجاء اعادة كتابة كلمة المرور ',
                IconFeild: Icon(
                  Icons.lock,
                  color: gold,
                ),
                hintDark: hintDark,
                Suf: IconButton(
                    onPressed: () {
                      setState(() {
                        iconv = !iconv;
                        print(iconv);
                      });
                    },
                    icon: Icon(
                      iconv ? Icons.visibility : Icons.visibility_off_outlined,
                      color: gold,
                    )),
                insideBtn: gold,
                lightGray: lightGray,
                w: w,
                visi: iconv),
            buildContainer(
                maxLines: 1,
                maxLength: 90,
                keyboardType: TextInputType.streetAddress,
                labelName: 'العنوان',
                hintName: 'ادخل عنوان سكنك بالكامل',
                IconFeild: Icon(
                  Icons.person_pin_circle_rounded,
                  color: gold,
                ),
                hintDark: hintDark,
                insideBtn: gold,
                lightGray: lightGray,
                w: w,
                visi: noVis),
            buildContainer(
                maxLines: 1,
                maxLength: 2,
                keyboardType: TextInputType.text,
                labelName: 'الخبرة',
                suffixText: 'سنوات',
                hintName: 'ادخل سنوات الخبرة ',
                IconFeild: Icon(
                  Icons.watch_later_rounded,
                  color: gold,
                ),
                hintDark: hintDark,
                insideBtn: gold,
                lightGray: lightGray,
                w: w,
                visi: noVis),
            buildContainer(
                maxLines: 1,
                maxLength: 30,
                keyboardType: TextInputType.text,
                labelName: 'الجنسية',
                hintName: 'ما هي جنسيتك ؟ ',
                IconFeild: Icon(
                  Icons.public_rounded,
                  color: gold,
                ),
                hintDark: hintDark,
                insideBtn: gold,
                lightGray: lightGray,
                w: w,
                visi: noVis),
            buildContainer(
                maxLines: 1,
                maxLength: 10,
                labelName: 'تاريخ الميلاد',
                keyboardType: TextInputType.datetime,
                hintName: '${DateFormat('dd/MM/yyyy').format(_SelectDate)} ',
                IconFeild: Icon(
                  Icons.calendar_today_rounded,
                  color: gold,
                ),
                hintDark: hintDark,
                insideBtn: gold,
                lightGray: lightGray,
                Suf: IconButton(
                    onPressed: _datePiker,
                    icon: Icon(
                      Icons.event_rounded,
                      color: gold,
                    )),
                w: w,
                visi: noVis),
            buildContainer2(
                maxLines: 4,
                maxLength: 500,
                keyboardType: TextInputType.text,
                labelName: 'الوصف',
                hintName: 'الرجاء ادخل بعض المعلومات عنك ',
                IconFeild: Icon(
                  Icons.description_rounded,
                  color: gold,
                ),
                hintDark: hintDark,
                insideBtn: gold,
                lightGray: lightGray,
                w: gold,
                visi: noVis),

            Container(
              padding: EdgeInsets.all(10),
              width: double.infinity,
              child: ElevatedButton.icon(onPressed: (){}, icon: Icon(Icons.save), label: Text('Save') , 
                style: ButtonStyle(
                  backgroundColor:MaterialStateProperty.all(gold) 
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
    IconButton? Suf,
    bool? visi,
    String? prefixText,
    String? suffixText,
    int? maxLength,
    int? maxLines,
    TextInputType? keyboardType ,
  }) {
    return Container(
        child: Padding(
      padding: EdgeInsets.only(left: 20, top: 5, bottom: 5, right: 20),
      child: TextField(
        maxLines: maxLines,
        maxLength: maxLength,
        style: TextStyle(color: insideBtn),
        decoration: InputDecoration(
            icon: IconFeild,
            prefixText: prefixText,
            suffixText: suffixText,
            prefixStyle: TextStyle(fontSize: 16, color: Colors.white),
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
        keyboardType: keyboardType,
        obscureText: visi!,
      ),
    ));
  }

  Container buildContainer2({
    required String labelName,
    required String hintName,
    required Icon IconFeild,
    Color? insideBtn,
    Color? w,
    Color? hintDark,
    Color? lightGray,
    IconButton? Suf,
    bool? visi,
    String? prefixText,
    String? suffixText,
    int? maxLength,
    int? maxLines,
    TextInputType? keyboardType,
  }) {
    return Container(
        child: Padding(
      padding: EdgeInsets.only(left: 20, top: 5, bottom: 5, right: 20),
      child: TextFormField(
        maxLines: maxLines,
        maxLength: maxLength,
        style: TextStyle(color: insideBtn),
        decoration: InputDecoration(
            icon: IconFeild,
            prefixText: prefixText,
            suffixText: suffixText,
            prefixStyle: TextStyle(fontSize: 16, color: Colors.white),
            labelText: labelName,
            labelStyle: TextStyle(fontSize: 17, color: w),
            hintText: hintName,
            suffixIcon: Suf,
            hintStyle: TextStyle(fontSize: 13, color: hintDark),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
              color: lightGray!,
            )),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
              color: insideBtn!,
            ))),
        keyboardType: keyboardType,
        obscureText: visi!,
      ),
    ));
  }
}
