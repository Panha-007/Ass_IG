
import 'package:flutter/material.dart';
import 'package:project_ig/dataSource/userDatas/userDatas.dart';

class Storyscreen extends StatefulWidget {
  final int index;

  const Storyscreen({super.key, required this.index});

  @override
  State<Storyscreen> createState() => _StoryscreenState();
}

class _StoryscreenState extends State<Storyscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            // Display the story image of the current user
            Image.network("${instagramUsers[widget.index]["StoryImage"]}"),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  child: Row(
                    children: [
                      // Profile image and user details
                      Container(
                        clipBehavior: Clip.hardEdge,
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black,
                        ),
                        child: Image.network(
                          "${instagramUsers[widget.index]["profileImage"]}",
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        "${instagramUsers[widget.index]["userName"]}",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "${instagramUsers[widget.index]["StoryDate"]}",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white70,
                        ),
                      ),
                    ],
                  ),
                ),

                // Arrow buttons (left and right)
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 250),
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_left,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ),
                    Spacer(),
                    IconButton(
                      onPressed: () {
                        int nextIndex = (widget.index + 1) % instagramUsers.length;
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return Storyscreen(index: nextIndex);
                            },
                          ),
                        );
                      },
                      icon: Icon(
                        Icons.arrow_right,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ],
            ),

            // TextField at the bottom for sending a message
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 100,
                color: Colors.black,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                child: SizedBox(
                  width: 300,
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[900],
                      hintText: "Send message",
                      hintStyle: TextStyle(color: Colors.white70),
                      contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 15),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
              ),
            ),

            // Like and send icons
            Positioned(
              right: 55,
              bottom: 32,
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.favorite_outline, size: 30, color: Colors.white70),
              ),
            ),
            Positioned(
              right: 10,
              bottom: 32,
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.send, size: 30, color: Colors.white70),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
