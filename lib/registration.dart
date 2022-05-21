import 'package:signfun/auth.dart';
import 'package:flutter/material.dart';
import 'package:signfun/main.dart';
class Register extends StatefulWidget {

  final Function toggleView;
  Register({ required this.toggleView });

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  String error = '';

  // text field state
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        elevation: 0.0,
        title: Text('Sign up to PharmaX '),
        actions: <Widget>[
          FlatButton.icon(
            icon: Icon(Icons.person),
            label: Text('Sign In'),
            onPressed: () => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> MyApp())),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              SizedBox(height: 20.0),
              TextFormField(
                decoration: const InputDecoration(
                    icon:Icon(Icons.lock),
                    hintText: "Write Your Email Here ",
                    labelText: 'Email'
                ),

                validator: (val) => val!.isEmpty ? 'Enter an email' : null,
                onChanged: (val) {
                  setState(() => email = val);
                },
              ),
              SizedBox(height: 20.0),
              TextFormField(
                decoration: const InputDecoration(
                  icon:Icon(Icons.lock),
                  hintText: "Password",
                  labelText: 'Password'
                ),
                obscureText: true,
                validator: (val) => val!.length < 6 ? 'Enter a password 6+ chars long' : null,
                onChanged: (val) {
                  setState(() => password = val);
                },
              ),
              SizedBox(height: 20.0),

              Container(
                width: double.infinity,
                child : RawMaterialButton(
                  fillColor: Colors.pinkAccent,
                  elevation: 0.0,
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  onPressed: ()   async {
                    if(_formKey.currentState!.validate()){
                      dynamic result = await _auth.registerWithEmailAndPassword(email, password);
                      if(result == null) {
                        setState(() {
                          error = 'Please supply a valid email';
                        });
                      }
                    }
                  },
                  child: Text('Sign Up',
                    style:  TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),

                ),

              ),
              // RaisedButton(
              //     color: Colors.pink[400],
              //     child: Text(
              //       'Register',
              //       style: TextStyle(
              //         color: Colors.white,
              //         fontSize: 18,
              //       ),
              //     ),
              //
              //
              //
              //
              //     onPressed: () async {
              //       if(_formKey.currentState!.validate()){
              //         dynamic result = await _auth.registerWithEmailAndPassword(email, password);
              //         if(result == null) {
              //           setState(() {
              //             error = 'Please supply a valid email';
              //           });
              //         }
              //       }
              //     }
              // ),
              SizedBox(height: 12.0),
              Text(
                error,
                style: TextStyle(color: Colors.red, fontSize: 14.0),
              )
            ],
          ),
        ),
      ),
    );
  }
}