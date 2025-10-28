import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class rightpanel extends StatefulWidget {
  const rightpanel({super.key});

  @override
  State<rightpanel> createState() => _rightpanelState();
}

class _rightpanelState extends State<rightpanel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF123456),
      body: Container(
        width: 300,
        color: Color(0xFF123456),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 12.0, bottom: 12.0),
                child: Text(
                  '   GENERAL 10:00AM TO 7:00PM',
                  style: GoogleFonts.lato(
                    textStyle: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ),

              ),

              const SizedBox(height: 30),

              // First Image
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    'assets/images/target.png',
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              const SizedBox(height: 40),

              // Second Image
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    'assets/images/target.png',
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              const SizedBox(height: 40),

              // Third Image
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    'assets/images/target.png',
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
