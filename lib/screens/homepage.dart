import 'package:daily_task/mywidgets.dart';
import 'package:flutter/material.dart';

// Untuk HomePage dari to-do-list
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final String perkenalan =
      "Apa kabar? Jadi kamu perlu reminder untuk To-Do-List mu? Yuk sikat aplikasi ini!";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        // Berfungsi untuk memberikan space agar device2 yg punya notch aman
        child: Container(
          width: double.infinity, // Expand container hingga seluruh page
          // Semacam container di web
          padding: EdgeInsets.all(24.0), // set margin pada semua sisi
          color: Color(0xFFF6F6F6),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment
                    .start, // Align child dari column dari kiri ke kanan (Cross horizontal, Main Vertikal)
                // Widget yang menunjukkan childrennya dengan vert array
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      // Penambahan Margin bawah
                      bottom: 24.0,
                    ),
                    child: Image(
                      image:
                          AssetImage('assets/images/logo.png'), //Asset gambar
                    ),
                  ),
                  TaskCardWidget(
                    title: "Memulai",
                    desc: perkenalan,
                  ),
                  TaskCardWidget(),
                ],
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Color(0xFF7349FE),
                      borderRadius: BorderRadius.circular(30)),
                  child: Image(image: AssetImage("assets/images/add_icon.png")),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
