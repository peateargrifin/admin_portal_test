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
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        color: const Color(0xFF0A1628),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'TOP CREATORS',
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.2,
            ),
          ),
          const SizedBox(height: 12),

          // Header Row
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
            decoration: BoxDecoration(
              color: const Color(0xFF1E3A5F).withOpacity(0.5),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: const [
                SizedBox(width: 40), // Space for image
                Expanded(
                  flex: 2,
                  child: Text(
                    'Name',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 9,
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
                      fontSize: 9,
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
                      fontSize: 9,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 8),

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
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
      decoration: BoxDecoration(
        color: const Color(0xFF0D1F3C),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          // Profile Image
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Image.asset(
              'assets/images/people.png',
              width: 32,
              height: 32,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 6),

          // Handle
          Expanded(
            flex: 2,
            child: Text(
              handle,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 9,
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
              style: const TextStyle(
                color: Colors.white70,
                fontSize: 9,
              ),
              textAlign: TextAlign.center,
            ),
          ),

          // Rating Bar - Continuous
          Expanded(
            flex: 2,
            child: Container(
              height: 8,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(4),
                border: Border.all(
                  color: const Color(0xFF6B5B95),
                  width: 1,
                ),
              ),
              child: FractionallySizedBox(
                alignment: Alignment.centerLeft,
                widthFactor: rating / 5,
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF6B5B95),
                    borderRadius: BorderRadius.circular(3),
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