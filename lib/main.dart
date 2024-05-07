import 'package:flutter/material.dart';
import 'package:plant_app/Tree_page.dart';

void main() {
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
    home: Tree(),
  ));
}

class Tree extends StatefulWidget {
  const Tree({Key? key}) : super(key: key);

  @override
  State<Tree> createState() => _TreeState();
}

class _TreeState extends State<Tree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Plant Shop",
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w800,
              fontSize: 20),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
              size: 35,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
              color: Colors.black,
              size: 35,
            ),
            label: 'favarite',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              color: Colors.black,
              size: 35,
            ),
            label: 'Settings',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.black,
              size: 35,
            ),
            label: 'men',
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              height: 50,
              alignment: Alignment.center,
              width: double.infinity,
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.all(3),
              child: Text(
                "Plant A Tree For Life",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w900),
              ),
            ),
            InkWell(onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) {
                return Tree_page();
              },));
            },
              child: Container(
                height: 350,
                width: 400,
                alignment: Alignment.center,
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/Tree_home.webp"),
                        fit: BoxFit.fill)),
              ),
            ),
            Container(
              height: 50,
              alignment: Alignment.center,
              width: double.infinity,
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.all(3),
              child: Text(
                "Worldwide Delivery \n Within 10-15 Days",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w900),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
