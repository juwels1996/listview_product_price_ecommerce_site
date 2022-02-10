import 'package:exam_app/model/model.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  final Model? model;
  SecondPage({this.model});

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  int quantity = 1;
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
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 7,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("My Cart"),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                            flex: 3,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Image.network(
                                "${widget.model!.img}",
                                fit: BoxFit.cover,
                                height: 100,
                              ),
                            )),
                        Expanded(
                            flex: 7,
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("${widget.model!.name}"),
                                  Text("${widget.model!.details}"),
                                  Text("${widget.model!.price}"),
                                  Padding(
                                    padding: EdgeInsets.only(top: 12),
                                    child: Row(
                                      children: [
                                        OutlinedButton(
                                          onPressed: () {
                                            setState(() {
                                              quantity = quantity + 1;
                                              print(quantity);
                                            });
                                          },
                                          child: Icon(Icons.add),
                                          style: OutlinedButton.styleFrom(
                                            shape: CircleBorder(),
                                            padding: EdgeInsets.all(10),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 8),
                                          child: Text("${quantity}"),
                                        ),
                                        OutlinedButton(
                                          onPressed: () {
                                            setState(() {
                                              quantity = quantity - 1;
                                              print(quantity);
                                            });
                                          },
                                          child: Icon(Icons.remove),
                                          style: OutlinedButton.styleFrom(
                                            shape: CircleBorder(),
                                            padding: EdgeInsets.all(10),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ))
                      ],
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text("Total Price is : "),
                      Text("${widget.model!.price! * quantity +shippingCost}"),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  int shippingCost = 10;
}
