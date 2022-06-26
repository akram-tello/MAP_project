import 'dart:typed_data';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdf/pdf.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'mobilepdf.dart' if (dart.library.html) 'web.dart';
class MyHomePage extends StatefulWidget {
  MyHomePage({ Key? key,  required this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  final Stream<QuerySnapshot> _usersStream =
  FirebaseFirestore.instance.collection('posts').snapshots();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Generate Report Page'),
        backgroundColor: Colors.pinkAccent,
        actions: [
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
                Future<void> _createPDF() async {
                  PdfDocument document = PdfDocument();
                  final page = document.pages.add();
                  page.graphics.drawString('PharmaX Report !',
                      PdfStandardFont(PdfFontFamily.helvetica, 30));
                  PdfGrid grid = PdfGrid();
                  grid.style = PdfGridStyle(
                      font: PdfStandardFont(PdfFontFamily.helvetica, 30),
                      cellPadding: PdfPaddings(left: 5, right: 2, top: 2, bottom: 2));
                  grid.columns.add(count: 3);
                  grid.headers.add(1);
                  PdfGridRow header = grid.headers[0];
                  header.cells[0].value = ' Medicine Name';
                  header.cells[1].value = 'User Number';
                  header.cells[2].value = 'User Symptoms';
                  PdfGridRow row = grid.rows.add();
                  row.cells[0].value =  snapshot.data!.docChanges[index].doc['Medicine'];
                  row.cells[1].value = snapshot.data!.docChanges[index].doc['Price'];
                  row.cells[2].value = snapshot.data!.docChanges[index].doc['Description'];
                  grid.draw(
                      page: document.pages.add(), bounds: const Rect.fromLTWH(0, 0, 0, 0));
                  List<int> bytes = document.save();
                  document.dispose();
                  saveAndLaunchFile(bytes, 'PharmaX.pdf');
                }
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
                              fontSize: 20,
                            ),
                          ),
                          title: Text(
                            snapshot.data!.docChanges[index].doc['Description'],
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                          subtitle:  Text(
                            snapshot.data!.docChanges[index].doc['Price'],
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                          trailing: Column(
                            children: [
                              Padding(
                                padding : EdgeInsets.only(
                                  left: 1,
                                  right: 1,
                                ),
                                child: ElevatedButton(
                                  child: Text('Generate Report',
                                      style: TextStyle(fontSize: 12
                                      ),
                                  ),
                                  onPressed: _createPDF,
                                  style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty.all(Colors.pinkAccent),


                                  ),
                                ),
                                ),
                            ],
                          ),
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 24,
                            horizontal: 10,
                          ),
                        ),
                      ),
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


Future<Uint8List> _readImageData(String name) async {
  final data = await rootBundle.load('images/$name');
  return data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
}
