import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:shreyanshadminportal/extentions/mediaquery.dart';

class calender extends StatefulWidget {
  @override
  State<calender> createState() => _calenderState();
}

class _calenderState extends State<calender> {
  DateTime _selectedDate = DateTime.now();
  DateTime _focusedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height * 0.313, // Compact height for small box
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFE2E8F0)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          // Month and Year Selection Header
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            decoration: const BoxDecoration(
              color: Color(0xFF3B82F6),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const Icon(
                      Icons.chevron_left, color: Colors.white, size: 20),
                  onPressed: () {
                    setState(() {
                      _focusedDate = DateTime(
                        _focusedDate.year,
                        _focusedDate.month - 1,
                      );
                    });
                  },
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                ),
                Text(
                  DateFormat('MMMM yyyy').format(_focusedDate),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                IconButton(
                  icon: const Icon(
                      Icons.chevron_right, color: Colors.white, size: 20),
                  onPressed: () {
                    setState(() {
                      _focusedDate = DateTime(
                        _focusedDate.year,
                        _focusedDate.month + 1,
                      );
                    });
                  },
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                ),
              ],
            ),
          ),

          // Calendar Grid
          Expanded(
            child: _buildCalendar(),
          ),
        ],
      ),
    );
  }


  Widget _buildCalendar() {
    // Get first day of the month
    DateTime firstDayOfMonth = DateTime(
        _focusedDate.year, _focusedDate.month, 1);

    // Get last day of the month
    DateTime lastDayOfMonth = DateTime(
        _focusedDate.year, _focusedDate.month + 1, 0);

    // Get the weekday of the first day (1 = Monday, 7 = Sunday)
    int firstWeekday = firstDayOfMonth.weekday;

    // Calculate days from previous month to show
    int daysFromPrevMonth = firstWeekday - 1;

    // Days in current month
    int daysInMonth = lastDayOfMonth.day;

    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Column(
        children: [
          // Weekday headers
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: ['M', 'T', 'W', 'T', 'F', 'S', 'S']
                .map((day) =>
                Expanded(
                  child: Center(
                    child: Text(
                      day,
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ))
                .toList(),
          ),

          const SizedBox(height: 6),

          // Calendar days grid
          Expanded(
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 7,
                childAspectRatio: 1.0, // Makes cells roughly square
              ),
              itemCount: daysFromPrevMonth + daysInMonth,
              itemBuilder: (context, index) {
                // Empty cells for the previous month's days
                if (index < daysFromPrevMonth) {
                  return const SizedBox();
                }

                int dayNumber = index - daysFromPrevMonth + 1;
                DateTime cellDate = DateTime(
                    _focusedDate.year, _focusedDate.month, dayNumber);

                bool isToday = cellDate.year == DateTime
                    .now()
                    .year &&
                    cellDate.month == DateTime
                        .now()
                        .month &&
                    cellDate.day == DateTime
                        .now()
                        .day;

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
                    margin: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      color: isSelected ? const Color(0xFF3B82F6) : Colors
                          .transparent,
                      shape: BoxShape.circle,
                      border: isToday && !isSelected
                          ? Border.all(color: const Color(0xFF3B82F6),
                          width: 1.5)
                          : null,
                    ),
                    child: Center(
                      child: Text(
                        '$dayNumber',
                        style: TextStyle(
                          color: isSelected
                              ? Colors.white
                              : isToday
                              ? const Color(0xFF3B82F6)
                              : Colors.black87,
                          fontSize: 13,
                          fontWeight: isToday || isSelected
                              ? FontWeight.w600
                              : FontWeight.w400,
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
}