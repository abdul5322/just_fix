import 'package:flutter/material.dart';
import 'package:just_fix/Contact.dart';

class Gaming extends StatelessWidget {
  Future navigatetocontact (context) async{
    Navigator.push(context, MaterialPageRoute(builder: (context) => Contact()));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          new Container(
            child: Image.network(
              'https://justfixuae.ae/images/smb-gaming-system-repair-in-abu-dhabi.png',
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
              'Gaming System Repairs',
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
              'Alian Laptops',
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
              'Gaming Systems',
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
              'Gaming Consoles',
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
          //       Navigator.push(
          //         context,
          //         MaterialPageRoute(builder: (context) => Contact()),
          //       );
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
