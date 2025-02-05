import 'package:flutter/material.dart';
import 'package:project_ig/dataSource/userDatas/highlightsData.dart';
import 'package:project_ig/dataSource/userDatas/ownerPosted.dart';
import 'package:project_ig/dataSource/userDatas/userDatas.dart';

class UsersprofileScreen extends StatefulWidget {
  final int index; // Add this line to define the index

  const UsersprofileScreen({super.key, required this.index}); // Make index required

  @override
  State<UsersprofileScreen> createState() => _UsersprofileScreenState();
}

class _UsersprofileScreenState extends State<UsersprofileScreen> with SingleTickerProviderStateMixin{
  late TabController _tabController;
   @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text("${instagramUsers[widget.index] ["userName"]}",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24
              ),
            ),
          ),
          actions: [
            IconButton(
              onPressed: (){}, 
              icon: Icon(Icons.add_box_outlined,
                size: 32,
              ),
            ),
      
            IconButton(
              onPressed: (){}, 
              icon: Icon(Icons.menu,
                size: 32,
              ),
            ),
          ],       
        ),
      
        body: Column(
          children: [
            buildProfile(),
            buildButton(),
            buildHighlights(),
            buildTabBar(),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  buildGridView(),
                  buildTabBarVdo(),
                  buildEndTabBar(),
                ]
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildProfile() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      child: Column( 
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Profile Picture & User Info Row
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Profile Picture
              Container(
                clipBehavior: Clip.hardEdge,
                width: 90,
                height: 90,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey,
                ),
                child: Image.network(
                  "${instagramUsers[widget.index]["profileImage"]}",
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 16),

              // User Info
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${instagramUsers[widget.index]["userName"]}",
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),

                    // Stats Row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        buildStatColumn("${instagramUsers[widget.index]["posts_count"]}", "Posts"),
                        buildStatColumn("${instagramUsers[widget.index]["follower"]}", "Followers"),
                        buildStatColumn("${instagramUsers[widget.index]["following"]}", "Following"),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),

          const SizedBox(height: 10),

          // Bio Section
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "${instagramUsers[widget.index]["bio"]}",
              style: const TextStyle(fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }

// Helper widget for Stats
  Widget buildStatColumn(String count, String label) {
    return Column(
      children: [
        Text(
          count,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }

  Widget buildButton() {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: 160,
            child: ElevatedButton(
              onPressed: () {
            
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), 
                ),
                backgroundColor: Colors.white.withOpacity(0.5)
            
              ),
              child: Text(
                "Following",
                style: TextStyle(
                  fontSize: 16, 
                  fontWeight: FontWeight.bold,
                  color: Colors.black
                ),
              ),
            ),
          ),

          SizedBox(width: 10),

          SizedBox(
            width: 160,
            child: ElevatedButton(
              onPressed: () {
            
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), 
                ),
                backgroundColor: Colors.white.withOpacity(0.5)
            
              ),
              child: Text(
                "Message",
                style: TextStyle(
                  fontSize: 16, 
                  fontWeight: FontWeight.bold,
                  color: Colors.black
                ),
              ),
            ),
          ),

          Spacer(),

          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white.withOpacity(0.5),
            ),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.person_add),
              iconSize: 30, 
            ),
          )
        ],
      ),
    );
  }

  Widget buildHighlights() {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: SizedBox(
        height: 100,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: highlightsData.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        colors: [Colors.grey, Colors.grey],
                      ),
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                    //width: 10,
                      child: Container(
                        clipBehavior: Clip.hardEdge,
                        width: 70,
                        height: 70,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: Image.network(
                                "${highlightsData[index]["highlights"]}",
                                fit: BoxFit.cover,
                              ),
                      ),
                    ),
                  ),

                  Positioned(
                    top: 80,
                    left: 10,
                    child: Text("Highlights",
                      style: TextStyle(
                        fontSize: 14
                      ),
                    )
                  ),
                ],
              ),
              
            );
          },
        ),
      ),
    );
  }

  Widget buildTabBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          TabBar(
            controller: _tabController,
            indicatorColor: Colors.black, 
            labelColor: Colors.black,    
            unselectedLabelColor: Colors.grey, 
            tabs: [
              Tab(icon: Icon(Icons.apps, size: 32,)),     
              Tab(icon: Icon(Icons.video_library, size: 32,)), 
              Tab(icon: Icon(Icons.person_outline, size: 32,)),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildGridView(){
    return Expanded(
      child: GridView.builder(
        physics: BouncingScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 2,
          crossAxisSpacing: 2
        ),
        itemCount: ownerPosted.length,
        itemBuilder: (context, index) {
          return Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(1)
            ),
            child: Image.network("${ownerPosted[index] ["posted"]}",
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }

  Widget buildTabBarVdo() {
    return Padding(
      padding: const EdgeInsets.only(left: 45, right: 40, top: 30),
      child: Column(
        children: [
          Text(
            "Share a moment with the world",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text(
              "Create your first reel",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Color.fromARGB(255, 3, 120, 216),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildEndTabBar(){
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                width: 3
              ),
              
            ),
            child: IconButton(
            onPressed: (){}, 
            icon: Icon(Icons.account_box_outlined, size: 45, color: Colors.black,)
          ),
          ),
        ),

        Text("Photos and",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),

        Text("videos of you",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),

        Text("When people tag you in photos and",
          style: TextStyle(
            fontSize: 18,
            color: Colors.grey
          ),
        ),

        Text("videos, they'll appear here.",
          style: TextStyle(
            fontSize: 18,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}