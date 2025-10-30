// import 'package:flutter/material.dart';
// import 'package:shreyanshadminportal/extentions/mediaquery.dart';
//
// import '../items/buildmenuitems.dart';
// import '../items/workspaceexpitem.dart';
//
// class leftsidebarexp extends StatefulWidget {
//   const leftsidebarexp({super.key});
//
//   @override
//   State<leftsidebarexp> createState() => _leftsidebarexpState();
// }
//
// class _leftsidebarexpState extends State<leftsidebarexp> {
// bool _isExpanded = false;
// int _selectedIndex=0;
//
//
//   final List<String> leftSideMenu = [
//     'Home',
//     'Employees',
//     'Attendance',
//     'Summary',
//     'Information',
//
//   ];
//
//
// final List<IconData> leftSideIcons = [
//   Icons.home, Icons.people, Icons.calendar_today, Icons.summarize, Icons.info,
// ];
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: context.width*0.17,
//       color: const Color(0xFFFFFFFF),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Container(
//             width: double.infinity,
//             padding: const EdgeInsets.all(24.0),
//             child: Image.asset(
//               'assets/images/chanel.png', // Add company logo
//               height: context.height*0.05,
//               alignment: Alignment.center,
//               fit: BoxFit.contain,
//             ),
//           ),
//           Divider(color: Color(0xFF0C0C0C), height: 1),
//
//           // Company Logo
//           Container(
//             width: double.infinity,
//             padding: const EdgeInsets.all(24.0),
//             child: Column(
//               children:[
//                 Image.asset(
//                 'assets/images/peter.png', // Add company logo
//                 height: 50,
//                 fit: BoxFit.contain,
//               ),
//                 const SizedBox(height: 2,),
//                 Text("data"),
//                 const SizedBox(height: 6),
//                //creating text button
//             TextButton(
//               onPressed: () {
//                   // Add functionality for the admin button here
//                   print('Admin button clicked');
//                 },
//                 style: TextButton.styleFrom(
//                   //foregroundColor: Colors.white,
//                   backgroundColor: Colors.white,
//
//                   shape: RoundedRectangleBorder(
//                     side: BorderSide(color: Color(0xFF000000)),
//
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                   padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//                   minimumSize: Size(0, 0), // Allows the button to be compact
//                 ),
//               child: Text("admin",style: TextStyle(color: Color(0xFF000000)),),
//             ),
//               ]
//             ),
//           ),
//
//           const Divider(color: Color(0xFF0C0C0C), height: 1),
//
//            SizedBox(height: context.height*0.02),
//
//           // Menu Items
//           Expanded(
//             child: SingleChildScrollView(
//               child: Column(
//                 children: [
//                   for (int i = 0; i < leftSideMenu.length; i++)
//                     buildmenuitem(
//                       index: i,
//                       icon: leftSideIcons[i],
//                       title: leftSideMenu[i],
//                       isSelected: _selectedIndex == i, // Pass the selected status
//                       onTap: () {
//                         setState(() {
//                           _selectedIndex = i; // Update the selected index here
//                         });
//                         // You can add other actions here, e.g., navigation or calling a function
//
//                       },
//                     ),
//                   // buildmenuitem(index: 0,icon:  Icons.home,title:  leftSideMenu[0],onTap: (){},),
//                   // buildmenuitem(index: 1,icon:  Icons.people ,title:  leftSideMenu[1]),
//                   // buildmenuitem(index: 2,icon:  Icons.calendar_today,title:  leftSideMenu[2]),
//                   // buildmenuitem(index: 3,icon:  Icons.summarize,title:  leftSideMenu[3]),
//                   // buildmenuitem(index: 4,icon:  Icons.info,title:  leftSideMenu[4]),
//
//                    SizedBox(height: context.width*0.024),
//
//                   // Workspaces Section
//                   Padding(
//                     padding:  EdgeInsets.symmetric(horizontal: context.width*0.0032),
//                     child: Padding(
//                       padding: EdgeInsets.only(left:context.width*0.0016),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Text(
//                             'WORKSPACES',
//                             style: TextStyle(
//                               color: Colors.black,
//                               fontSize: context.height*0.04,
//                               fontWeight: FontWeight.w600,
//                               letterSpacing: 1.2,
//                             ),
//                           ),
//                           Container(
//                             padding: const EdgeInsets.all(4),
//                             decoration: BoxDecoration(
//                               color:  Colors.transparent,
//                               borderRadius: BorderRadius.circular(4),
//                             ),
//                             child:  InkWell(
//                               onTap: (){setState(() {
//                                 _isExpanded = !_isExpanded;
//                               });},
//                               child: Icon(Icons.add,size: context.height*0.04,)
//
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//
//
//
//                   const SizedBox(height: 0),
//
//                   if(_isExpanded)
//                   Padding(
//                     padding: EdgeInsets.only(left:context.width*0.032, top: 4.0),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         workspaceexpitem(title: 'Adstacks'),
//                         workspaceexpitem(title: 'Finance'),
//                       ],
//                     ),
//                   ),
//                   // _buildExpandableMenuItem(
//                   //   5,
//                   //   Icons.layers,
//                   //   'Adstacks',
//                   //   _isAdstacksExpanded,
//                   //       () => setState(() => _isAdstacksExpanded = !_isAdstacksExpanded),
//                   // ),
//                   //
//                   // _buildExpandableMenuItem(
//                   //   6,
//                   //   Icons.account_balance,
//                   //   'Finance',
//                   //   _isFinanceExpanded,
//                   //       () => setState(() => _isFinanceExpanded = !_isFinanceExpanded),
//                   // ),
//
//                    SizedBox(height: context.height*0.08),
//
//
//                   Padding(
//                     padding: EdgeInsets.only(left: context.width*0.033),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Row(
//                           children: [
//                             Icon(Icons.settings, size: context.height*0.002),
//                             SizedBox(width: 8),
//                             Text(
//                               'Settings',
//                               style: TextStyle(color: Colors.black),
//                             ),
//                           ],
//                         ),
//                         const SizedBox(height: 12),
//                         Row(
//                           children: [
//                             Icon(Icons.logout, size:context.height*0.002),
//                             SizedBox(width: 8),
//                             Text(
//                               'Logout',
//                               style: TextStyle(color: Colors.black),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   )
//
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:shreyanshadminportal/extentions/mediaquery.dart';

import '../items/buildmenuitems.dart';
import '../items/workspaceexpitem.dart';

class leftsidebarexp extends StatefulWidget {
  const leftsidebarexp({super.key});

  @override
  State<leftsidebarexp> createState() => _leftsidebarexpState();
}

class _leftsidebarexpState extends State<leftsidebarexp> {
  bool _isExpanded = false;
  int _selectedIndex=0;


  final List<String> leftSideMenu = [
    'Home',
    'Employees',
    'Attendance',
    'Summary',
    'Information',

  ];


  final List<IconData> leftSideIcons = [
    Icons.home, Icons.people, Icons.calendar_today, Icons.summarize, Icons.info,
  ];


  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width*0.17,
      color: const Color(0xFFFFFFFF),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(context.width * 0.0125),
            child: Image.asset(
              'assets/images/edge.png', // Add company logo
              height: context.height*0.05,
              alignment: Alignment.center,
              fit: BoxFit.contain,
            ),
          ),
          Divider(color: Color(0xFF0C0C0C), height: context.height * 0.001),

          // Company Logo
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(context.width * 0.0125),
            child: Column(
                children:[
                  Image.asset(
                    'assets/images/peter.png', // Add company logo
                    height: context.height * 0.065,
                    fit: BoxFit.contain,
                  ),
                  SizedBox(height: context.height * 0.002),
                  Text("data"),
                  SizedBox(height: context.height * 0.008),
                  //creating text button
                  TextButton(
                    onPressed: () {
                      // Add functionality for the admin button here
                      print('Admin button clicked');
                    },
                    style: TextButton.styleFrom(
                      //foregroundColor: Colors.white,
                      backgroundColor: Colors.white,

                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Color(0xFF000000)),

                        borderRadius: BorderRadius.circular(context.width * 0.004),
                      ),
                      padding: EdgeInsets.symmetric(
                          horizontal: context.width * 0.01,
                          vertical: context.height * 0.013
                      ),
                      minimumSize: Size(0, 0), // Allows the button to be compact
                    ),
                    child: Text("admin",style: TextStyle(color: Color(0xFF000000)),),
                  ),
                ]
            ),
          ),

          Divider(color: Color(0xFF0C0C0C), height: context.height * 0.001),

          SizedBox(height: context.height*0.02),

          // Menu Items
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  for (int i = 0; i < leftSideMenu.length; i++)
                    buildmenuitem(
                      index: i,
                      icon: leftSideIcons[i],
                      title: leftSideMenu[i],
                      isSelected: _selectedIndex == i, // Pass the selected status
                      onTap: () {
                        setState(() {
                          _selectedIndex = i; // Update the selected index here
                        });
                        // You can add other actions here, e.g., navigation or calling a function

                      },
                    ),
                  // buildmenuitem(index: 0,icon:  Icons.home,title:  leftSideMenu[0],onTap: (){},),
                  // buildmenuitem(index: 1,icon:  Icons.people ,title:  leftSideMenu[1]),
                  // buildmenuitem(index: 2,icon:  Icons.calendar_today,title:  leftSideMenu[2]),
                  // buildmenuitem(index: 3,icon:  Icons.summarize,title:  leftSideMenu[3]),
                  // buildmenuitem(index: 4,icon:  Icons.info,title:  leftSideMenu[4]),

                  SizedBox(height: context.height * 0.03),

                  // Workspaces Section
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: context.width*0.0032),
                    child: Padding(
                      padding: EdgeInsets.only(left:context.width*0.0016),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'WORKSPACES',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: context.height*0.018,
                              fontWeight: FontWeight.w600,
                              letterSpacing: context.width * 0.0006,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(context.width * 0.002),
                            decoration: BoxDecoration(
                              color:  Colors.transparent,
                              borderRadius: BorderRadius.circular(context.width * 0.002),
                            ),
                            child:  InkWell(
                                onTap: (){setState(() {
                                  _isExpanded = !_isExpanded;
                                });},
                                child: Icon(Icons.add, size: context.height*0.03)

                            ),
                          ),
                        ],
                      ),
                    ),
                  ),



                  SizedBox(height: 0),

                  if(_isExpanded)
                    Padding(
                      padding: EdgeInsets.only(left:context.width*0.032, top: context.height * 0.005),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          workspaceexpitem(title: 'Adstacks'),
                          workspaceexpitem(title: 'Finance'),
                        ],
                      ),
                    ),
                  // _buildExpandableMenuItem(
                  //   5,
                  //   Icons.layers,
                  //   'Adstacks',
                  //   _isAdstacksExpanded,
                  //       () => setState(() => _isAdstacksExpanded = !_isAdstacksExpanded),
                  // ),
                  //
                  // _buildExpandableMenuItem(
                  //   6,
                  //   Icons.account_balance,
                  //   'Finance',
                  //   _isFinanceExpanded,
                  //       () => setState(() => _isFinanceExpanded = !_isFinanceExpanded),
                  // ),

                  SizedBox(height: context.height*0.08),


                  Padding(
                    padding: EdgeInsets.only(left: context.width*0.033),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.settings, size: context.height*0.025),
                            SizedBox(width: context.width * 0.004),
                            Text(
                              'Settings',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: context.height * 0.02,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: context.height * 0.015),
                        Row(
                          children: [
                            Icon(Icons.logout, size: context.height*0.025),
                            SizedBox(width: context.width * 0.004),
                            Text(
                              'Logout',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: context.height * 0.02,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}