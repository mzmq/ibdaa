import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
class SlideAnimationList extends StatelessWidget {
  dynamic i ;

  dynamic page ;
  dynamic getList ;

   SlideAnimationList({Key? key , required this.i , required this.getList , required this.page}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  AnimationConfiguration.staggeredGrid(
        position: i,
        duration: Duration(milliseconds: 375),
        columnCount: getList.length,
        child: SlideAnimation(
            horizontalOffset: 100,
            child: FadeInAnimation(
                duration: Duration(milliseconds: 30),
                curve: Curves.ease,
                delay: Duration(milliseconds: 30),
                child: page)));
  }
}
