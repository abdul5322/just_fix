import 'package:flutter/material.dart';
import 'package:just_fix/Contact.dart';

class Wifi extends StatelessWidget {
  Future navigatetocontact (context) async{
    Navigator.push(context, MaterialPageRoute(builder: (context) => Contact()));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          new Container(
            child: Container(
              width: 25.0,
              height: 15.0,
              color: Colors.white,
            ),
          ),
          new Container(
            child: Image.network(
              'https://justfixuae.ae/images/smb-wifi-network-in-abu-dhabi.png',
              fit: BoxFit.cover,
            ),
          ),
          new Container(
            child: Container(
              width: 25.0,
              height: 25.0,
              color: Colors.white,
            ),
          ),
          new Container(
            child: Text(
              'WiFi Solutions',
              style: TextStyle(
                fontFamily: 'Aleo',
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.bold,
                fontSize: 35.0,
              ),
            ),
          ),
          new Container(
            child: Container(
              width: 25.0,
              height: 15.0,
              color: Colors.white,
            ),
          ),
          new Container(
            child: Text(
              'HOME AND OFFICE NETWORK EXTENDER EXPERTS',
              style: TextStyle(
                fontFamily: 'Aleo',
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
          ),
          new Container(
            child: Container(
              width: 25.0,
              height: 15.0,
              color: Colors.white,
            ),
          ),
          new Container(
            child: Text(
              'Router Installation',
              style: TextStyle(
                fontFamily: 'Aleo',
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
              ),
            ),
          ),
          new Container(
            child: Text(
              'Extender Netwrok',
              style: TextStyle(
                fontFamily: 'Aleo',
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
              ),
            ),
          ),
          new Container(
            child: Text(
              'WiFi Networking',
              style: TextStyle(
                fontFamily: 'Aleo',
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
              ),
            ),
          ),
          new Container(
            child: Text(
              'LAN Networking',
              style: TextStyle(
                fontFamily: 'Aleo',
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
              ),
            ),
          ),
          // new Container(
          //   child: FlatButton(
          //     color: Colors.grey,
          //     textColor: Colors.white,
          //     disabledColor: Colors.grey,
          //     disabledTextColor: Colors.black,
          //     padding: EdgeInsets.all(8.0),
          //     splashColor: Colors.blueGrey,
          //     onPressed: () {
          //       return new Contact();
          //     },
          //     child: Text(
          //       "Flat Button",
          //       style: TextStyle(fontSize: 15.0),
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }
}
