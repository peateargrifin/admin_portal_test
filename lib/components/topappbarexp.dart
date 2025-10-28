import 'package:flutter/material.dart';

class topappbarexp extends StatefulWidget {
  const topappbarexp( {super.key , required BuildContext context});

  @override
  State<topappbarexp> createState() => _topappbarexpState();
}

class _topappbarexpState extends State<topappbarexp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      decoration: BoxDecoration(
        color: Color(0xFFFAF9F6),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Text("data",style: TextStyle(color: Colors.grey[900]),),
          const Spacer(),

          // Search Field
          Expanded(
            child: Container(
              height: 42,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: const Color(0xFF123456),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [

                  Icon(Icons.search, color: Colors.grey[500], size: 20),
                  const SizedBox(width: 12),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search...',
                        hintStyle: TextStyle(
                          color: Color(0xFFCDD3DA),
                          fontSize: 14,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(width: 24),

          // List Icon
          IconButton(
            icon: const Icon(Icons.list, color: Color(0xFF64748B)),
            onPressed: () {},
          ),

          const SizedBox(width: 8),

          // Bell Icon with Badge
          Stack(
            children: [
              IconButton(
                icon: const Icon(Icons.notifications_outlined, color: Color(0xFF64748B)),
                onPressed: () {},
              ),
              Positioned(
                right: 8,
                top: 8,
                child: Container(
                  width: 10,
                  height: 10,
                  decoration: const BoxDecoration(
                    color: Color(0xFFFBBF24),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(width: 8),

          // Power Icon
          IconButton(
            icon: const Icon(Icons.power_settings_new, color: Color(0xFF64748B)),
            onPressed: () {},
          ),

          const SizedBox(width: 16),

          // User Profile Picture
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: const Color(0xFF3B82F6), width: 2),
            ),
            child: ClipOval(
              child: Image.asset(
                'assets/images/photo.png', // Add user photo
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
  }

