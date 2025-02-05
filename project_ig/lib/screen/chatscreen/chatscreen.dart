import 'package:flutter/material.dart';
import 'package:project_ig/dataSource/chatDataset/chat_dataset.dart';
import 'package:project_ig/dataSource/userOnlineInChat/userOnlineInchat.dart';

class Chatscreen extends StatefulWidget {
  const Chatscreen({super.key});

  @override
  State<Chatscreen> createState() => _ChatscreenState();
}

class _ChatscreenState extends State<Chatscreen> {
  var textCtrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("NhaNaTa²",
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.edit_calendar))
        ],
      ),

      body: Column(
        children: [
          buildSearchChat(),
          Expanded(child: buildMessager()),
        ],
      ),
    );
  }

  Widget buildSearchChat() {
    return Padding(
      padding: EdgeInsets.only(left: 15, right: 15, top: 20),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: const Color.fromARGB(111, 158, 158, 158),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 10,),
          child: TextField(
            controller: textCtrl,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "Search",
              prefixIcon: Icon(
                Icons.search,
                color: Colors.grey,
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 13)
            ),
          ),
        ),
      ),
    );
  }

  Widget buildListviewHorizontal() {
    return SizedBox(
      height: 130,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: userOnlineInchat.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Stack(
                  children: [
                    Container (
                      clipBehavior: Clip.hardEdge,
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey,
                      ),
                      child: index == 0 
                      ?  Image.asset("assets/images/user_pf.jpg",fit: BoxFit.cover,)     
                      : Image.network("${userOnlineInchat[index] ["profileImage"]}",
                        fit: BoxFit.cover,
                      ),
                    ),

                    Positioned(
                      right: 5, bottom: 3,
                      child: Container(
                        height: 17,
                        width: 17,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white
                        ),
                      ),
                    ),

                    Positioned(
                      right: 5, bottom: 3,
                      child: Container(
                        height: 15,
                        width: 15,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.green
                        ),
                      ),
                    ),
                  ],                 
                ),

                Text(index == 0? "Your note" : "${userOnlineInchat[index] ["userName"]}"),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget buildMessager() {
    return Column(
      children: [
        buildListviewHorizontal(),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Messages",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Text(
                  "Requests",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 2, 122, 219),
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),

        Expanded(
          child: ListView.builder(
            itemCount: chatDataset.length,
            itemBuilder: (context, index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      //mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          clipBehavior: Clip.hardEdge,
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey,
                          ),
                          child: Image.network(
                            "${chatDataset[index]["profileImage"]}", 
                            fit: BoxFit.cover,
                          ),
                        ),

                        SizedBox(width: 15,),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("${chatDataset[index] ["userName"]}",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16
                                ),
                              ),
                              Text("${chatDataset[index] ["message"]}",
                                style: TextStyle(
                                  color: const Color.fromARGB(255, 87, 86, 86)
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top: 24),
                          child: Text("${chatDataset[index] ["timestamp"]}",
                            style: TextStyle(
                              color: const Color.fromARGB(255, 87, 86, 86)
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }

}