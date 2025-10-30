import 'package:flutter/material.dart';
import 'package:shreyanshadminportal/extentions/mediaquery.dart';

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
        margin: EdgeInsets.only(
          left: context.width * 0.012,
          top: context.height * 0.002,
          bottom: context.height * 0.002,
        ),
        padding: EdgeInsets.only(
          left: context.width * 0.012,
          top: context.height * 0.015,
          bottom: context.height * 0.015,
        ),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFFFAF9F6) : Colors.transparent,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(context.width * 0.006),
            bottomLeft: Radius.circular(context.width * 0.006),
          ),
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: isSelected ? const Color(0xFF000000) : Color(0xFF4E4E53),
              size: context.height * 0.026,
              weight: isSelected ? 900 : 200,
            ),
            SizedBox(width: context.width * 0.009),
            Text(
              title,
              style: TextStyle(
                color: Colors.black,
                fontSize: context.height * 0.018,
                fontWeight: isSelected ? FontWeight.w900 : FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
