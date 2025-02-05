import 'package:flutter/material.dart';
import 'package:project_ig/screen/camera_screen/camera_screen.dart';
import 'package:project_ig/screen/homescreen/homescreen.dart';
import 'package:project_ig/screen/search_screen/search_screen1.dart';
import 'package:project_ig/screen/us_screen/us_screen.dart';
import 'package:project_ig/screen/video_screen/video_screen.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

   int _currentIndex = 0;

  final List<Widget> _screen = [
    Homescreen(),
    SearchScreen(),
    CameraScreen(),
    VideoScreen(),
    UsScreen(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        useLegacyColorScheme: false,
        selectedLabelStyle: TextStyle(
          color: Colors.black,
          fontSize: 16,
          fontWeight: FontWeight.bold
        ),
        unselectedLabelStyle: TextStyle(
          color: Colors.grey,
          fontSize: 14
        ),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,
              size: 32,
              color: _currentIndex == 0? Colors.black : Colors.grey,
            ), 
            label: "",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.search,
              size: 32,
              color: _currentIndex == 1? Colors.black : Colors.grey,
            ), 
            label: "",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.add_box_outlined,
              size: 32,
              color: _currentIndex == 2? Colors.black : Colors.grey,
            ), 
            label: "",
          ),
          
          BottomNavigationBarItem(
            icon: Icon(Icons.video_library,
              size: 32,    
              color: _currentIndex == 3? Colors.black : Colors.grey,        
            ), 
            label: "",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle,
              size: 32,
              color: _currentIndex == 4? Colors.black : Colors.grey,
            ), 
            label: "",
          ),

        //  BottomNavigationBarItem(
        //   icon: CircleAvatar(
        //     radius: 16, // Adjust size as needed
        //     foregroundImage: NetworkImage('assets/images/user_pf.jpg'),
            
        //   ),
        //   label: "",
        // )

          
        ],
        currentIndex: _currentIndex,
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
      ),
      body: _screen[_currentIndex]
    );
  }
}