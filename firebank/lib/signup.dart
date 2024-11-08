import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  TextEditingController _cpassword=TextEditingController();
  void signin()async{
    await FirebaseAuth.instance.createUserWithEmailAndPassword(email: _email.text.trim(), password: _password.text.trim());
  }
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
                              controller: _email,
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
                              controller: _password,
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
                              controller: _cpassword,
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
                    onPressed: () {
                      if(_password.text==_cpassword.text){
                        signin();
                      }else{
                        print("doesnt match");
                      }
                    },
                    child: Text(
                      "SIGN-UP",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 15,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    // height: 5,
                    width: 150,
                    child: Divider(),
                  ),
                  Text(
                    "  OR  ",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  Container(
                    // height: 5,
                    width: 150,
                    child: Divider(),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 25,
                  width: 25,
                  child: Image.asset("./images/g.jpg"),
                ),
                Text("signup with google"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
