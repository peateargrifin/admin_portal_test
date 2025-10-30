import 'package:flutter/material.dart';
import 'package:shreyanshadminportal/extentions/mediaquery.dart';

class Tile3 extends StatefulWidget {
  const Tile3({super.key});

  @override
  State<Tile3> createState() => _Tile3State();
}

class _Tile3State extends State<Tile3> {
  final List<Map<String, dynamic>> creators = [
    {'handle': '@artist_one', 'artworks': '9821', 'rating': 4},
    {'handle': '@creator_two', 'artworks': '7654', 'rating': 5},
    {'handle': '@design_pro', 'artworks': '5432', 'rating': 3},
    {'handle': '@art_master', 'artworks': '8901', 'rating': 4},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width * 0.245,
      height: context.height * 0.35,
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
            'TOP CREATORS',
            style: TextStyle(
              color: Colors.white,
              fontSize: context.height * 0.018,
              fontWeight: FontWeight.bold,
              letterSpacing: context.width * 0.0006,
            ),
          ),
          SizedBox(height: context.height * 0.015),

          // Header Row
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: context.width * 0.003,
              vertical: context.height * 0.008,
            ),
            decoration: BoxDecoration(
              color: const Color(0xFF1E3A5F).withOpacity(0.5),
              borderRadius: BorderRadius.circular(context.width * 0.004),
            ),
            child: Row(
              children: [
                SizedBox(width: context.height * 0.052), // Space for image
                Expanded(
                  flex: 2,
                  child: Text(
                    'Name',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: context.height * 0.012,
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
                      fontSize: context.height * 0.012,
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
                      fontSize: context.height * 0.012,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: context.height * 0.01),

          // Creator List
          Expanded(
            child: ListView.builder(
              itemCount: creators.length,
              itemBuilder: (context, index) {
                return _buildCreatorTile(
                  creators[index]['handle'],
                  creators[index]['artworks'],
                  creators[index]['rating'],
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCreatorTile(String handle, String artworks, int rating) {
    return Container(
      margin: EdgeInsets.only(bottom: context.height * 0.01),
      padding: EdgeInsets.symmetric(
        horizontal: context.width * 0.003,
        vertical: context.height * 0.008,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFF0D1F3C),
        borderRadius: BorderRadius.circular(context.width * 0.004),
      ),
      child: Row(
        children: [
          // Profile Image
          ClipRRect(
            borderRadius: BorderRadius.circular(context.width * 0.003),
            child: Image.asset(
              'assets/images/people.png',
              width: context.height * 0.042,
              height: context.height * 0.042,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: context.width * 0.003),

          // Handle
          Expanded(
            flex: 2,
            child: Text(
              handle,
              style: TextStyle(
                color: Colors.white,
                fontSize: context.height * 0.012,
                fontWeight: FontWeight.w500,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),

          // Artworks Count
          Expanded(
            flex: 2,
            child: Text(
              artworks,
              style: TextStyle(
                color: Colors.white70,
                fontSize: context.height * 0.012,
              ),
              textAlign: TextAlign.center,
            ),
          ),

          // Rating Bar - Continuous
          Expanded(
            flex: 2,
            child: Container(
              height: context.height * 0.01,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(context.width * 0.002),
                border: Border.all(
                  color: const Color(0xFF6B5B95),
                  width: context.width * 0.0005,
                ),
              ),
              child: FractionallySizedBox(
                alignment: Alignment.centerLeft,
                widthFactor: rating / 5,
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF6B5B95),
                    borderRadius: BorderRadius.circular(context.width * 0.0015),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
