import 'package:firebase_auth/firebase_auth.dart';
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
                    Container(
                        height: 25,
                        width: 25,
                        child: Stack(
                          children: [
                            Positioned(
                                left: 16,
                                child: Container(
                                  height: 6.5,
                                  width: 6.5,
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(100)),
                                )),
                            Icon(
                              Icons.notifications,
                              color: Colors.grey,
                            ),
                          ],
                        ))
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
                        width: 300,
                        child: Card(
                          child: Row(
                            children: [
                              SizedBox(
                                width: 3,
                              ),
                              Container(
                                width: 90,
                                height: double.infinity,
                                child: Image.asset("./images/bld.jpg"),
                              ),
                              Container(
                                height: 160,
                                width: 199,
                                child: Column(
                                  children: [
                                    Container(
                                      height: 97,
                                      width: double.infinity,
                                      alignment: Alignment.topCenter,
                                      child: Text(
                                        "BLOOD     DONATION        DRIVE",
                                        style: TextStyle(
                                            letterSpacing: 1.5,
                                            fontSize: 23,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8.5,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: 29,
                                          width: 87,
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
                      SizedBox(
                        width: 9,
                      ),
                      Container(
                        height: 150,
                        width: 300,
                        child: Card(
                          child: Column(children: [
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "YOUR DONATED BLOOD CAN SAVE A LIFE",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 13),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 10, right: 10),
                              child: Text(
                                  "AND THET LIFE CAN SAVE ANOTHER,BE A PART OF THE CHAIN",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red,
                                      fontSize: 17,
                                      letterSpacing: 1,
                                      wordSpacing: 1)),
                            ),
                            SizedBox(
                              height: 13,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 50,
                                  width: 55,
                                  child: Image.asset("./images/bb.jpeg"),
                                ),
                                Text(
                                  "Dr: A P J ABDHUL KALAM",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey),
                                ),
                                SizedBox(
                                  width: 2,
                                )
                              ],
                            )
                          ]),
                        ),
                      ),
                      SizedBox(
                        width: 9,
                      ),
                      Container(
                        height: 150,
                        width: 300,
                        child: Card(
                          child: Row(
                            children: [
                              SizedBox(
                                width: 3,
                              ),
                              Container(
                                width: 105,
                                height: double.infinity,
                                child: Image.asset("./images/do.jpeg"),
                              ),
                              Container(
                                height: 160,
                                width: 184,
                                child: Column(
                                  children: [
                                    Container(
                                      height: 100,
                                      width: double.infinity,
                                      alignment: Alignment.topCenter,
                                      child: Text(
                                        "DONATE     BLOOD,       SAVE A LIFE",
                                        style: TextStyle(
                                            letterSpacing: 1.5,
                                            fontSize: 23,
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
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          // ====================================================================
          Container(
            // height: 558,
            height: 666,
            width: double.infinity,
            child: Card(
              child: Column(
                children: [
                  SizedBox(height: 15),
                  Container(
                    height: 100,
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 95,
                          width: 95,
                          padding: EdgeInsets.only(top: 1, bottom: 2),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(27)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.campaign,
                                color: Colors.red,
                                size: 40,
                              ),
                              Text(
                                "CAMPAINS",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                    letterSpacing: 1),
                              )
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, "/adddonor");
                          },
                          child: Container(
                            height: 95,
                            width: 95,
                            padding: EdgeInsets.only(top: 1, bottom: 2),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(27)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Icons.bloodtype,
                                  color: Colors.red,
                                  size: 40,
                                ),
                                Text(
                                  "DONATE",
                                  style: TextStyle(
                                     fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 1),
                                )
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, "/details");
                          },
                          child: Container(
                            height: 95,
                            width: 95,
                            padding: EdgeInsets.only(top: 1, bottom: 2),
                            decoration: BoxDecoration(
                                color: Colors.white60,
                                // border: Border.all(width: .5),
                                borderRadius: BorderRadius.circular(27)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Icons.switch_account_outlined,
                                  color: Colors.red,
                                  size: 40,
                                ),
                                Text(
                                  "FIND DONOR",
                                  style: TextStyle(
                                     fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: -0.5),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      SizedBox(width: 25,),
                      Text("BLOOD REQUESTS",style: TextStyle(fontWeight: FontWeight.bold,letterSpacing: 1,fontSize: 12),),
                    ],
                  ),
                  SizedBox(height: 5),
                    Container(
                      height: 125,
                    width: double.infinity,
                    padding: EdgeInsets.only(left: 15,right: 15),
                    child: ListView(scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          height:140 ,
                          width: 300,
                          padding: EdgeInsets.all(8),
                          margin: EdgeInsets.only(left: 5,right: 5),
                          decoration: BoxDecoration(
                            color: Colors.red,borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            children: [
                            Row(
                              children: [
                                Container(
                                  width: 190,
                                  height: 109,
                                
                                  child: Column(
                                    children: [
                                      SizedBox(height: 8,),
                                      Row(
                                        children: [
                                           SizedBox(width: 2.5,),
                                          Icon(Icons.person,  color: Colors.white,),
                                           SizedBox(width: 5,),
                                          Text("DRUV CHUHAN",style: TextStyle( fontSize: 16,letterSpacing: 1,fontWeight: FontWeight.bold, color: Colors.white,),)
                                        ],
                                      ),
                                       SizedBox(height: 10,),
                                      Row(
                                        children: [
                                          SizedBox(width: 3,),
                                          Icon(Icons.location_on,  color: Colors.white,),
                                           SizedBox(width: 5),
                                          Container(
                                            height: 58,width: 158,
                                             child: Text("RAJASTAN MULTINATIONAL HOSPITAL",
                                             style: TextStyle(  color: Colors.white,letterSpacing: 1,fontWeight: FontWeight.bold, ),))
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 92,
                                  height: 109,
                                  child: Column(
                                    children: [
                                      Text("1 UNITS",style: TextStyle(color: Colors.white,fontSize: 12),),
                                      Container(
                                        height: 80,
                                        width: 80,
                                        decoration: BoxDecoration(
                                          // image: DecorationImage(
                                          //   image: AssetImage("./images/uu.jpg"),)
                                        ),alignment: Alignment.bottomCenter,
                                        child: Text("O+",style: TextStyle( fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            )
                            ],
                          ),
                        ),

                         Container(
                          height:140 ,
                          width: 300,
                           margin: EdgeInsets.only(left: 5,right: 5),
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.red,borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            children: [
                            Row(
                              children: [
                                Container(
                                  width: 190,
                                  height: 109,
                                
                                  child: Column(
                                    children: [
                                      SizedBox(height: 8,),
                                      Row(
                                        children: [
                                           SizedBox(width: 2.5,),
                                          Icon(Icons.person,  color: Colors.white,),
                                           SizedBox(width: 5,),
                                          Text("CHUVAN DRUV",style: TextStyle( fontSize: 16,letterSpacing: 1,fontWeight: FontWeight.bold, color: Colors.white,),)
                                        ],
                                      ),
                                       SizedBox(height: 10,),
                                      Row(
                                        children: [
                                          SizedBox(width: 3,),
                                          Icon(Icons.location_on,  color: Colors.white,),
                                           SizedBox(width: 5),
                                          Container(
                                            height: 58,width: 158,
                                             child: Text("MANIPUR INTERNATIONAL HOSPITAL",
                                             style: TextStyle(  color: Colors.white,letterSpacing: 1,fontWeight: FontWeight.bold, ),))
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 92,
                                  height: 109,
                                  child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("2 UNITS",style: TextStyle(color: Colors.white,fontSize: 12),),
                                      Container(
                                        height: 55,
                                        width: 55,
                                        
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage("./images/pngegg.png"),)
                                        ),alignment: Alignment.center,
                                        child: Text("O+",style: TextStyle( fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            )
                            ],
                          ),
                        )
                      ],
                    ),
                    ),
                  SizedBox(height: 20,),
                  Container(
                    height: 230,
                    width: double.infinity,
                    margin: EdgeInsets.only(left: 15, right: 15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.white70),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 50,
                          width: double.infinity,
                          padding: EdgeInsets.only(left: 10, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "HOSPITALITY ENQUIRY",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1),
                              ),
                              Icon(
                                Icons.arrow_forward_ios_outlined,
                                color: Colors.purple[900],
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 50,
                          width: double.infinity,
                          padding: EdgeInsets.only(left: 10, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "DOCTORS  CONSELTENCY",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1),
                              ),
                              Icon(
                                Icons.arrow_forward_ios_outlined,
                                color: Colors.purple[900],
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 50,
                          width: double.infinity,
                          // color: Colors.white10,
                          padding: EdgeInsets.only(left: 10, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "CHECKUP  STATUS",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1),
                              ),
                              Icon(
                                Icons.arrow_forward_ios_outlined,
                                color: Colors.purple[900],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 105,
                    width: double.infinity,
                    margin: EdgeInsets.only(left: 15, right: 15),
                    decoration: BoxDecoration(
                        color: Colors.white60,
                        borderRadius: BorderRadius.circular(25)),
                    child: Row(
                      children: [
                        Container(
                          height: 90,
                          width: 90,
                          padding: EdgeInsets.all(22),
                          child: Image.asset(
                            "./images/ic.png",
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                height: .5,
                              ),
                              Text(
                                "INVITE A FRIEND",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1,
                                    wordSpacing: 1),
                              ),
                              SizedBox(
                                height: 1,
                              ),
                              Container(
                                  height: 50,
                                  width: 230,
                                  child: Text(
                                    "INVITE YOUR FRIENDS OR FAMILY MEMBERS TO DONATE A BLOOD",
                                    style: TextStyle(
                                        color: Colors.grey[800],
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1,
                                        wordSpacing: 0,
                                        fontSize: 12),
                                  ))
                            ],
                          ),
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
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            SizedBox(
              width: 8,
            ),
            IconButton(icon: Icon(Icons.menu), onPressed: () {}),
            Spacer(),
            IconButton(icon: Icon(Icons.search), onPressed: () {}),
            IconButton(
                onPressed: () {
                  print("HII");
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text("SURE!"),
                        content: Text("Are you want to logout"),
                        actions: [
                          MaterialButton(
                            onPressed: () async{
                          await FirebaseAuth.instance.signOut();
                          Navigator.pop(context);
                        },child: Text("LOGOUT"),)
                        ],
                      );
                    },
                  );
                  Navigator.pushNamed(context, "/pro");
                },
                icon: Icon(
                  Icons.logout_outlined,
                  size: 29,
                )),
            SizedBox(
              width: 8,
            ),
          ],
        ),
      ),
      floatingActionButton:
          FloatingActionButton(child: Icon(Icons.add), onPressed: () {}),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}


// https://m2.material.io/components/app-bars-bottom/flutter#bottom-app-bar-example