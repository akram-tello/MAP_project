// import 'dart:html';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'read.dart';

class create extends StatelessWidget {
  TextEditingController Medicine = TextEditingController();
  TextEditingController Price = TextEditingController();

  CollectionReference ref = FirebaseFirestore.instance.collection('MyMeds');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PharmaX'),
        backgroundColor: Colors.pinkAccent,
        actions: [
          MaterialButton(
            onPressed: () {
              ref.add({
                'Medicine': Medicine.text,
                'Price': Price.text,
              }).whenComplete(() {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (_) => Home()));
              });
            },
            child: Text(
              "Create",
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
          ],
        ),
      ),
    );
  }
}
