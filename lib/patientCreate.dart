import 'patientPost.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';


class patientCreate extends StatelessWidget {
  TextEditingController Medicine = TextEditingController();
  TextEditingController Price = TextEditingController();
  TextEditingController Description = TextEditingController();

  CollectionReference ref = FirebaseFirestore.instance.collection('posts');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Request a Medicine'),
        backgroundColor: Colors.pinkAccent,
        actions: [
          MaterialButton(
            onPressed: () {
              ref.add({
                'Medicine': Medicine.text,
                'Price': Price.text,
                'Description' : Description.text,
              }).whenComplete(() {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (_) => patientPost()));
              });
            },
            child: Text(
              "Create",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),

          ),
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(border: Border.symmetric()),
              child: TextField(
                controller: Medicine,
                decoration: InputDecoration(
                  hintText: 'Add a New Medicine',
                ),
              ),

            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(border: Border.symmetric()),
                child: TextField(
                  controller: Price,
                  expands: false,
                  maxLines: null,
                  decoration: InputDecoration(
                    hintText: 'Add The Price',
                  ),
                ),

              ),

            ),
            SizedBox(
              height: 2,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(border: Border.symmetric()),
                child: TextField(
                  controller: Description,
                  expands: false,
                  maxLines: null,
                  decoration: InputDecoration(
                    hintText: 'Medicine Description',
                  ),
                ),


              ),

            ),
            SizedBox(
              height: 250,
            ),
          ],


        ),
      ),
    );
  }
}