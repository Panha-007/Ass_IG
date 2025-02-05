import 'package:flutter/material.dart';
import 'package:project_ig/dataSource/userDatas/userDatas.dart';
import 'package:project_ig/screen/chatscreen/chatscreen.dart';
import 'package:project_ig/screen/homescreen/storyScreen.dart';
import 'package:project_ig/screen/homescreen/usersProfile_screen.dart';



class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  List<bool> likePosts = [];
  List<bool> clickSaves = [];
  //bool likePosts = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    likePosts = List<bool>.filled(instagramUsers.length, false);
    clickSaves = List<bool>.filled(instagramUsers.length, false);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Instagram",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite_outline,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Chatscreen();
                  },
                ),
              );
            },
            icon: Icon(
              Icons.send,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 130,
            child: buildHeader(),
          ),
          
          Expanded( 
            child: buildUserPostedImages(),
          ),
        ],
      ),
    );
  }

  Widget buildHeader() {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 18,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Stack(
                  children: [
                    GestureDetector(
                      onTap: () {
                        if(index != 0){
                          Navigator.push(
                            context, 
                            MaterialPageRoute(builder: (context) => Storyscreen(index: index))
                          );
                        }
                      },
                      child: Container(
                        padding: const EdgeInsets.all(3), 
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: index == 0
                              ? const LinearGradient(colors: [Colors.white, Colors.white])
                              : const LinearGradient(colors: [Colors.pink, Colors.purple, Colors.orange]),
                        ),
                        child: Container(
                          padding: const EdgeInsets.all(4), 
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: Container(
                            clipBehavior: Clip.hardEdge,
                            width: 70, 
                            height: 70,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey,
                            ),
                            child: index == 0
                                ? Image.asset("assets/images/user_pf.jpg", fit: BoxFit.cover)
                                : Image.network(
                                    "${instagramUsers[index]["profileImage"]}",
                                    fit: BoxFit.cover,
                                  ),
                          ),
                        ),
                      ),
                    ),

                    Positioned(
                      right: 9,
                      bottom: 8,
                      child: index == 0
                      ? Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blue
                        ),
                        child: IconButton(
                          onPressed: (){}, 
                          icon: Icon(Icons.add,
                            color: Colors.white,
                            size: 20,         
                          ),
                          padding: EdgeInsets.zero,
                          constraints: BoxConstraints(),
                        ),
                      )
                      : Container(),
                    ),
                  ],
                  
                ),
                const SizedBox(height: 5),
                Text(
                  index == 0 ? "Your Story" : "${instagramUsers[index]["userName"]}",
                  style: const TextStyle(
                    fontSize: 12,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget buildUserPostedImages() {
    return ListView.separated(
      scrollDirection: Axis.vertical,
      itemCount: instagramUsers.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    clipBehavior: Clip.hardEdge,
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => UsersprofileScreen(index: index),
                          ),
                        );
                      },
                      child: Image.network("${instagramUsers[index] ["profileImage"]}",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  SizedBox(width: 10,),
                  Text("${instagramUsers[index] ["userName"]}", 
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                  ),

                  Spacer(),
                  IconButton(
                    onPressed: (){}, 
                    icon: Icon(Icons.more_vert)
                  ),
                ],
              ),

              SizedBox(height: 20,),
               
              Container(
                clipBehavior: Clip.hardEdge,
                width: double.infinity,
                // height: 300,
                decoration: BoxDecoration(
                ),
                child: Image.network("${instagramUsers[index] ["postImage"]}",
                  fit: BoxFit.cover,
                ),
              ),

              Row(
                children: [
                  IconButton(
                    onPressed: (){
                      setState(() {
                        likePosts[index] = !likePosts[index];
                      });
                    }, 
                    icon: likePosts[index]
                    ? Icon(Icons.favorite, color: Colors.red)
                    : Icon(Icons.favorite_outline)
                  ),
                
                  Text("${instagramUsers[index] ["postLike"]}"),

                  IconButton(
                    onPressed: (){}, 
                    icon: Icon(Icons.comment_outlined),
                  ),

                  Text("${instagramUsers[index] ["postComment"]}"),

                  IconButton(
                    onPressed: (){}, 
                    icon: Icon(Icons.share),
                  ),

                  Text("${instagramUsers[index] ["postShare"]}"),
                  
                  Spacer(),
                  IconButton(
                    onPressed: (){
                      setState(() {
                        clickSaves[index] = !clickSaves[index];
                      });
                    }, 
                    icon: Icon(
                      clickSaves[index] ? Icons.bookmark : Icons.bookmark_border,
                      color: clickSaves[index] ? const Color.fromARGB(255, 194, 146, 2) : Colors.black,
                      size: 30,
                    ),
                  ),
                ],
              ),

              Row(
                children: [
                  Text("${instagramUsers[index] ['userName']}",
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                  ),

                  SizedBox(width: 10,),
                  Expanded(
                    child: Text("${instagramUsers[index] ['postCaption']}",
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),

              SizedBox(height: 10,),
              Text("${instagramUsers[index] ["dateOfPost"]}")
            ],
          ),
        );
      },
      separatorBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(top: 10, bottom: 10),
          child: Container(
            height: 0,
          ),
        );
      },
    );
  }

  Widget gotoChat(){
    return Navigator(

    );
  }
}
