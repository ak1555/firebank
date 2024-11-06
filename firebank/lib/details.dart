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
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.red.shade600,
        title: Container(
          child: Center(
              child: Text(
            "BLOOD BANK",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
                fontSize: 25,
                color: Colors.white),
          )),
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
                      height: 235,
                      width: double.infinity,
                      margin: EdgeInsets.only(
                          left: 10, right: 10, top: 15, bottom: 10),
                      padding: EdgeInsets.only(left: 15, right: 15, top: 10),
                      decoration: BoxDecoration(
                          color: Colors.white30,
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(color: Colors.red.shade800)),
                      child: Column(
                        children: [
                          Container(
                            height: 155,
                            width: double.infinity,
                            child: Row(
                              children: [
                                Container(
                                  width: 178,
                                  // color: Colors.amber,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Donors Name"),
                                      Text(
                                        "Abin krishna",
                                        style: TextStyle(
                                            height: .65,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 19,
                                            letterSpacing: 1),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text("Location"),
                                      Text(
                                        "Kochi, Kaloor",
                                        style: TextStyle(
                                            height: .65,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17,
                                            letterSpacing: 1),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text("Contact Number"),
                                      Text(
                                        "9947063352",
                                        style: TextStyle(
                                            height: .65,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17,
                                            letterSpacing: 1),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text("Blood Group"),
                                      Text(
                                        "O+",
                                        style: TextStyle(
                                            height: .65,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17,
                                            letterSpacing: 1),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 130,
                                  // color: Colors.blue,
                                  child: Column(
                                    children: [
                                      Row(mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              
                                            },
                                            child: Container(
                                              height: 50,
                                              child: Text(
                                                "EDIT",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.red,
                                                    fontSize: 13,
                                                    letterSpacing: 1),
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 5,),
                                          Container(
                                            height: 50,
                                            child: Text(
                                              "/",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.red,
                                                  fontSize: 13,
                                                  letterSpacing: 1),
                                            ),
                                          ),
                                          SizedBox(width: 5,),
                                          GestureDetector(
                                            onTap: () {
                                              print("delete");
                                            },
                                            child: Container(
                                              height: 50,
                                              child: Text(
                                                "DELETE",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.red,
                                                    fontSize: 13,
                                                    letterSpacing: 1),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Container(
                                        height: 90,
                                        width: 90,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          child: Image.asset("./images/g.jpg"),
                                        ),
                                      )
                                    ],
                                  ),
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
                                      size: 24,
                                      color: Colors.red,
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Text(
                                      "CONTACT",
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 15,
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
                                      size: 24,
                                      color: Colors.red,
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Text(
                                      "SHARE",
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 15,
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
