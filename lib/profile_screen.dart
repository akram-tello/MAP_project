// // import 'package:flutter/material.dart';
// // class ProfileScreen extends StatefulWidget {
// //   const ProfileScreen({Key? key}) : super(key: key);
// //
// //   @override
// //   State<ProfileScreen> createState() => _ProfileScreenState();
// // }
// //
// // class _ProfileScreenState extends State<ProfileScreen> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: Center(
// //         child: Text("welcome to your profile page"),
// //       ),
// //
// //     );
// //   }
// // }
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:signfun/read.dart';
// class ProfileScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.pinkAccent,
//           elevation: 0.0,
//           title: Text('Profile Page'),
//           actions: <Widget>[
//             FlatButton.icon(
//               icon: Icon(Icons.add_box_rounded),
//               label: Text(''),
//                 onPressed: () => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> MyApp())),
//             ),
//           ],
//         ),
//
//         body: SafeArea(
//           child: Column(
//
//             children: [
//               Container(
//                 decoration: BoxDecoration(
//                     image: DecorationImage(
//                         image: NetworkImage(
//                             "add you image URL here "
//                         ),
//                         fit: BoxFit.cover
//                     )
//                 ),
//                 child: Container(
//                   width: double.infinity,
//                   height: 200,
//                   child: Container(
//                     alignment: Alignment(0.0,2.5),
//                     child: CircleAvatar(
//                       backgroundImage: NetworkImage(
//                           "Add you profile DP image URL here "
//                       ),
//                       radius: 60.0,
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 60,
//               ),
//               Text(
//                 "Waleed"
//                 ,style: TextStyle(
//                   fontSize: 25.0,
//                   color:Colors.grey,
//                   letterSpacing: 2.0,
//                   fontWeight: FontWeight.w400
//               ),
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Text(
//                 "Malaysia, Johor bahru"
//                 ,style: TextStyle(
//                   fontSize: 18.0,
//                   color:Colors.black45,
//                   letterSpacing: 2.0,
//                   fontWeight: FontWeight.w300
//               ),
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Text(
//                 "App Developer at UTM "
//                 ,style: TextStyle(
//                   fontSize: 15.0,
//                   color:Colors.black45,
//                   letterSpacing: 2.0,
//                   fontWeight: FontWeight.w300
//               ),
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Card(
//                   margin: EdgeInsets.symmetric(horizontal: 20.0,vertical: 8.0),
//                   elevation: 2.0,
//                   child: Padding(
//                       padding: EdgeInsets.symmetric(vertical: 12,horizontal: 30),
//                       child: Text("Details ",style: TextStyle(
//                           letterSpacing: 2.0,
//                           fontWeight: FontWeight.w300
//                       ),))
//               ),
//               SizedBox(
//                 height: 15,
//               ),
//               Text(
//                 "Gender : Male  ||  Age : 23"
//                 ,style: TextStyle(
//                   fontSize: 18.0,
//                   color:Colors.black45,
//                   letterSpacing: 2.0,
//                   fontWeight: FontWeight.w300
//               ),
//               ),
//               Card(
//                 margin: EdgeInsets.symmetric(horizontal: 20.0,vertical: 8.0),
//                 child: Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       Expanded(
//                         child: Column(
//                           children: [
//                             Text("Medicines bought",
//                               style: TextStyle(
//                                   color: Colors.blueAccent,
//                                   fontSize: 22.0,
//                                   fontWeight: FontWeight.w600
//                               ),),
//                             SizedBox(
//                               height: 7,
//                             ),
//                             Text("7",
//                               style: TextStyle(
//                                   color: Colors.black,
//                                   fontSize: 22.0,
//                                   fontWeight: FontWeight.w300
//                               ),)
//                           ],
//                         ),
//                       ),
//                       Expanded(
//                         child:
//                         Column(
//                           children: [
//                             Text("Illnesses",
//                               style: TextStyle(
//                                   color: Colors.blueAccent,
//                                   fontSize: 22.0,
//                                   fontWeight: FontWeight.w600
//                               ),),
//                             SizedBox(
//                               height: 7,
//                             ),
//                             Text("None",
//                               style: TextStyle(
//                                   color: Colors.black,
//                                   fontSize: 22.0,
//                                   fontWeight: FontWeight.w300
//                               ),)
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 50,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   RaisedButton(
//                     onPressed: (){
//                     },
//                     shape:  RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(80.0),
//                     ),
//                     child: Ink(
//                       decoration: BoxDecoration(
//                         gradient: LinearGradient(
//                             begin: Alignment.centerLeft,
//                             end: Alignment.centerRight,
//                             colors: [Colors.pink,Colors.redAccent]
//                         ),
//                         borderRadius: BorderRadius.circular(30.0),
//                       ),
//                       child: Container(
//                         constraints: BoxConstraints(maxWidth: 100.0,maxHeight: 40.0,),
//                         alignment: Alignment.center,
//                         child: Text(
//                           "Contact me",
//                           style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 12.0,
//                               letterSpacing: 2.0,
//                               fontWeight: FontWeight.w300
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   RaisedButton(
//                     onPressed: (){ Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> Home()));
//                     },
//                     shape:  RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(80.0),
//                     ),
//                     child: Ink(
//                       decoration: BoxDecoration(
//                         gradient: LinearGradient(
//                             begin: Alignment.centerLeft,
//                             end: Alignment.centerRight,
//                             colors: [Colors.pink,Colors.redAccent]
//                         ),
//                         borderRadius: BorderRadius.circular(80.0),
//                       ),
//                       child: Container(
//                         constraints: BoxConstraints(maxWidth: 100.0,maxHeight: 40.0,),
//                         alignment: Alignment.center,
//                         child: Text(
//                           "Portfolio",
//                           style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 12.0,
//                               letterSpacing: 2.0,
//                               fontWeight: FontWeight.w300
//                           ),
//                         ),
//                       ),
//                     ),
//                   )
//                 ],
//               )
//             ],
//           ),
//         )
//     );
//   }
// }
//

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:signfun/read.dart';

class ProfilePage extends StatefulWidget {
  @override
  MapScreenState createState() => MapScreenState();
}

class MapScreenState extends State<ProfilePage>
    with SingleTickerProviderStateMixin {
  bool _status = true;
  final FocusNode myFocusNode = FocusNode();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pinkAccent,
          elevation: 0.0,
          title: Text('Profile Page'),
          actions: <Widget>[
            FlatButton.icon(
              icon: Icon(Icons.add_box_rounded),
              label: Text(''),
              onPressed: () => Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => Home())),
            ),
          ],
        ),
        body: new Container(
          color: Colors.white,
          child: new ListView(
            children: <Widget>[
              Column(
                children: <Widget>[
                  new Container(
                    height: 250.0,
                    color: Colors.white,
                    child: new Column(
                      children: <Widget>[
                        Padding(
                            padding: EdgeInsets.only(left: 20.0, top: 20.0),
                            child: new Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                            )),
                        Padding(
                          padding: EdgeInsets.only(top: 20.0),
                          child:
                              new Stack(fit: StackFit.loose, children: <Widget>[
                            new Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                new Container(
                                    width: 140.0,
                                    height: 140.0,
                                    decoration: new BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: new DecorationImage(
                                        image: new ExactAssetImage(
                                            'assets/images/logpic.png'),
                                        fit: BoxFit.cover,
                                      ),
                                    )),
                              ],
                            ),
                            Padding(
                                padding:
                                    EdgeInsets.only(top: 90.0, right: 100.0),
                                child: new Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    new CircleAvatar(
                                      backgroundColor: Colors.red,
                                      radius: 25.0,
                                      child: new Icon(
                                        Icons.camera_alt,
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                )),
                          ]),
                        )
                      ],
                    ),
                  ),
                  new Container(
                    color: Color(0xffFFFFFF),
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 25.0),
                      child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 25.0, right: 25.0, top: 25.0),
                              child: new Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                mainAxisSize: MainAxisSize.max,
                                children: <Widget>[
                                  new Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      new Text(
                                        'Parsonal Information',
                                        style: TextStyle(
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  new Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      _status
                                          ? _getEditIcon()
                                          : new Container(),
                                    ],
                                  )
                                ],
                              )),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 25.0, right: 25.0, top: 25.0),
                              child: new Row(
                                mainAxisSize: MainAxisSize.max,
                                children: <Widget>[
                                  new Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      new Text(
                                        'Name',
                                        style: TextStyle(
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ],
                              )),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 25.0, right: 25.0, top: 2.0),
                              child: new Row(
                                mainAxisSize: MainAxisSize.max,
                                children: <Widget>[
                                  new Flexible(
                                    child: new TextField(
                                      decoration: const InputDecoration(
                                        hintText: "Enter Your Name",
                                      ),
                                      enabled: !_status,
                                      autofocus: !_status,
                                    ),
                                  ),
                                ],
                              )),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 25.0, right: 25.0, top: 25.0),
                              child: new Row(
                                mainAxisSize: MainAxisSize.max,
                                children: <Widget>[
                                  new Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      new Text(
                                        'Email ID',
                                        style: TextStyle(
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ],
                              )),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 25.0, right: 25.0, top: 2.0),
                              child: new Row(
                                mainAxisSize: MainAxisSize.max,
                                children: <Widget>[
                                  new Flexible(
                                    child: new TextField(
                                      decoration: const InputDecoration(
                                          hintText: "Enter Email ID"),
                                      enabled: !_status,
                                    ),
                                  ),
                                ],
                              )),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 25.0, right: 25.0, top: 25.0),
                              child: new Row(
                                mainAxisSize: MainAxisSize.max,
                                children: <Widget>[
                                  new Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      new Text(
                                        'Mobile',
                                        style: TextStyle(
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ],
                              )),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 25.0, right: 25.0, top: 2.0),
                              child: new Row(
                                mainAxisSize: MainAxisSize.max,
                                children: <Widget>[
                                  new Flexible(
                                    child: new TextField(
                                      decoration: const InputDecoration(
                                          hintText: "Enter Mobile Number"),
                                      enabled: !_status,
                                    ),
                                  ),
                                ],
                              )),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 25.0, right: 25.0, top: 25.0),
                              child: new Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(
                                    child: Container(
                                      child: new Text(
                                        'Pin Code',
                                        style: TextStyle(
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    flex: 2,
                                  ),
                                  Expanded(
                                    child: Container(
                                      child: new Text(
                                        'State',
                                        style: TextStyle(
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    flex: 2,
                                  ),
                                ],
                              )),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 25.0, right: 25.0, top: 2.0),
                              child: new Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Flexible(
                                    child: Padding(
                                      padding: EdgeInsets.only(right: 10.0),
                                      child: new TextField(
                                        decoration: const InputDecoration(
                                            hintText: "Enter Pin Code"),
                                        enabled: !_status,
                                      ),
                                    ),
                                    flex: 2,
                                  ),
                                  Flexible(
                                    child: new TextField(
                                      decoration: const InputDecoration(
                                          hintText: "Enter State"),
                                      enabled: !_status,
                                    ),
                                    flex: 2,
                                  ),
                                ],
                              )),
                          !_status ? _getActionButtons() : new Container(),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ));
  }

  @override
  void dispose() {
    // Clean up the controller when the Widget is disposed
    myFocusNode.dispose();
    super.dispose();
  }

  Widget _getActionButtons() {
    return Padding(
      padding: EdgeInsets.only(left: 25.0, right: 25.0, top: 45.0),
      child: new Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: Container(
                  child: new RaisedButton(
                child: new Text("Save"),
                textColor: Colors.white,
                color: Colors.green,
                onPressed: () {
                  setState(() {
                    _status = true;
                    FocusScope.of(context).requestFocus(new FocusNode());
                  });
                },
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(20.0)),
              )),
            ),
            flex: 2,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Container(
                  child: new RaisedButton(
                child: new Text("Cancel"),
                textColor: Colors.white,
                color: Colors.red,
                onPressed: () {
                  setState(() {
                    _status = true;
                    FocusScope.of(context).requestFocus(new FocusNode());
                  });
                },
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(20.0)),
              )),
            ),
            flex: 2,
          ),
        ],
      ),
    );
  }

  Widget _getEditIcon() {
    return new GestureDetector(
      child: new CircleAvatar(
        backgroundColor: Colors.red,
        radius: 14.0,
        child: new Icon(
          Icons.edit,
          color: Colors.white,
          size: 16.0,
        ),
      ),
      onTap: () {
        setState(() {
          _status = false;
        });
      },
    );
  }
}
