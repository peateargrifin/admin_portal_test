import 'package:flutter/material.dart';

import '../layouts/expandedLayout.dart';
import '../layouts/phoneLayout.dart';

class uichoice extends StatefulWidget {
  const uichoice({super.key});

  @override
  State<uichoice> createState() => _uichoiceState();
}

class _uichoiceState extends State<uichoice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          // Use width to determine layout
          if (constraints.maxWidth < 600) {
            // Small screen: phone layout
            return MobileDashboardLayout();
          } else {
            // Large screen: tablet/desktop layout
            return expandedLayout();
          }
        },
      ),
    );
  }
}
