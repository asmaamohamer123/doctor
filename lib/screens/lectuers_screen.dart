//import 'package:attendance/screens/Attendance/lecture_attendance.dart';
import 'package:attendance/screens/assignmentpage.dart';
import 'package:attendance/screens/lecturepage.dart';
import 'package:attendance/screens/uploadfile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import '../../core/resources/app_colors.dart';

class LecturesScreen extends StatefulWidget {
  const LecturesScreen({super.key, required this.title});
  final String title;

  @override
  State<LecturesScreen> createState() => _LecturesScreenState();
}

class _LecturesScreenState extends State<LecturesScreen> {
   
    
  @override
     int _selectedIndex = 0;

    final List<Widget> _pages = [
   // LecturePage(),
    //AssignmentPage(),
    FileUploadPage(),
    FileUploadPage(),
      // صفحة المحاضرات
   // Center(child: Text('هذه صفحة الاسايمنتات')),  // صفحة الاسايمنتات placeholder
  ];
      void _onItemTapped(int index) {
       setState(() {
      _selectedIndex = index;
    });  
      }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
        ),
        centerTitle: true,
      ),
      body:_pages[_selectedIndex],
      //Center(
          //child: Text('Selected Index: $_selectedIndex'),
      //  ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            
            BottomNavigationBarItem(
              icon: Icon(Icons.school ,color: Colors.white,),
              label: 'المحاضرات',
             
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.assignment, color: Colors.white,),
              label: 'التاسكات',
              
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
        ),
    
      );
      
      }
}