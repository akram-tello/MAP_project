import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:signfun/main21.dart';
import 'package:flutter/material.dart';

class editnote extends StatefulWidget {
  DocumentSnapshot docid;
  editnote({required this.docid});

  @override
  _editnoteState createState() => _editnoteState();
}

class _editnoteState extends State<editnote> {
  TextEditingController Medicine = TextEditingController();
  TextEditingController Price = TextEditingController();

  @override
  void initState() {
    Medicine = TextEditingController(text: widget.docid.get('Medicine'));
    Price = TextEditingController(text: widget.docid.get('Price'));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PharmaX'),
        backgroundColor: Colors.pinkAccent,
        actions: [
          MaterialButton(
            onPressed: () {
              widget.docid.reference.update({
                'Medicine': Medicine.text,
                'Price': Price.text,
              }).whenComplete(() {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (_) => Home()));
              });
            },
            child: Text("Update"),
          ),
          MaterialButton(
            onPressed: () {
              widget.docid.reference.delete().whenComplete(() {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (_) => Home()));
              });
            },
            child: Text("Delete"
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
                  hintText: 'Medicine',
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
                    hintText: 'Price',
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
