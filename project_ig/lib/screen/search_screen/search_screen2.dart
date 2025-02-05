import 'package:flutter/material.dart';
import 'package:project_ig/dataSource/userDatas/userDatas.dart';

class Searchscreen2 extends StatefulWidget {
  const Searchscreen2({super.key});

  @override
  State<Searchscreen2> createState() => _Searchscreen2State();
}

class _Searchscreen2State extends State<Searchscreen2> {
  final textCrl = TextEditingController();
  final FocusNode focusNode = FocusNode();
  List<Map<String, dynamic>> searchUser = [];

  @override
  void initState() {
    super.initState();
    // Automatically focus the TextField when the screen opens
    WidgetsBinding.instance.addPostFrameCallback((_) {
      FocusScope.of(context).requestFocus(focusNode);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: buildTextField2(),
      ),
      body: SafeArea(
        child: searchUser.isNotEmpty
            ? ListView.builder(
                itemCount: searchUser.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage:
                          NetworkImage(searchUser[index]['profileImage']),
                    ),
                    title: Text(searchUser[index]['userName']),
                  );
                },
              )
            : Center(
                child: Text("Search for users"),
              ),
      ),
    );
  }

  Widget buildTextField2() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color.fromARGB(101, 158, 158, 158),
      ),
      child: TextField(
        controller: textCrl,
        focusNode: focusNode,
        onChanged: (value) {
          setState(() {
            if (value.isEmpty) {
              searchUser = [];
            } else {
              searchUser = instagramUsers.where((user) {
                return user["userName"]
                    .toLowerCase()
                    .contains(value.toLowerCase());
              }).toList();
            }
          });
        },
        decoration: const InputDecoration(
          border: InputBorder.none,
          hintText: "Search",
          hintStyle: TextStyle(color: Colors.grey),
          prefixIcon: Icon(Icons.search, color: Colors.grey),
          contentPadding: EdgeInsets.symmetric(vertical: 13),
        ),
      ),
    );
  }
}
