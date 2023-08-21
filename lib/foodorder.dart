import 'package:flutter/material.dart';
import 'package:ui_design/otpscreen.dart';

class FoodOrder extends StatelessWidget {
  const FoodOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          "Order",
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Image.asset("asset/image/burger.jpeg", height: 240),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  "Burger",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                SizedBox(
                  width: 170,
                ),
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
            SizedBox(
              height: 15,
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
            SizedBox(
              height: 15,
            ),
            Text(
              "Some random text picked from somewhere just to get plenty of text, so please ignore what follows next. This application makes it possible using the convenient interface not only to order an interesting dish for yourself, but also to pay for the entire order with the ability to leave a tip to the waiter.",
              style:
                  TextStyle(color: Colors.black, fontSize: 14, wordSpacing: 3),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                TextButton(
                  onPressed: () {},
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(
                        10,
                      ),
                      child: Icon(
                        Icons.favorite_border,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Card(
                    color: Colors.teal,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 75,
                        right: 75,
                        top: 10,
                        bottom: 10,
                      ),
                      child: Text(
                        "Add to Cart",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context){
            return OTPScreen();
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
