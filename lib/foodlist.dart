import 'package:flutter/material.dart';
import 'package:ui_design/foodorder.dart';

class FoodList extends StatelessWidget {
  const FoodList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.green,
        title: const Text(
          "Menu List",
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: GridView.builder(
        itemCount: 5,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 4.0, mainAxisSpacing: 4.0),
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.all(5),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Container(
              margin: EdgeInsets.all(10),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 47,
                    foregroundImage: AssetImage("asset/image/burger.jpeg"),
                  ),
                  Row(
                    children: [
                      const Text(
                        "Burger",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.watch_later,
                        color: Colors.green,
                        size: 18,
                      ),
                      const Text(
                        "20 Min",
                      ),
                      Icon(
                        Icons.star_border,
                        color: Colors.red,
                        size: 18,
                      ),
                      Text(
                        "4.0",
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "150.00 RS.",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.currency_rupee_sharp,
                        size: 20,
                      )
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context){
            return FoodOrder();
          },),).then((value) {
            
          });

        },
        child: Icon(
          Icons.skip_next,
          color: Colors.white,
        ),
      ),
    );
  }
}
