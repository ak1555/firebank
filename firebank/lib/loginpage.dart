import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _email=TextEditingController();
  TextEditingController _password=TextEditingController();

  Future loginfun()async{
    await FirebaseAuth.instance.signInWithEmailAndPassword(email: _email.text, password: _password.text);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: ListView(
          children: [
            Container(
              height: 500,
              width: double.infinity,
              child: Column(
                children: [
                  Container(
                    height: 250,
                    width: 250,
                    padding: EdgeInsets.all(50),
                    child: Image.asset("./images/g.jpg"),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Bl",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "oo",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.red,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "dLink",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              height: 390,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 60,
                    // width: double.infinity,
                    margin: EdgeInsets.only(left: 23, right: 23),
                    padding: EdgeInsets.only(left: 15, right: 15),
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.red),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade200,
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
                              controller: _email,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.email_outlined,
                            color: Colors.red,
                          ),
                          hintText: "EMAIL",
                          border: InputBorder.none,
                          hoverColor: Colors.red),
                    ))),
                  ),
                  Container(
                    height: 60,
                    // width: double.infinity,
                    margin: EdgeInsets.only(left: 23, right: 23),
                    padding: EdgeInsets.only(left: 15, right: 15),
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.red),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade300,
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
                              controller: _password,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.remove_red_eye_outlined,
                            color: Colors.red,
                          ),
                          hintText: "PASSWORD",
                          border: InputBorder.none,
                          hoverColor: Colors.red),
                    ))),
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
                          onPressed: () {
                            loginfun();
                          },
                          child: Text(
                            "LOGIN",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 1,
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

                              // backgroundColor: Colors.red.shade500
                              ),
                          onPressed: () {
                            Navigator.pushNamed(context, "/signup");
                          },
                          child: Text(
                            "SIGNUP",
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
