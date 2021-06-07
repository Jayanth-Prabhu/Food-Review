import 'package:flutter/material.dart';
import 'package:food_review/Shared/decoration.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/restaurant.jpg'),
                    colorFilter: new ColorFilter.mode(
                        Colors.black.withOpacity(0.7), BlendMode.dstATop),
                    fit: BoxFit.cover)),
          ),
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 130),
                Container(
                  child: Center(
                    child: Text(
                      'Partner With Us',
                      style: TextStyle(
                          color: Colors.greenAccent,
                          fontSize: 36,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  width: 310,
                  child: Column(
                    children: [
                      TextField(
                        autocorrect: true,
                        decoration: decoration.copyWith(
                            hintText: 'Customer Name',
                            prefixIcon: Icon(
                              Icons.person,
                              color: Colors.greenAccent[700],
                            )),
                      ),
                      SizedBox(height: 12),
                      TextField(
                        autocorrect: true,
                        decoration: decoration.copyWith(
                          hintText: 'Contact number',
                          prefixIcon: Icon(
                            Icons.phone,
                            color: Colors.greenAccent[700],
                          ),
                        ),
                      ),
                      SizedBox(height: 12),
                      TextField(
                        autocorrect: true,
                        decoration: decoration.copyWith(
                            hintText: 'Email id',
                            prefixIcon: Icon(
                              Icons.email,
                              color: Colors.greenAccent[700],
                            )),
                      ),
                      SizedBox(height: 12),
                      TextField(
                        autocorrect: true,
                        decoration: decoration.copyWith(
                            hintText: 'FSSAI code',
                            prefixIcon: Icon(
                              Icons.confirmation_number,
                              color: Colors.greenAccent[700],
                            )),
                      ),
                      SizedBox(height: 12),
                      TextField(
                        autocorrect: true,
                        decoration: decoration.copyWith(
                            hintText: 'Address',
                            prefixIcon: Icon(
                              Icons.location_city,
                              color: Colors.greenAccent[700],
                            )),
                      ),
                      SizedBox(height: 12),
                      TextField(
                        autocorrect: true,
                        decoration: decoration.copyWith(
                            hintText: 'Description',
                            prefixIcon: Icon(
                              Icons.description,
                              color: Colors.greenAccent[700],
                            )),
                      ),
                      SizedBox(height: 30),
                      RaisedButton(
                        //textColor: Colors.white,
                        color: Colors.greenAccent[400],
                        padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                        onPressed: () {},
                        child: Text(
                          'Submit',
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 50),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
