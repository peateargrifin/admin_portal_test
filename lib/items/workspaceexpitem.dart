import 'package:flutter/material.dart';
import 'package:shreyanshadminportal/extentions/mediaquery.dart';

class workspaceexpitem extends StatelessWidget {
  final String title;

  const workspaceexpitem({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 32.0, top: 4.0, bottom: 4.0),
      child: Row(
        children: [


          Text(
            title,
            style:  TextStyle(
              color: Colors.black,
              fontSize: 14,
            ),
          ),
           SizedBox(width:title=='Adstacks'? context.width*0.039:context.width*0.043),
           Icon(Icons.keyboard_arrow_down, color: Colors.black, size: 18),
        ],
      ),
    );
  }
}