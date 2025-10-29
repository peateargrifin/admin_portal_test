// import 'package:flutter/material.dart';
// import 'package:shreyanshadminportal/extentions/mediaquery.dart';
//
// class Tile2 extends StatefulWidget {
//   const Tile2({super.key});
//
//   @override
//   State<Tile2> createState() => _Tile2State();
// }
//
// class _Tile2State extends State<Tile2> {
//   int? selectedTile;
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: context.width * 0.25,
//       height: context.height*0.35,
//       padding: const EdgeInsets.all(12),
//       margin: const EdgeInsets.all(6),
//       decoration: BoxDecoration(
//         color: const Color(0xFF0A1628),
//         borderRadius: BorderRadius.circular(16),
//       ),
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           const Text(
//             'ALL PROJECTS',
//             style: TextStyle(
//               color: Colors.white,
//               fontSize: 14,
//               fontWeight: FontWeight.bold,
//               letterSpacing: 1.2,
//             ),
//           ),
//           const SizedBox(height: 12),
//           _buildProjectTile(0),
//           const SizedBox(height: 10),
//           _buildProjectTile(1),
//           const SizedBox(height: 10),
//           _buildProjectTile(2),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildProjectTile(int index) {
//     bool isSelected = selectedTile == index;
//
//     return GestureDetector(
//       onTap: () {
//         setState(() {
//           selectedTile = index;
//         });
//       },
//       child: Container(
//         height: 60,
//         padding: const EdgeInsets.all(10),
//         decoration: BoxDecoration(
//           color: isSelected
//               ? Colors.red.withOpacity(0.3)
//               : Colors.white.withOpacity(0.1),
//           borderRadius: BorderRadius.circular(12),
//           border: Border.all(
//             color: isSelected ? Colors.red : Colors.transparent,
//             width: 1.5,
//           ),
//         ),
//         child: Row(
//           children: [
//             // Image - More squared
//             ClipRRect(
//               borderRadius: BorderRadius.circular(8),
//               child: Image.asset(
//                 'assets/images/people.png',
//                 width: 35,
//                 height: 35,
//                 fit: BoxFit.cover,
//               ),
//             ),
//             const SizedBox(width: 10),
//             // Content
//             Expanded(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   // Title with edit icon
//                   Row(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Expanded(
//                         child: Text(
//                           'TECHNOLOGY BEHIND BLOCKCHAIN',
//                           style: const TextStyle(
//                             color: Colors.white,
//                             fontSize: 10,
//                             fontWeight: FontWeight.w600,
//                             height: 1.2,
//                           ),
//                           maxLines: 2,
//                           overflow: TextOverflow.ellipsis,
//                         ),
//                       ),
//                       const SizedBox(width: 4),
//                       const Icon(
//                         Icons.edit,
//                         color: Colors.white70,
//                         size: 14,
//                       ),
//                     ],
//                   ),
//                   // Project number and see more
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text(
//                         'Project #${index + 1}',
//                         style: const TextStyle(
//                           color: Colors.white60,
//                           fontSize: 9,
//                         ),
//                       ),
//                       GestureDetector(
//                         onTap: () => print('See more clicked for project ${index + 1}'),
//                         child: const Text(
//                           'See More',
//                           style: TextStyle(
//                             color: Colors.blue,
//                             fontSize: 9,
//                             fontWeight: FontWeight.w600,
//                             decoration: TextDecoration.underline,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:shreyanshadminportal/extentions/mediaquery.dart';

class Tile2 extends StatefulWidget {
  const Tile2({super.key});

  @override
  State<Tile2> createState() => _Tile2State();
}

class _Tile2State extends State<Tile2> {
  int? selectedTile;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width * 0.25,
      height: context.height*0.35,
      padding: EdgeInsets.all(context.width * 0.006),
      margin: EdgeInsets.all(context.width * 0.003),
      decoration: BoxDecoration(
        color: const Color(0xFF0A1628),
        borderRadius: BorderRadius.circular(context.width * 0.008),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'ALL PROJECTS',
            style: TextStyle(
              color: Colors.white,
              fontSize: context.height * 0.018,
              fontWeight: FontWeight.bold,
              letterSpacing: context.width * 0.0006,
            ),
          ),
          SizedBox(height: context.height * 0.015),
          _buildProjectTile(0),
          SizedBox(height: context.height * 0.013),
          _buildProjectTile(1),
          SizedBox(height: context.height * 0.013),
          _buildProjectTile(2),
        ],
      ),
    );
  }

  Widget _buildProjectTile(int index) {
    bool isSelected = selectedTile == index;

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedTile = index;
        });
      },
      child: Container(
        height: context.height * 0.078,
        padding: EdgeInsets.all(context.width * 0.005),
        decoration: BoxDecoration(
          color: isSelected
              ? Colors.red.withOpacity(0.3)
              : Colors.white.withOpacity(0.1),
          borderRadius: BorderRadius.circular(context.width * 0.006),
          border: Border.all(
            color: isSelected ? Colors.red : Colors.transparent,
            width: context.width * 0.0008,
          ),
        ),
        child: Row(
          children: [
            // Image - More squared
            ClipRRect(
              borderRadius: BorderRadius.circular(context.width * 0.004),
              child: Image.asset(
                'assets/images/people.png',
                width: context.height * 0.045,
                height: context.height * 0.045,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: context.width * 0.005),
            // Content
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Title with edit icon
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          'TECHNOLOGY BEHIND BLOCKCHAIN',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: context.height * 0.013,
                            fontWeight: FontWeight.w600,
                            height: 1.2,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      SizedBox(width: context.width * 0.002),
                      Icon(
                        Icons.edit,
                        color: Colors.white70,
                        size: context.height * 0.018,
                      ),
                    ],
                  ),
                  // Project number and see more
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Project #${index + 1}',
                        style: TextStyle(
                          color: Colors.white60,
                          fontSize: context.height * 0.012,
                        ),
                      ),
                      GestureDetector(
                        onTap: () => print('See more clicked for project ${index + 1}'),
                        child: Text(
                          'See More',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: context.height * 0.012,
                            fontWeight: FontWeight.w600,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}