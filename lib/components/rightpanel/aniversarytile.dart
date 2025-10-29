// import 'package:flutter/material.dart';
//
// class AnivTile extends StatelessWidget {
//   //final String wishes;
//
//   const AnivTile({super.key });
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: double.infinity,
//       margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
//       padding: const EdgeInsets.all(7),
//       decoration: BoxDecoration(
//         color: Color(0xFF2D2D3D),
//         borderRadius: BorderRadius.circular(12),
//       ),
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           // Header with star emojis
//           Text(
//             '⭐ ANNIVERSARY ⭐',
//             style: TextStyle(
//               color: Colors.white,
//               fontSize: 13,
//               fontWeight: FontWeight.w600,
//             ),
//           ),
//
//           const SizedBox(height: 12),
//
//           // Profile images with cake emoji
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Stack(
//                 children: [
//                   ClipRRect(
//                     borderRadius: BorderRadius.circular(50),
//                     child: Image.asset(
//                       "assets/images/people.png",
//                       width: 40,
//                       height: 40,
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//
//                 ],
//               ),
//               SizedBox(width: 4),
//               Stack(
//                 children: [
//                   ClipRRect(
//                     borderRadius: BorderRadius.circular(50),
//                     child: Image.asset(
//                       "assets/images/people.png",
//                       width: 40,
//                       height: 40,
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//
//                 ],
//               ),
//               SizedBox(width: 4),
//
//               Stack(
//                 children: [
//                   ClipRRect(
//                     borderRadius: BorderRadius.circular(50),
//                     child: Image.asset(
//                       "assets/images/people.png",
//                       width: 40,
//                       height: 40,
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//
//                 ],
//               ),
//             ],
//           ),
//
//           const SizedBox(height: 12),
//
//           // Total count
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text(
//                 'Total : ',
//                 style: TextStyle(
//                   color: Colors.white70,
//                   fontSize: 12,
//                 ),
//               ),
//               Container(
//                 padding: const EdgeInsets.symmetric(
//                   horizontal: 10,
//                   vertical: 3,
//                 ),
//                 decoration: BoxDecoration(
//                   color: Color(0xFF3D3D4D),
//                   borderRadius: BorderRadius.circular(6),
//                 ),
//                 child: Text(
//                   '3',
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 12,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//
//           const SizedBox(height: 10),
//
//           // Send birthday wish button
//           Container(
//             width: double.infinity,
//             padding: const EdgeInsets.symmetric(vertical: 10),
//             decoration: BoxDecoration(
//               color: Color(0xFF6B5B95),
//               borderRadius: BorderRadius.circular(10),
//             ),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Icon(Icons.send, color: Colors.white, size: 16),
//                 const SizedBox(width: 6),
//                 Text(
//                   'ANNIVERSARY WISH',
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 12,
//                     fontWeight: FontWeight.w600,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:shreyanshadminportal/extentions/mediaquery.dart';

class AnivTile extends StatelessWidget {
  //final String wishes;

  const AnivTile({super.key });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(
          horizontal: context.width * 0.0026,
          vertical: context.height * 0.01
      ),
      padding: EdgeInsets.all(context.width * 0.0036),
      decoration: BoxDecoration(
        color: Color(0xFF2D2D3D),
        borderRadius: BorderRadius.circular(context.width * 0.006),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Header with star emojis
          Text(
            '⭐ ANNIVERSARY ⭐',
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
                  '3',
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
                    size: context.height * 0.021
                ),
                SizedBox(width: context.width * 0.003),
                Text(
                  'ANNIVERSARY WISH',
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