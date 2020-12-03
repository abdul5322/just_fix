import 'package:flutter/material.dart';
import 'package:just_fix/Contact.dart';

class Online extends StatelessWidget {
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
              'https://justfixuae.ae/images/smb-seo-social-media-digital-marketing-website-designing-developing-in-abu-dhabi.png',
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
              'Online Services',
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
              'We know the trends, we know the access',
              style: TextStyle(
                fontFamily: 'Aleo',
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
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
              'Website Designing',
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
              'Website Developing',
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
              'Cloud Base Applications',
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
              'Digital Marketing',
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
              'SEO (Search Engine Optimization)',
              style: TextStyle(
                fontFamily: 'Aleo',
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
              ),
            ),
          ),new Container(
            child: Text(
              'Domain and Hosting',
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
