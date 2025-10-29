import 'package:flutter/material.dart';

import '../components/leftsidebarexp.dart';
import '../components/rightpanel.dart';
import '../components/topappbarexp.dart';
import '../pages/home.dart';
class expandedLayout extends StatefulWidget {
  const expandedLayout({super.key});

  @override
  State<expandedLayout> createState() => _expandedLayoutState();
}

class _expandedLayoutState extends State<expandedLayout> {





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:Row(
        children: [
          leftsidebarexp(),

          Expanded(
            flex: 3,
            child: Column(
              children: [
                topappbarexp(context: context),
                Expanded(
                  child: home(),
                ),
              ],
            ),
          ),

         // const SizedBox(height: 30),






            //rightpanel(),



          //rightpanel()


        ],
      ) ,

    );
  }
}
