import 'package:flutter/material.dart';
import 'package:plant_app/Tree_class.dart';
import 'package:plant_app/main.dart';

class Tree_page extends StatefulWidget {
  const Tree_page({Key? key}) : super(key: key);

  @override
  State<Tree_page> createState() => _Tree_pageState();
}

class _Tree_pageState extends State<Tree_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return Tree();
              },
            ));
          },
          child: Container(
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.all(3),
            child: Icon(
              Icons.home,
              color: Colors.black,
              size: 35,
            ),
          ),
        ),
        title: Text(
          "Tree Plant Shoping",
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w800,
              fontSize: 20),
        ),
      ),
      body: GridView.builder(
        itemCount: Tree_class.Tree_p_I.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10),
        itemBuilder: (context, index) {
          return Card(
            child: Column(
              children: [
                Container(
                  height: 200,
                  width: double.infinity,
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              "assets/images/${Tree_class.Tree_p_I[index]}"),
                          fit: BoxFit.fill),
                      border: Border.all(width: 2,
                          color: Colors.black),
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                ),
                Container(
                  height: 40,
                  width: 200,
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                      border: Border.all(width: 1,
                          color: Colors.black),
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: Text(
                    "Name : ${Tree_class.Tree_p_n[index]}",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w900),
                  ),
                ),
                Container(
                  height: 40,
                  width: 100,
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                      border: Border.all(width: 1,
                          color: Colors.black),
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: Text(
                    "R.s : ${Tree_class.Tree_p_R_s[index]}",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w900),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
