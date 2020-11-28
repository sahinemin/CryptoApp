import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}
// ignore: non_constant_identifier_names
String Language='English';
// ignore: non_constant_identifier_names
String Currency='TRY';


class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return
      MaterialApp(
        home: Scaffold(
          backgroundColor: Color(0xFF003942),
          appBar: AppBar(
            backgroundColor: Color(0xFF002B32),
            title: Text('My Profile'),
            centerTitle: true,
          ),
          body: Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: Text('Yasin İNAL',
                    style:TextStyle(color: Colors.white, fontSize: 45.0))
                )
                ,
                Container(
                  margin: EdgeInsets.fromLTRB(0, 80, 0, 0),
                  child: Text('Current Currency',style:TextStyle(
                      color: Colors.white, fontSize: 23.0,
                  )
                  ),
                ),
                Container(
                  decoration: new BoxDecoration(
                    color: Color(0x20D3D3D3),
                    borderRadius: new BorderRadius.all(Radius.circular(15.0)),
                  ),
                  width: 230,
                  height: 70,
                  margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: DropdownButton<String>(
                            dropdownColor: Color(0xFF002B32),
                            value: Currency,
                            icon: Icon(Icons.arrow_downward,
                              color: Colors.white,),
                            iconSize: 24,
                            style: TextStyle(
                              fontSize: 25,
                                color: Colors.white
                            ),
                            onChanged: (String newValue) {
                              setState(() {
                                Currency = newValue;
                              });
                            },
                            items: <String>['TRY', 'USD','ETH','BTC']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            })
                                .toList(),
                          ),
                        ),
                        Container(
                          width: 50,
                          height: 50,

                          child: Image(
                            image: AssetImage('assets/turkishflag.jpeg'),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],




            ),

    ),
        ),
      );
  }
}
