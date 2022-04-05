import 'package:flutter/material.dart';

class ColorStyle with ChangeNotifier{


    var lightGray = const Color.fromRGBO(171, 171, 171, 1);
    var darkGray = const Color.fromRGBO(69,69,69, 1);
    var gold = const Color.fromRGBO(207, 163, 74, 1);
    var backgroundDark = const Color.fromRGBO(49, 53, 58, 1);
    var w = Colors.white;
    var hintDark = const Color.fromRGBO(171, 171, 171, 1);
    var barDarkApp = Color.fromRGBO(38,42,45, 1);
    var color1 = Color.fromRGBO(36,41,62,1);

Color get  barDarkApp1{
    return Color.fromRGBO(38,42,45, 1);
}

    // Light Theme

    var barLightApp = Color.fromRGBO(22, 105, 122, 1) ;

    void ChangeToDarkMode (){
        print('this is dark mode') ;


        barLightApp = barLightApp ==  Color.fromRGBO(22, 105, 122, 1)
            ? barDarkApp
            : barLightApp;
        notifyListeners();
    }
    void ChangeToLightMode (){
        print('this is Light mode') ;
        barDarkApp = barDarkApp == Color.fromRGBO(38,42,45, 1)
            ? barLightApp
            : barDarkApp;
        notifyListeners();
    }

    bool get  ChangeMode{
        return false ;

    }
}

