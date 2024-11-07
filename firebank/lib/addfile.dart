import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Addfile extends StatefulWidget {
  const Addfile({super.key});

  @override
  State<Addfile> createState() => _AddfileState();
}

class _AddfileState extends State<Addfile> {
  TextEditingController c1 = TextEditingController();
  TextEditingController c2 = TextEditingController();
  TextEditingController c3 = TextEditingController();
  TextEditingController c4 = TextEditingController();
  TextEditingController c5 = TextEditingController();
  TextEditingController c6 = TextEditingController();
  TextEditingController c7 = TextEditingController();
  TextEditingController c8 = TextEditingController();
  List<String> ls = ["o+", "o-", "a+", "a-"];
  bool img = false;
  String? seletedgroup;
  File? _image;
  bool chkbx = false;
  ImagePicker _picker = ImagePicker();
  Map mp = {};
  void pickimage() async {
    final _pickedfile = await _picker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = File(_pickedfile!.path);
      img = true;
    });
  }

  void savedata() async {
    final bytes = await _image!.readAsBytes();
    final base64img = base64Encode(bytes);
    mp = {
      "name": c1.text,
      "email": c2.text,
      "phone": c3.text,
      "place": c4.text,
      "group": seletedgroup.toString(),
      "dob": c5.text,
      "weight": c6.text,
      "age": c7.text,
      "location": c8.text,
      "profile": base64img.toString()
    };
    print(mp.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          // color: Colors.cyan,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("./images/bck2.jpeg"), fit: BoxFit.contain)),
          child: ListView(
            children: [
              Container(
                height: 220,
                // color: const Color.fromARGB(255, 172, 13, 13),
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // =========================================stack start
                    Container(
                        height: 140,
                        width: 140,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.grey[300]),
                        child: GestureDetector(
                          onTap: pickimage,
                          child: img
                              ? ClipOval(
                                  child: Image.file(
                                  _image!,
                                  fit: BoxFit.cover,
                                ))
                              : IconButton(
                                  onPressed: () {
                                    pickimage();
                                  },
                                  icon: Icon(
                                    Icons.perm_identity_outlined,
                                    size: 125,
                                  )),
                          //         )
                        )),
                    // =========================================stack end
                  ],
                ),
              ),
              // ================================================ padding containers start
              Container(
                height: 50,
                // width: double.infinity,
                margin: EdgeInsets.only(left: 20),
                alignment: Alignment.centerLeft,
                child: Text("Name"),
              ),
              Container(
                height: 50,
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
                  controller: c1,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                      hintText: "FullName",
                      border: InputBorder.none,
                      hoverColor: Colors.red),
                ))),
              ),
              // ---------------------------------- fullname ^
              Container(
                height: 50,
                // width: double.infinity,
                margin: EdgeInsets.only(left: 20),
                alignment: Alignment.centerLeft,
                child: Text("Email"),
              ),
              Container(
                height: 50,
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
                  controller: c2,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      hintText: "Email",
                      border: InputBorder.none,
                      hoverColor: Colors.red),
                ))),
              ),
              // ---------------------------------- email ^
              Container(
                height: 50,
                // width: double.infinity,
                margin: EdgeInsets.only(left: 20),
                alignment: Alignment.centerLeft,
                child: Text("Phone"),
              ),
              Container(
                height: 50,
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
                  controller: c3,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      hintText: "ContactNumber",
                      border: InputBorder.none,
                      hoverColor: Colors.red),
                ))),
              ),
              // ---------------------------------- contact number ^
              Container(
                height: 50,
                // width: double.infinity,
                margin: EdgeInsets.only(left: 20),
                alignment: Alignment.centerLeft,
                child: Text("Place"),
              ),
              Container(
                height: 50,
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
                  controller: c4,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      hintText: "Place,District",
                      border: InputBorder.none,
                      hoverColor: Colors.red),
                ))),
              ),
              // ---------------------------------- place ^

              Row(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 50,
                        width: 130,
                        margin: EdgeInsets.only(left: 20),
                        alignment: Alignment.centerLeft,
                        child: Text("Blood Group"),
                      ),
                      Container(
                        height: 50,
                        width: 130,
                        margin: EdgeInsets.only(left: 20, right: 20),
                        padding: EdgeInsets.only(left: 15, right: 15),
                        alignment: Alignment.centerLeft,
                        decoration: BoxDecoration(
                          border: Border.all(width: .1),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 10,
                              spreadRadius: 0,
                              blurStyle: BlurStyle.outer,
                            )
                          ],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(seletedgroup == null
                                ? 'Group'
                                : '$seletedgroup'),
                            //  SizedBox(width: 90,),
                            DropdownButton(
                              underline: Container(
                                height: 0,
                              ),
                              items: ls.map((String bloodgrp) {
                                return DropdownMenuItem(
                                  value: bloodgrp,
                                  child: Text(bloodgrp),
                                );
                              }).toList(),
                              onChanged: (value) {
                                setState(() {
                                  seletedgroup = value;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 50,
                        width: 150,
                        margin: EdgeInsets.only(left: 20),
                        alignment: Alignment.centerLeft,
                        child: Text("Date of Birth"),
                      ),
                      Container(
                        height: 50,
                        width: 150,
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
                          controller: c5,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              hintText: "dd-mm-yy",
                              border: InputBorder.none,
                              hoverColor: Colors.red),
                        ))),
                      ),
                    ],
                  ),
                ],
              ),
// =========================================>>
              SizedBox(height: 3),
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 40,
                        width: 130,
                        margin: EdgeInsets.only(left: 20),
                        alignment: Alignment.centerLeft,
                        child: Text("Weight"),
                      ),
                      Container(
                        height: 50,
                        width: 130,
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
                          controller: c6,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              hintText: "Weight",
                              border: InputBorder.none,
                              hoverColor: Colors.red),
                        ))),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 40,
                        width: 130,
                        margin: EdgeInsets.only(left: 20),
                        alignment: Alignment.centerLeft,
                        child: Text("Age"),
                      ),
                      Container(
                        height: 50,
                        width: 130,
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
                          controller: c7,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              hintText: "age",
                              border: InputBorder.none,
                              hoverColor: Colors.red),
                        ))),
                      ),
                    ],
                  ),
                ],
              ),

              // ---------------------------------- blood group ^
              Container(
                height: 50,
                // width: double.infinity,
                margin: EdgeInsets.only(left: 20),
                alignment: Alignment.centerLeft,
                child: Text("Location"),
              ),
              Container(
                height: 50,
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
                  controller: c8,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      hintText: "location",
                      border: InputBorder.none,
                      hoverColor: Colors.red),
                ))),
              ),
              // ---------------------------------- DOB ^
              // =================================== checkbox v
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  Checkbox(
                    value: chkbx,
                    onChanged: (value) {
                      setState(() {
                        chkbx = true;
                      });
                    },
                  ),
                  Text("I Accept the Terms & conditions ")
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                child: Center(
                  child: TextButton(
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.only(
                            left: 25, right: 25, top: 7, bottom: 7),
                        backgroundColor: Colors.red,
                        foregroundColor: Colors.white,
                        side: BorderSide(width: 0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        elevation: 10,
                        overlayColor: Colors.blue,
                      ),
                      onPressed: () {
                        int agee = int.parse(c7.text);
                        int weii = int.parse(c6.text);
                        if (chkbx == true) {
                          if (agee >= 18) {
                            if (_image != null) {
                              if (weii >= 45) {
                                if (c1.text != null && c2.text != null) {
                                  savedata();
                                  Navigator.pop(context);
                                } else {
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        title: Text("OOPS!!!"),
                                        content: Text(
                                            "All Input Fields Must Want to Fill...."),
                                        actions: [
                                          TextButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              child: Text("OK"))
                                        ],
                                      );
                                    },
                                  );
                                }
                              } else {
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      title: Text("OOPS!!!"),
                                      content:
                                          Text("Your Weight Is Too LESS...."),
                                      actions: [
                                        TextButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            child: Text("OK"))
                                      ],
                                    );
                                  },
                                );
                              }
                            } else {
                              showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    title: Text("SORRY!!!"),
                                    content: Text("Image Is Mandotory...."),
                                    actions: [
                                      TextButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: Text("OK"))
                                    ],
                                  );
                                },
                              );
                            }
                          } else {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: Text("OOPS!!!"),
                                  content: Text("You Must Above 18.."),
                                  actions: [
                                    TextButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: Text("OK"))
                                  ],
                                );
                              },
                            );
                          }
                        } else {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: Text("OOPS!!!"),
                                content: Text(
                                    "You Must Agree the Terms & Conditions..."),
                                actions: [
                                  TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text("OK"))
                                ],
                              );
                            },
                          );
                        }
                      },
                      child: Text("  SUBMIT  ")),
                ),
              ),
              SizedBox(
                height: 25,
              ),

              // ================================================ padding containers end
            ],
          )),
    );
  }
}
