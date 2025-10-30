import 'package:flutter/material.dart';
import 'package:shreyanshadminportal/extentions/mediaquery.dart';

class BirthdayTile extends StatelessWidget {
  //final String wishes;

  const BirthdayTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(
        horizontal: context.width * 0.0026,
        vertical: context.height * 0.01,
      ),
      padding: EdgeInsets.all(context.width * 0.006),
      decoration: BoxDecoration(
        color: Color(0xFF2D2D3D),
        borderRadius: BorderRadius.circular(context.width * 0.006),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Header with star emojis
          Text(
            '⭐ Today Birthday ⭐',
            style: TextStyle(
              color: Colors.white,
              fontSize: context.height * 0.017,
              fontWeight: FontWeight.w600,
            ),
          ),

          SizedBox(height: context.height * 0.015),

          // Profile images with cake emoji
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(context.width * 0.026),
                    child: Image.asset(
                      "assets/images/people.png",
                      width: context.height * 0.052,
                      height: context.height * 0.052,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    right: 0,
                    top: 0,
                    child: Text(
                      "🎂",
                      style: TextStyle(fontSize: context.height * 0.019),
                    ),
                  ),
                ],
              ),
              SizedBox(width: context.width * 0.002),
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(context.width * 0.026),
                    child: Image.asset(
                      "assets/images/people.png",
                      width: context.height * 0.052,
                      height: context.height * 0.052,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    right: 0,
                    top: 0,
                    child: Text(
                      "🎂",
                      style: TextStyle(fontSize: context.height * 0.019),
                    ),
                  ),
                ],
              ),
            ],
          ),

          SizedBox(height: context.height * 0.015),

          // Total count
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Total : ',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: context.height * 0.015,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: context.width * 0.005,
                  vertical: context.height * 0.004,
                ),
                decoration: BoxDecoration(
                  color: Color(0xFF3D3D4D),
                  borderRadius: BorderRadius.circular(context.width * 0.003),
                ),
                child: Text(
                  '2',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: context.height * 0.015,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),

          SizedBox(height: context.height * 0.013),

          // Send birthday wish button
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: context.height * 0.013),
            decoration: BoxDecoration(
              color: Color(0xFF6B5B95),
              borderRadius: BorderRadius.circular(context.width * 0.005),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.send,
                  color: Colors.white,
                  size: context.height * 0.021,
                ),
                SizedBox(width: context.width * 0.003),
                Text(
                  'BIRTHDAY WISH',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: context.height * 0.015,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
