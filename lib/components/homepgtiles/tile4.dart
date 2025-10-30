import 'package:flutter/material.dart';
import 'package:shreyanshadminportal/extentions/mediaquery.dart';

class Tile4 extends StatelessWidget {
  const Tile4({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // Keep the size and margin as you defined
      width: context.width * 0.5,
      height: context.height * 0.26,
      margin: const EdgeInsets.all(16),

      child: ClipRRect(
        // This widget clips its child (the Image) with a border radius.
        borderRadius: BorderRadius.circular(16),
        child: Image.asset(
          //i was not able to correctly plot the graph and was not able to understand what data
          //says and how to plot it.
          //hence i added the image file , if given the metrics correctly
          // i will surely make it with widget
          'assets/images/hometile4.png',
          // BoxFit.cover is correct, but we'll ensure it respects the rounded corners.
          fit: BoxFit.fill,

          // alignment: Alignment.center,
        ),
      ),
    );
  }
}
