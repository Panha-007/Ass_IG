import 'package:flutter/material.dart';
import 'package:project_ig/dataSource/videoPost/videoPostdata.dart';


class VideoScreen extends StatefulWidget {
  const VideoScreen({super.key});

  @override
  State<VideoScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  // Variable to track the favorite button state (clicked or not)
  List<bool> isLiked = List.generate(20, (index) => false); // Initialize for 20 posts (adjust the length as needed)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: videoPostdata.length,
        itemBuilder: (context, index) {
          return buildVideoPost(index); 
        },
      ),
    );
  }

  // Full-Screen Video Post
  Widget buildVideoPost(int index) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height, // Full screen height
          child: Image.network(
            "${videoPostdata[index]['video']}",
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) => const Center(
              child: Icon(Icons.broken_image, size: 50, color: Colors.white),
            ),
          ),
        ),

        // Top Header (Reels + Camera)
        Positioned(
          top: 40,
          left: 16,
          right: 16,
          child: buildHeader(),
        ),

        // Like, Comment, Share Icons (Right Side)
        Positioned(
          right: 10,
          bottom: 150,
          child: Column(
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    isLiked[index] = !isLiked[index]; 
                  });
                },
                icon: Icon(
                  isLiked[index] ? Icons.favorite : Icons.favorite_outline,
                  color: isLiked[index] ? Colors.red : Colors.white,
                ),
              ),
              Text(
                "${videoPostdata[index]["like"]}",
                style: const TextStyle(color: Colors.white),
              ),
              SizedBox(height: 10),

              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.comment_outlined, color: Colors.white),
              ),
              Text(
                "${videoPostdata[index]["comment"]}",
                style: const TextStyle(color: Colors.white),
              ),
              SizedBox(height: 10),

              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.share_outlined, color: Colors.white),
              ),
              Text(
                "${videoPostdata[index]["share"]}",
                style: const TextStyle(color: Colors.white),
              ),

              SizedBox(height: 10),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_vert, color: Colors.white),
              )
            ],
          ),
        ),

        // Bottom Left: Profile Avatar, Caption, and User Name
        Positioned(
          left: 10,
          bottom: 20,
          child: Row(
            children: [
              // Profile Avatar
              buildPostAcc(index),

              SizedBox(width: 10),

              // Username and Caption
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // UserName to the right of profile circle
                  Row(
                    children: [
                      Text(
                        "${videoPostdata[index]['userName']}",
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),

                      SizedBox(width: 30,), // Space between the text and the button

                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.black,
                          side: BorderSide(color: Colors.white, width: 1), 
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10), 
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8), 
                          minimumSize: Size(80, 30), 
                        ),
                        child: Text(
                          "Follow",
                          style: TextStyle(
                            fontSize: 12, 
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 5),

                  // Caption under the profile circle
                  Text(
                    "${videoPostdata[index]['caption']}",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  // Header Section
  Widget buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "Reels",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.camera_alt_outlined, color: Colors.white),
        ),
      ],
    );
  }

  // Profile Circle at Bottom Left
  Widget buildPostAcc(int index) {
    return Container(
      clipBehavior: Clip.hardEdge,
      width: 40,
      height: 40,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.red,
      ),
      child: Image.network("${videoPostdata[index]['profileUser']}",
        fit: BoxFit.cover,
      ),
    );
  }
}
