import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: ListView(children: [
          Container(
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                // SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "WELCOME",
                          style: TextStyle(color: Colors.black87),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          "DRUV CHUVAN",
                          style: TextStyle(
                            letterSpacing: 3,
                            fontSize: 19,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                    Icon(
                      Icons.notification_add,
                      color: Colors.grey,
                    )
                  ],
                ),
                // ==================================SECTION 2
                SizedBox(
                  height: 25,
                ),
                Container(
                  height: 200,
                  width: double.infinity,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        height: 150,
                        width: 320,
                        child: Card(
                          child: Row(
                            children: [
                              SizedBox(
                                width: 3,
                              ),
                              Container(
                                width: 100,
                                height: double.infinity,
                                child: Image.asset("./images/bld.jpg"),
                              ),
                              Container(
                                height: 160,
                                width: 209,
                                child: Column(
                                  children: [
                                    Container(
                                      height: 100,
                                      width: double.infinity,
                                      alignment: Alignment.topCenter,
                                      child: Text(
                                        "BLOOD     DONATION        DRIVE",
                                        style: TextStyle(
                                            letterSpacing: 1.5,
                                            fontSize: 25,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8.5,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: 27,
                                          width: 85,
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                              color: Colors.black,
                                              borderRadius:
                                                  BorderRadius.circular(7)),
                                          child: Text(
                                            "31 JULY",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 2.5,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "10:00 AM ONWARDS",
                                          style: TextStyle(
                                              letterSpacing: 2,
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 550,
            width: double.infinity,
            child: Card(
              child: Column(
                children: [
                  SizedBox(height: 15),
                  Container(
                    height: 100,
                    width: double.infinity,
                    child: Row(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          color: Colors.white,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
