import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Container(
          child: Text("data"),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Container(
              height: 550,
              width: double.infinity,
              child: Expanded(
                child: ListView.builder(
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 285,
                      width: double.infinity,
                      margin: EdgeInsets.only(
                          left: 10, right: 10, top: 10, bottom: 10),
                      padding: EdgeInsets.only(left: 15, right: 15, top: 10),
                      decoration: BoxDecoration(
                          color: Colors.white30,
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(color: Colors.red.shade800)),
                      child: Column(
                        children: [
                          Container(
                            height: 210,
                            width: double.infinity,
                            child: Row(
                              children: [
                                Container(
                                  width: 185,
                                  // color: Colors.amber,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Donors Name"),
                                      Text(
                                        "Abin krishna",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 21.5,
                                            letterSpacing: 1),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text("Location"),
                                      Text(
                                        "Kochi, Kaloor",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 19.5,
                                            letterSpacing: 1),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text("Contact Number"),
                                      Text(
                                        "9947063352",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 19.5,
                                            letterSpacing: 1),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text("Blood Group"),
                                      Text(
                                        "O+",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 19.5,
                                            letterSpacing: 1),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 170,
                                  color: Colors.blue,
                                )
                              ],
                            ),
                          ),
                          Divider(),
                          SizedBox(
                            height: 7,
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.phone,
                                      size: 25,
                                      color: Colors.red,
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Text(
                                      "CONTACT",
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: 1),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.share,
                                      size: 25,
                                      color: Colors.red,
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Text(
                                      "SHARE",
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: 1),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
