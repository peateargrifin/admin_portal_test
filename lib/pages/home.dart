import 'package:flutter/material.dart';
import 'package:shreyanshadminportal/components/homepgtiles/topproj.dart';
import 'package:shreyanshadminportal/components/rightpanel.dart';
import 'package:shreyanshadminportal/extentions/mediaquery.dart';

import '../components/homepgtiles/tile2.dart';
import '../components/homepgtiles/tile3.dart';
import '../components/homepgtiles/tile4.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Container(
            width: context.width * 0.65,
            color: Color(0xFFFAF9F6),
            child: Column(
              children: [
                // Tile 1 - Full width on top
                TopProj(),

                const SizedBox(height: 2),

                // Tile 2 and Tile 3 - Row with spacing
                Row(
                  children: [
                    SizedBox(width: context.width * 0.05),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0, right: 0.0),
                      child: Tile2(),
                    ),
                    // const SizedBox(width: 3),
                    Padding(
                      padding: const EdgeInsets.only(left: 0.0, right: 3.0),
                      child: Tile3(),
                    ),
                  ],
                ),

                const SizedBox(height: 2),

                // Tile 4 - Full width at bottom
                Tile4(),
              ],
            ),
          ),
          Expanded(child: rightpanel()),
          // rightpanel()
        ],
      ),
    );
  }
}
