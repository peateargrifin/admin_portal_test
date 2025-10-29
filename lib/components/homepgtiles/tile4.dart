import 'package:flutter/material.dart';
import 'package:shreyanshadminportal/extentions/mediaquery.dart';

class Tile4 extends StatelessWidget {
  const Tile4({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // Keep the size and margin as you defined
      width: context.width * 0.6,
      height: context.height * 0.2,
      margin: const EdgeInsets.all(16),
      // The decoration is no longer needed here, as ClipRRect will handle the shape
      child: ClipRRect(
        // This widget clips its child (the Image) with a border radius.
        borderRadius: BorderRadius.circular(16),
        child: Image.asset(
          'assets/images/hometile4.png',
          // BoxFit.cover is correct, but we'll ensure it respects the rounded corners.
          fit: BoxFit.contain,
          // The alignment property is still useful if the image aspect ratio differs.
          // Alignment.center is a safe default.
          alignment: Alignment.center,
        ),
      ),
    );
  }
}
