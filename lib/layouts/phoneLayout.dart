import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:shreyanshadminportal/extentions/mediaquery.dart';

class MobileDashboardLayout extends StatefulWidget {
  const MobileDashboardLayout({super.key});

  @override
  State<MobileDashboardLayout> createState() => _MobileDashboardLayoutState();
}

class _MobileDashboardLayoutState extends State<MobileDashboardLayout> {
  int _selectedMenuIndex = 0;
  bool _isDrawerOpen = false;
  DateTime _selectedDate = DateTime.now();
  DateTime _focusedDate = DateTime.now();
  int? _selectedProjectTile;

  final List<String> menuItems = [
    'Home',
    'Employees',
    'Attendance',
    'Summary',
    'Information',
  ];

  final List<IconData> menuIcons = [
    Icons.home,
    Icons.people,
    Icons.calendar_today,
    Icons.summarize,
    Icons.info,
  ];

  final List<Map<String, dynamic>> creators = [
    {'handle': '@artist_one', 'artworks': '9821', 'rating': 4},
    {'handle': '@creator_two', 'artworks': '7654', 'rating': 5},
    {'handle': '@design_pro', 'artworks': '5432', 'rating': 3},
    {'handle': '@art_master', 'artworks': '8901', 'rating': 4},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      drawer: _buildMobileDrawer(),
      body: SafeArea(
        child: Column(
          children: [
            _buildMobileTopBar(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    _buildMobileHeader(),
                    _buildMobileCalendar(),
                    _buildMobileBirthdayTile(),
                    _buildMobileAnniversaryTile(),
                    _buildMobileTopProject(),
                    _buildMobileAllProjects(),
                    _buildMobileTopCreators(),
                    _buildMobileStats(),
                    SizedBox(height: context.height * 0.02),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Mobile Top Bar
  Widget _buildMobileTopBar() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: context.width * 0.04,
        vertical: context.height * 0.015,
      ),
      decoration: BoxDecoration(
        color: Color(0xFFFAF9F6),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: context.width * 0.02,
            offset: Offset(0, context.height * 0.002),
          ),
        ],
      ),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              setState(() {
                _isDrawerOpen = !_isDrawerOpen;
              });
              if (_isDrawerOpen) {
                Scaffold.of(context).openDrawer();
              }
            },
            child: Icon(
              Icons.menu,
              size: context.height * 0.032,
              color: Colors.black87,
            ),
          ),
          SizedBox(width: context.width * 0.04),
          Expanded(
            child: Text(
              'Dashboard',
              style: TextStyle(
                fontSize: context.height * 0.022,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
          ),
          Stack(
            children: [
              IconButton(
                icon: Icon(
                  Icons.notifications_outlined,
                  color: Color(0xFF64748B),
                  size: context.height * 0.028,
                ),
                onPressed: () {},
              ),
              Positioned(
                right: context.width * 0.02,
                top: context.height * 0.01,
                child: Container(
                  width: context.width * 0.022,
                  height: context.width * 0.022,
                  decoration: BoxDecoration(
                    color: Color(0xFFFBBF24),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(width: context.width * 0.02),
          Container(
            width: context.height * 0.045,
            height: context.height * 0.045,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Color(0xFF3B82F6),
                width: context.width * 0.005,
              ),
            ),
            child: ClipOval(
              child: Image.asset(
                'assets/images/people.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Mobile Drawer
  Widget _buildMobileDrawer() {
    return Drawer(
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(context.width * 0.06),
              color: Color(0xFFFAF9F6),
              child: Column(
                children: [
                  SizedBox(height: context.height * 0.02),
                  Image.asset(
                    'assets/images/chanel.png',
                    height: context.height * 0.06,
                    fit: BoxFit.contain,
                  ),
                  SizedBox(height: context.height * 0.02),
                  Image.asset(
                    'assets/images/peter.png',
                    height: context.height * 0.08,
                    fit: BoxFit.contain,
                  ),
                  SizedBox(height: context.height * 0.01),
                  Text(
                    'Admin User',
                    style: TextStyle(
                      fontSize: context.height * 0.02,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: context.height * 0.015),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: context.width * 0.05,
                      vertical: context.height * 0.01,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(context.width * 0.02),
                    ),
                    child: Text(
                      'Admin',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: context.height * 0.016,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(height: context.height * 0.001, color: Colors.black12),
            Expanded(
              child: ListView.builder(
                itemCount: menuItems.length,
                padding: EdgeInsets.symmetric(vertical: context.height * 0.02),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        _selectedMenuIndex = index;
                      });
                      Navigator.pop(context);
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: context.width * 0.04,
                        vertical: context.height * 0.005,
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: context.width * 0.04,
                        vertical: context.height * 0.015,
                      ),
                      decoration: BoxDecoration(
                        color: _selectedMenuIndex == index
                            ? Color(0xFFFAF9F6)
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(context.width * 0.03),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            menuIcons[index],
                            color: _selectedMenuIndex == index
                                ? Colors.black
                                : Color(0xFF4E4E53),
                            size: context.height * 0.028,
                          ),
                          SizedBox(width: context.width * 0.04),
                          Text(
                            menuItems[index],
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: context.height * 0.018,
                              fontWeight: _selectedMenuIndex == index
                                  ? FontWeight.w700
                                  : FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Divider(height: context.height * 0.001, color: Colors.black12),
            Padding(
              padding: EdgeInsets.all(context.width * 0.06),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Row(
                      children: [
                        Icon(
                          Icons.settings,
                          size: context.height * 0.025,
                          color: Colors.black87,
                        ),
                        SizedBox(width: context.width * 0.04),
                        Text(
                          'Settings',
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: context.height * 0.018,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: context.height * 0.02),
                  InkWell(
                    onTap: () {},
                    child: Row(
                      children: [
                        Icon(
                          Icons.logout,
                          size: context.height * 0.025,
                          color: Colors.black87,
                        ),
                        SizedBox(width: context.width * 0.04),
                        Text(
                          'Logout',
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: context.height * 0.018,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Mobile Header
  Widget _buildMobileHeader() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(context.width * 0.05),
      decoration: BoxDecoration(
        color: Color(0xFF123456),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'GENERAL 10:00AM TO 7:00PM',
            style: GoogleFonts.lato(
              textStyle: TextStyle(
                color: Colors.white,
                fontSize: context.height * 0.018,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Mobile Calendar
  Widget _buildMobileCalendar() {
    return Container(
      margin: EdgeInsets.all(context.width * 0.04),
      height: context.height * 0.4,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(context.width * 0.03),
        border: Border.all(color: Color(0xFFE2E8F0)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: context.width * 0.02,
            offset: Offset(0, context.height * 0.002),
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: context.width * 0.04,
              vertical: context.height * 0.015,
            ),
            decoration: BoxDecoration(
              color: Color(0xFF3B82F6),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(context.width * 0.03),
                topRight: Radius.circular(context.width * 0.03),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.chevron_left,
                    color: Colors.white,
                    size: context.height * 0.03,
                  ),
                  onPressed: () {
                    setState(() {
                      _focusedDate = DateTime(
                        _focusedDate.year,
                        _focusedDate.month - 1,
                      );
                    });
                  },
                  padding: EdgeInsets.zero,
                  constraints: BoxConstraints(),
                ),
                Text(
                  DateFormat('MMMM yyyy').format(_focusedDate),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: context.height * 0.02,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.chevron_right,
                    color: Colors.white,
                    size: context.height * 0.03,
                  ),
                  onPressed: () {
                    setState(() {
                      _focusedDate = DateTime(
                        _focusedDate.year,
                        _focusedDate.month + 1,
                      );
                    });
                  },
                  padding: EdgeInsets.zero,
                  constraints: BoxConstraints(),
                ),
              ],
            ),
          ),
          Expanded(
            child: _buildCalendarGrid(),
          ),
        ],
      ),
    );
  }

  Widget _buildCalendarGrid() {
    DateTime firstDayOfMonth = DateTime(_focusedDate.year, _focusedDate.month, 1);
    DateTime lastDayOfMonth = DateTime(_focusedDate.year, _focusedDate.month + 1, 0);
    int firstWeekday = firstDayOfMonth.weekday;
    int daysFromPrevMonth = firstWeekday - 1;
    int daysInMonth = lastDayOfMonth.day;

    return Padding(
      padding: EdgeInsets.all(context.width * 0.02),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: ['M', 'T', 'W', 'T', 'F', 'S', 'S']
                .map((day) => Expanded(
              child: Center(
                child: Text(
                  day,
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: context.height * 0.016,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ))
                .toList(),
          ),
          SizedBox(height: context.height * 0.01),
          Expanded(
            child: GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 7,
                childAspectRatio: 1.0,
              ),
              itemCount: daysFromPrevMonth + daysInMonth,
              itemBuilder: (context, index) {
                if (index < daysFromPrevMonth) {
                  return SizedBox();
                }

                int dayNumber = index - daysFromPrevMonth + 1;
                DateTime cellDate = DateTime(_focusedDate.year, _focusedDate.month, dayNumber);

                bool isToday = cellDate.year == DateTime.now().year &&
                    cellDate.month == DateTime.now().month &&
                    cellDate.day == DateTime.now().day;

                bool isSelected = cellDate.year == _selectedDate.year &&
                    cellDate.month == _selectedDate.month &&
                    cellDate.day == _selectedDate.day;

                return InkWell(
                  onTap: () {
                    setState(() {
                      _selectedDate = cellDate;
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.all(context.width * 0.005),
                    decoration: BoxDecoration(
                      color: isSelected ? Color(0xFF3B82F6) : Colors.transparent,
                      shape: BoxShape.circle,
                      border: isToday && !isSelected
                          ? Border.all(
                        color: Color(0xFF3B82F6),
                        width: context.width * 0.004,
                      )
                          : null,
                    ),
                    child: Center(
                      child: Text(
                        '$dayNumber',
                        style: TextStyle(
                          color: isSelected
                              ? Colors.white
                              : isToday
                              ? Color(0xFF3B82F6)
                              : Colors.black87,
                          fontSize: context.height * 0.018,
                          fontWeight: isToday || isSelected ? FontWeight.w600 : FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  // Mobile Birthday Tile
  Widget _buildMobileBirthdayTile() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(
        horizontal: context.width * 0.04,
        vertical: context.height * 0.01,
      ),
      padding: EdgeInsets.all(context.width * 0.04),
      decoration: BoxDecoration(
        color: Color(0xFF2D2D3D),
        borderRadius: BorderRadius.circular(context.width * 0.03),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            '⭐ Today Birthday ⭐',
            style: TextStyle(
              color: Colors.white,
              fontSize: context.height * 0.02,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: context.height * 0.02),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(context.width * 0.15),
                    child: Image.asset(
                      'assets/images/people.png',
                      width: context.height * 0.07,
                      height: context.height * 0.07,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    right: 0,
                    top: 0,
                    child: Text(
                      '🎂',
                      style: TextStyle(fontSize: context.height * 0.025),
                    ),
                  ),
                ],
              ),
              SizedBox(width: context.width * 0.02),
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(context.width * 0.15),
                    child: Image.asset(
                      'assets/images/people.png',
                      width: context.height * 0.07,
                      height: context.height * 0.07,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    right: 0,
                    top: 0,
                    child: Text(
                      '🎂',
                      style: TextStyle(fontSize: context.height * 0.025),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: context.height * 0.02),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Total : ',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: context.height * 0.018,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: context.width * 0.03,
                  vertical: context.height * 0.005,
                ),
                decoration: BoxDecoration(
                  color: Color(0xFF3D3D4D),
                  borderRadius: BorderRadius.circular(context.width * 0.015),
                ),
                child: Text(
                  '2',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: context.height * 0.018,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: context.height * 0.015),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: context.height * 0.015),
            decoration: BoxDecoration(
              color: Color(0xFF6B5B95),
              borderRadius: BorderRadius.circular(context.width * 0.025),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.send, color: Colors.white, size: context.height * 0.022),
                SizedBox(width: context.width * 0.02),
                Text(
                  'BIRTHDAY WISH',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: context.height * 0.018,
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

  // Mobile Anniversary Tile
  Widget _buildMobileAnniversaryTile() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(
        horizontal: context.width * 0.04,
        vertical: context.height * 0.01,
      ),
      padding: EdgeInsets.all(context.width * 0.04),
      decoration: BoxDecoration(
        color: Color(0xFF2D2D3D),
        borderRadius: BorderRadius.circular(context.width * 0.03),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            '⭐ ANNIVERSARY ⭐',
            style: TextStyle(
              color: Colors.white,
              fontSize: context.height * 0.02,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: context.height * 0.02),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(context.width * 0.15),
                child: Image.asset(
                  'assets/images/people.png',
                  width: context.height * 0.06,
                  height: context.height * 0.06,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: context.width * 0.02),
              ClipRRect(
                borderRadius: BorderRadius.circular(context.width * 0.15),
                child: Image.asset(
                  'assets/images/people.png',
                  width: context.height * 0.06,
                  height: context.height * 0.06,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: context.width * 0.02),
              ClipRRect(
                borderRadius: BorderRadius.circular(context.width * 0.15),
                child: Image.asset(
                  'assets/images/people.png',
                  width: context.height * 0.06,
                  height: context.height * 0.06,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          SizedBox(height: context.height * 0.02),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Total : ',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: context.height * 0.018,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: context.width * 0.03,
                  vertical: context.height * 0.005,
                ),
                decoration: BoxDecoration(
                  color: Color(0xFF3D3D4D),
                  borderRadius: BorderRadius.circular(context.width * 0.015),
                ),
                child: Text(
                  '3',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: context.height * 0.018,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: context.height * 0.015),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: context.height * 0.015),
            decoration: BoxDecoration(
              color: Color(0xFF6B5B95),
              borderRadius: BorderRadius.circular(context.width * 0.025),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.send, color: Colors.white, size: context.height * 0.022),
                SizedBox(width: context.width * 0.02),
                Text(
                  'ANNIVERSARY WISH',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: context.height * 0.018,
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

  // Mobile Top Project
  Widget _buildMobileTopProject() {
    return Container(
      width: double.infinity,
      height: context.height * 0.25,
      margin: EdgeInsets.symmetric(
        horizontal: context.width * 0.04,
        vertical: context.height * 0.01,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(context.width * 0.04),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Positioned.fill(
              child: Image.asset(
                'assets/images/eth.png',
                fit: BoxFit.cover,
                alignment: Alignment(1.0, 1),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(context.width * 0.04),
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Colors.black.withOpacity(0.7),
                    Colors.transparent,
                  ],
                ),
              ),
              padding: EdgeInsets.all(context.width * 0.05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Ethereum 2.0',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: context.height * 0.016,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Top Rating',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: context.height * 0.024,
                          fontWeight: FontWeight.bold,
                          height: 1.2,
                        ),
                      ),
                      Text(
                        'Project',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: context.height * 0.024,
                          fontWeight: FontWeight.bold,
                          height: 1.2,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Trending project made by team',
                        style: TextStyle(
                          color: Colors.white60,
                          fontSize: context.height * 0.015,
                        ),
                      ),
                      SizedBox(height: context.height * 0.008),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          foregroundColor: Colors.white,
                          padding: EdgeInsets.symmetric(
                            horizontal: context.width * 0.04,
                            vertical: context.height * 0.01,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(context.width * 0.02),
                          ),
                        ),
                        child: Text(
                          'Learn More',
                          style: TextStyle(
                            fontSize: context.height * 0.016,
                            fontWeight: FontWeight.w600,
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

  // Mobile All Projects
  Widget _buildMobileAllProjects() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(context.width * 0.04),
      margin: EdgeInsets.symmetric(
        horizontal: context.width * 0.04,
        vertical: context.height * 0.01,
      ),
      decoration: BoxDecoration(
        color: Color(0xFF0A1628),
        borderRadius: BorderRadius.circular(context.width * 0.04),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'ALL PROJECTS',
            style: TextStyle(
              color: Colors.white,
              fontSize: context.height * 0.02,
              fontWeight: FontWeight.bold,
              letterSpacing: context.width * 0.003,
            ),
          ),
          SizedBox(height: context.height * 0.02),
          _buildMobileProjectTile(0),
          SizedBox(height: context.height * 0.015),
          _buildMobileProjectTile(1),
          SizedBox(height: context.height * 0.015),
          _buildMobileProjectTile(2),
        ],
      ),
    );
  }

  Widget _buildMobileProjectTile(int index) {
    bool isSelected = _selectedProjectTile == index;

    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedProjectTile = index;
        });
      },
      child: Container(
        padding: EdgeInsets.all(context.width * 0.03),
        decoration: BoxDecoration(
          color: isSelected
              ? Colors.red.withOpacity(0.3)
              : Colors.white.withOpacity(0.1),
          borderRadius: BorderRadius.circular(context.width * 0.03),
          border: Border.all(
            color: isSelected ? Colors.red : Colors.transparent,
            width: context.width * 0.004,
          ),
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(context.width * 0.02),
              child: Image.asset(
                'assets/images/people.png',
                width: context.height * 0.06,
                height: context.height * 0.06,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: context.width * 0.03),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          'TECHNOLOGY BEHIND BLOCKCHAIN',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: context.height * 0.016,
                            fontWeight: FontWeight.w600,
                            height: 1.2,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      SizedBox(width: context.width * 0.02),
                      Icon(
                        Icons.edit,
                        color: Colors.white70,
                        size: context.height * 0.02,
                      ),
                    ],
                  ),
                  SizedBox(height: context.height * 0.01),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Project #${index + 1}',
                        style: TextStyle(
                          color: Colors.white60,
                          fontSize: context.height * 0.014,
                        ),
                      ),
                      GestureDetector(
                        onTap: () => print('See more clicked for project ${index + 1}'),
                        child: Text(
                          'See More',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: context.height * 0.014,
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

  // Mobile Top Creators
  Widget _buildMobileTopCreators() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(context.width * 0.04),
      margin: EdgeInsets.symmetric(
        horizontal: context.width * 0.04,
        vertical: context.height * 0.01,
      ),
      decoration: BoxDecoration(
        color: Color(0xFF0A1628),
        borderRadius: BorderRadius.circular(context.width * 0.04),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'TOP CREATORS',
            style: TextStyle(
              color: Colors.white,
              fontSize: context.height * 0.02,
              fontWeight: FontWeight.bold,
              letterSpacing: context.width * 0.003,
            ),
          ),
          SizedBox(height: context.height * 0.02),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: context.width * 0.03,
              vertical: context.height * 0.01,
            ),
            decoration: BoxDecoration(
              color: Color(0xFF1E3A5F).withOpacity(0.5),
              borderRadius: BorderRadius.circular(context.width * 0.02),
            ),
            child: Row(
              children: [
                SizedBox(width: context.height * 0.06),
                Expanded(
                  flex: 2,
                  child: Text(
                    'Name',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: context.height * 0.014,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Text(
                    'Artworks',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: context.height * 0.014,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Text(
                    'Rating',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: context.height * 0.014,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: context.height * 0.015),
          ...creators.map((creator) => _buildMobileCreatorTile(
            creator['handle'],
            creator['artworks'],
            creator['rating'],
          )),
        ],
      ),
    );
  }

  Widget _buildMobileCreatorTile(String handle, String artworks, int rating) {
    return Container(
      margin: EdgeInsets.only(bottom: context.height * 0.012),
      padding: EdgeInsets.symmetric(
        horizontal: context.width * 0.03,
        vertical: context.height * 0.01,
      ),
      decoration: BoxDecoration(
        color: Color(0xFF0D1F3C),
        borderRadius: BorderRadius.circular(context.width * 0.02),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(context.width * 0.015),
            child: Image.asset(
              'assets/images/people.png',
              width: context.height * 0.05,
              height: context.height * 0.05,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: context.width * 0.025),
          Expanded(
            flex: 2,
            child: Text(
              handle,
              style: TextStyle(
                color: Colors.white,
                fontSize: context.height * 0.014,
                fontWeight: FontWeight.w500,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              artworks,
              style: TextStyle(
                color: Colors.white70,
                fontSize: context.height * 0.014,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              height: context.height * 0.012,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(context.width * 0.01),
                border: Border.all(
                  color: Color(0xFF6B5B95),
                  width: context.width * 0.002,
                ),
              ),
              child: FractionallySizedBox(
                alignment: Alignment.centerLeft,
                widthFactor: rating / 5,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFF6B5B95),
                    borderRadius: BorderRadius.circular(context.width * 0.008),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Mobile Stats
  Widget _buildMobileStats() {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: context.width * 0.04,
        vertical: context.height * 0.01,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: _buildMobileStatCard(
                  'Total Projects',
                  '156',
                  Icons.folder,
                  Color(0xFF3B82F6),
                ),
              ),
              SizedBox(width: context.width * 0.03),
              Expanded(
                child: _buildMobileStatCard(
                  'Active Users',
                  '2,847',
                  Icons.people,
                  Color(0xFF10B981),
                ),
              ),
            ],
          ),
          SizedBox(height: context.height * 0.015),
          Row(
            children: [
              Expanded(
                child: _buildMobileStatCard(
                  'Completed',
                  '89',
                  Icons.check_circle,
                  Color(0xFFF59E0B),
                ),
              ),
              SizedBox(width: context.width * 0.03),
              Expanded(
                child: _buildMobileStatCard(
                  'Revenue',
                  '\$45.2K',
                  Icons.attach_money,
                  Color(0xFFEF4444),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildMobileStatCard(String title, String value, IconData icon, Color color) {
    return Container(
      padding: EdgeInsets.all(context.width * 0.04),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(context.width * 0.04),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: context.width * 0.02,
            offset: Offset(0, context.height * 0.002),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(context.width * 0.025),
            decoration: BoxDecoration(
              color: color.withOpacity(0.1),
              borderRadius: BorderRadius.circular(context.width * 0.02),
            ),
            child: Icon(
              icon,
              color: color,
              size: context.height * 0.035,
            ),
          ),
          SizedBox(height: context.height * 0.015),
          Text(
            value,
            style: TextStyle(
              fontSize: context.height * 0.028,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          SizedBox(height: context.height * 0.005),
          Text(
            title,
            style: TextStyle(
              fontSize: context.height * 0.015,
              color: Colors.grey[600],
            ),
          ),
        ],
      ),
    );
  }
}