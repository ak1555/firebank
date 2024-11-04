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
      appBar: AppBar(backgroundColor: Colors.green,
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
                    height: 270,
                    width: double.infinity,
                    margin: EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 10),
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.white30,
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(color: Colors.red.shade800)
                    ),child: Column(
                      children: [
                        Container(height: 190,width: double.infinity,),
                        Divider()
                      ],
                    ),
                  );
                },),
              ),
            ),
          ],
        ),
      ),
    );
  }
}