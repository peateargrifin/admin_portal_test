import 'package:flutter/material.dart';
import 'package:shreyanshadminportal/components/rightpanel.dart';
import 'package:shreyanshadminportal/extentions/mediaquery.dart';

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
          Container(width: context.width * 0.65, color: Color(0xFF71A1CD)),
          Expanded(child: rightpanel()),
         // rightpanel()
        ],
      ),
    );
  }
}
