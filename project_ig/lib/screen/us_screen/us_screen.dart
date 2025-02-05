import 'package:flutter/material.dart';
import 'package:project_ig/dataSource/userDatas/highlightsData.dart';
import 'package:project_ig/dataSource/userDatas/ownerPosted.dart';

class UsScreen extends StatefulWidget {
  const UsScreen({super.key});

  @override
  State<UsScreen> createState() => _UsScreenState();
}

class _UsScreenState extends State<UsScreen> with SingleTickerProviderStateMixin{
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
            child: Text("NhaNaTa²",
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
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 22, top: 24),
              child: Stack(
                children: [
                  Container(
                    clipBehavior: Clip.hardEdge,
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.green,
                    ),
                    child: Image.asset(
                      "assets/images/user_pf.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 2,
                    right: 5,
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white
                      ),
                      
                    ),
                  ),
                  
                  Positioned(
                    bottom: 5,
                    right: 8,
                    child: Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black
                      ),
                      child: IconButton(
                        onPressed: (){}, 
                        icon: Icon(Icons.add,
                          color: Colors.white,
                          size: 16,
                        ),
                        padding: EdgeInsets.zero,
                        constraints: BoxConstraints(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 22, left: 10),
                  child: Text(
                    "Ahlybaba",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 6),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    "12",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
                SizedBox(height: 2),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    "posts",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only( top: 54),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "560",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    "followers",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, top: 54),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "233",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    "following",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget buildButton() {
    return Padding(
      padding: const EdgeInsets.only(left: 10, top: 20, right: 10),
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
                "Edit Profile",
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
                "Share Profile",
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
          itemCount: 6,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: index == 5
                          ? LinearGradient(
                              colors: [Colors.black, Colors.black],
                            )
                          : LinearGradient(
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
                        child: index == 5
                            ? Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                              child: IconButton(
                                onPressed: (){}, 
                                icon: Icon(Icons.add), 
                                iconSize: 40,
                                color: Colors.black,
                              )
                            )
                            : Image.network(
                                "${highlightsData[index]["highlights"]}",
                                fit: BoxFit.cover,
                              ),
                      ),
                    ),
                  ),

                  Positioned(
                    top: 80,
                    left: 10,
                    child: index== 5
                    ?  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18),
                      child: Text("New",
                        style: TextStyle(
                          fontSize: 14
                        ),
                      ),
                    ) 
                    : Text("Highlights",
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