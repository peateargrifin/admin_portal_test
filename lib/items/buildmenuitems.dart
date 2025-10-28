import 'package:flutter/material.dart';

// 1. Change from StatefulWidget to StatelessWidget
class buildmenuitem extends StatelessWidget {
  final int index;
  final IconData icon;
  final String title;
  final bool isSelected; // 2. Add 'isSelected' to know its state
  final VoidCallback? onTap;

  const buildmenuitem({
    super.key,
    required this.index,
    required this.icon,
    required this.title,
    required this.isSelected, // Make it required
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    // 3. The widget now uses the 'isSelected' property passed from the parent
    return InkWell(
      onTap: onTap, // The onTap is now passed directly from the parent
      child: Container(
        margin: const EdgeInsets.only(left: 16, top: 2,bottom: 2),
        padding: const EdgeInsets.only(left: 32, top: 12, bottom: 12),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFFFAF9F6) : Colors.transparent,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12),
            bottomLeft: Radius.circular(12)
          ),
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: isSelected ? const Color(0xFF000000) : Color(0xFF4E4E53),
              size: 20,
              weight: isSelected ? 900 : 200,
            ),
            const SizedBox(width: 12),
            Text(
              title,
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: isSelected ? FontWeight.w900 : FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
