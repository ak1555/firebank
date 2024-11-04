import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          "SIGNUP",
          style: TextStyle(
              fontWeight: FontWeight.bold, letterSpacing: 2, fontSize: 30),
        )),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: ListView(
          children: [
            SizedBox(
              height: 50,
            ),
            Row(
              children: [
                Container(
                  height: 240,
                  width: 240,
                  padding: EdgeInsets.all(15),
                  child: Image.asset("./images/log.jpg"),
                ),
                Container(
                    height: 240,
                    width: 163,
                    alignment: Alignment.center,
                    child: Text(
                      "congratulations, to becoming the part of our team",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                          wordSpacing: 1,
                          color: Colors.red),
                    ))
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 350,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 60,
                    // width: double.infinity,
                    margin: EdgeInsets.only(left: 20, right: 20),
                    padding: EdgeInsets.only(left: 15, right: 15),
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                      border: Border.all(width: .1),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 10,
                          spreadRadius: 1,
                          blurStyle: BlurStyle.outer,
                        )
                      ],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Expanded(
                        child: Expanded(
                            child: TextField(
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                          hintText: "USER-NAME",
                          prefixIcon: Icon(
                            Icons.perm_identity_rounded,
                            color: Colors.red,
                          ),
                          border: InputBorder.none,
                          hoverColor: Colors.red),
                    ))),
                  ),
                  Container(
                    height: 60,
                    // width: double.infinity,
                    margin: EdgeInsets.only(left: 20, right: 20),
                    padding: EdgeInsets.only(left: 15, right: 15),
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                      border: Border.all(width: .1),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 10,
                          spreadRadius: 1,
                          blurStyle: BlurStyle.outer,
                        )
                      ],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Expanded(
                        child: Expanded(
                            child: TextField(
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.remove_red_eye,
                            color: Colors.red,
                          ),
                          hintText: "PASSWORD",
                          border: InputBorder.none,
                          hoverColor: Colors.red),
                    ))),
                  ),
                  Container(
                    height: 60,
                    // width: double.infinity,
                    margin: EdgeInsets.only(left: 20, right: 20),
                    padding: EdgeInsets.only(left: 15, right: 15),
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                      border: Border.all(width: .1),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 10,
                          spreadRadius: 1,
                          blurStyle: BlurStyle.outer,
                        )
                      ],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Expanded(
                        child: Expanded(
                            child: TextField(
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.remove_red_eye,
                            color: Colors.red,
                          ),
                          hintText: "CONFORM-PASSWORD",
                          border: InputBorder.none,
                          hoverColor: Colors.red),
                    ))),
                  ),
                ],
              ),
            ),
            Container(
              height: 60,
              width: double.infinity,
              alignment: Alignment.center,
              child: Container(
                height: 60,
                width: 200,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red.shade500),
                    onPressed: () {},
                    child: Text(
                      "SIGN-UP",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
              ),
            ),
            Text("signup with")
          ],
        ),
      ),
    );
  }
}
