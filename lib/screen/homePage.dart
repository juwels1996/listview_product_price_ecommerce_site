import 'package:exam_app/model/model.dart';
import 'package:exam_app/screen/secondPage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Model> jewel = [];
  _HomePageState() {
    jewel.add(
      Model(
          name: "T-Shirt for man",
          details: "blue full Shirt",
          price: 250,
          img:
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjAAwQyKxGO39mWtUYjD0s_uhMSmEi4wXyPg&usqp=CAU"),
    );
    jewel.add(
      Model(
          name: "T-Shirt for man",
          details: "blue full Shirt",
          price: 250,
          img:
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjAAwQyKxGO39mWtUYjD0s_uhMSmEi4wXyPg&usqp=CAU"),
    );
    jewel.add(
      Model(
          name: "T-Shirt for man",
          details: "blue full Shirt",
          price: 250,
          img:
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjAAwQyKxGO39mWtUYjD0s_uhMSmEi4wXyPg&usqp=CAU"),
    );
    jewel.add(
      Model(
          name: "T-Shirt for man",
          details: "blue full Shirt",
          price: 250,
          img:
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjAAwQyKxGO39mWtUYjD0s_uhMSmEi4wXyPg&usqp=CAU"),
    );
    jewel.add(
      Model(
          name: "T-Shirt for man",
          details: "blue full Shirt",
          price: 250,
          img:
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjAAwQyKxGO39mWtUYjD0s_uhMSmEi4wXyPg&usqp=CAU"),
    );
    jewel.add(
      Model(
          name: "T-Shirt for man",
          details: "blue full Shirt",
          price: 250,
          img:
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjAAwQyKxGO39mWtUYjD0s_uhMSmEi4wXyPg&usqp=CAU"),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white54.withOpacity(0.5),
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black54,
        ),
        title: Text(
          "Cart",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
                flex: 10,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.shopping_bag,
                            color: Colors.orange,
                          ),
                          Text("5 items in your cart"),
                        ],
                      ),
                      ListView.builder(
                        shrinkWrap: true,
                        itemCount: jewel.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => SecondPage(
                                        model: jewel[index],
                                      )));
                            },
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 8, horizontal: 9),
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 3,
                                      child: Image.network(
                                        "${jewel[index].img}",
                                        height: 80,
                                        width: 80,
                                      ),
                                    ),
                                    Expanded(
                                      flex: 10,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "${jewel[index].name}",
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w900),
                                          ),
                                          Text(
                                            "${jewel[index].details}",
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.black54,
                                                fontWeight: FontWeight.w900),
                                          ),
                                          Text(
                                            "${jewel[index].price}",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w900,
                                                color: Colors.blue),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      )
                    ],
                  ),
                )),
            Expanded(
                flex: 2,
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.orange),
                  child: Text("CheckOut"),
                ))
          ],
        ),
      ),
    );
  }
}
