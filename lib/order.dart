import 'package:flutter/material.dart';

class Order extends StatelessWidget {
  const Order({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 20),
              alignment: Alignment.topLeft,
              child: Text(
                "My Order",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
            Expanded(
              flex: 8,
              child: Container(
                margin: EdgeInsets.all(20),
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        Image.asset(
                          "asset/image/burger.jpeg",
                          width: 80,
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Burger',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 20),
                                ),
                                Text(
                                  '150.00',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 13),
                                ),
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          child: Icon(
                            Icons.delete,
                            color: Colors.red,
                            size: 24,
                          ),
                          onTap: () {},
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 20, bottom: 20),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Grand Total : ",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  width: 63,
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 20),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "450.00 ",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
            Divider(
              color: Colors.grey,
            ),
            SizedBox(
              height: 15,
            ),
            Expanded(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.only(left: 80, right: 80),
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
                onPressed: () {},
                child: Text(
                  "Place Order",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
