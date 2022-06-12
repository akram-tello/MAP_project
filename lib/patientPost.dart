import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'patientCreate.dart';
import 'patient_profile.dart';

class patientPost extends StatefulWidget {
  @override
  _patientPostState createState() => _patientPostState();
}

class _patientPostState extends State<patientPost> {
  final Stream<QuerySnapshot> _usersStream =
  FirebaseFirestore.instance.collection('posts').snapshots();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.pinkAccent,
        onPressed: () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (_) => patientCreate()));
        },
        child: Icon(
          Icons.add,
        ),
      ),



      appBar: AppBar(
        title: Text('Post a Request'),
        backgroundColor: Colors.pinkAccent,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (_) => ProfilePage()));
            },
            icon: Icon(Icons.account_box_outlined),
          ),
        ],
      ),




      body: StreamBuilder(
        stream: _usersStream,
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return Text("something is wrong");
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }

          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListView.builder(
              itemCount: snapshot.data!.docs.length,
              itemBuilder: (_, index) {
                return GestureDetector(

                  child: Column(
                    children: [
                      SizedBox(
                        height: 4,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 3,
                          right: 3,
                        ),
                        child: ListTile(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                            side: BorderSide(
                              color: Colors.black,
                            ),
                          ),
                          leading: Text(
                            snapshot.data!.docChanges[index].doc['Medicine'],
                            style: TextStyle(
                              fontSize: 30,
                            ),
                          ),

                          title: Text(
                            snapshot.data!.docChanges[index].doc['Price'],
                            style: TextStyle(
                              fontSize: 25,
                            ),
                          ),
                          subtitle: Text(
                            snapshot.data!.docChanges[index].doc['Description'],
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),

                          contentPadding: EdgeInsets.symmetric(
                            vertical: 12,
                            horizontal: 16,
                          ),
                        ),
                      ),


                      // Padding(
                      //   padding: EdgeInsets.only(
                      //     left: 3,
                      //     right: 3,
                      //   ),
                      //   child: ListTile(
                      //     shape: RoundedRectangleBorder(
                      //       borderRadius: BorderRadius.circular(10),
                      //       side: BorderSide(
                      //         color: Colors.black,
                      //       ),
                      //     ),
                      //     title: Text(
                      //       snapshot.data!.docChanges[index].doc['Medicine'],
                      //       style: TextStyle(
                      //         fontSize: 20,
                      //       ),
                      //     ),
                      //     contentPadding: EdgeInsets.symmetric(
                      //       vertical: 12,
                      //       horizontal: 16,
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
