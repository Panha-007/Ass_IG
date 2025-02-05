import 'package:flutter/material.dart';
import 'package:project_ig/dataSource/imagesIn_search_screen/imageIn_search_screen.dart';
import 'package:project_ig/screen/search_screen/search_screen2.dart';


class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  var textCrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            buildButtonSearch(),
            SizedBox(height: 10,),
            buildGridView(),
          ],
        )
      ),
    );
  }

  Widget buildButtonSearch() {
  return Padding(
    padding: const EdgeInsets.only(left: 15, right: 15),
    child: GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Searchscreen2()), 
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color.fromARGB(101, 158, 158, 158),
        ),
        alignment: Alignment.centerLeft,
        child: Row(
          children: const [
            Icon(Icons.search, color: Colors.grey),
            SizedBox(width: 10),
            Text(
              "Search",
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),
          ],
        ),
      ),
    ),
  );
}


  Widget buildGridView(){
    return Expanded(
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 1,
          crossAxisSpacing: 1,
          mainAxisExtent: 150,
        ), 
        itemCount: imageInSearchScreen.length,
        itemBuilder: (context, index) {
          return Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(1),
              color: Colors.grey
            ),
            child: Image.network("${imageInSearchScreen[index] ["Image"]}",
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }

}