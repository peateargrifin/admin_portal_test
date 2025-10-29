import 'package:flutter/material.dart';
import 'package:shreyanshadminportal/extentions/mediaquery.dart';

class workspaceexpitem extends StatelessWidget {
  final String title;

  const workspaceexpitem({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: context.width*0.0032,
          top: context.height * 0.005,
          bottom: context.height * 0.005
      ),
      child: Row(
        children: [


          Text(
            title,
            style: TextStyle(
              color: Colors.black,
              fontSize: context.height * 0.018,
            ),
          ),
          SizedBox(width:title=='Adstacks'? context.width*0.039:context.width*0.045),
          Icon(Icons.keyboard_arrow_down, color: Colors.black, size: context.height*0.02),
        ],
      ),
    );
  }
}