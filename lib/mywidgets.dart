import 'package:flutter/material.dart';

class TaskCardWidget extends StatelessWidget {
  final String title;
  final String desc;
  TaskCardWidget({this.title, this.desc});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 8.0),
      padding: EdgeInsets.symmetric(
        vertical: 24.0,
        horizontal: 32.0,
      ),
      decoration: BoxDecoration(
        // Dekorasi untuk container
        color: Colors.white, // Warna container
        borderRadius: BorderRadius.circular(20.0),
      ), // Border radius secara circular
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10.0),
            child: Text(
              title ?? "(No Task)",
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  fontWeight: FontWeight.bold, // Biar bold
                  color: Color(0xFF211551), // Warna
                  fontSize: 22.0 // Ukuran font
                  ),
            ),
          ),
          Text(
            desc ?? "Currently no task added",
            style: TextStyle(
              fontSize: 16.0,
              color: Color(0xFF86829D),
              height: 1.5,
            ),
          )
        ],
      ),
    );
  }
}
