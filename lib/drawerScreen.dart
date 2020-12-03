import 'package:flutter/material.dart';
import 'package:just_fix/Oniline.dart';
import 'package:just_fix/wifi.dart';

import 'About.dart';
import 'Contact.dart';
import 'Software.dart';
import 'gaming.dart';
import 'homeScreen.dart';
import 'nassam.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Navigation Demo',
        debugShowCheckedModeBanner: false,
        theme: new ThemeData(
          primarySwatch: Colors.grey,
        ),
        home: HomePage());
  }
}

class DrawerItem {
  String title;
  IconData icon;

  DrawerItem(this.title, this.icon);
}

class HomePage extends StatefulWidget {
  final drawerItems = [
    new DrawerItem("Just Fix Uae ", Icons.home),
    new DrawerItem("Gaming System Repairs", Icons.gamepad),
    new DrawerItem("Wifi Solutions", Icons.wifi),
    new DrawerItem("Online Services", Icons.grid_on),
    new DrawerItem("Website Development", Icons.web),
    new DrawerItem("Software and UI/UX development", Icons.build),
    new DrawerItem("About us", Icons.person),
    new DrawerItem("Inquire us", Icons.contact_mail),
  ];

  @override
  State<StatefulWidget> createState() {
    return new HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int _selectedDrawerIndex = 0;
  Image currentProfilePic = Image.asset('assets/drawer_icon.png');

  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return new HomeScreen();
      case 1:
        return new Gaming();
      case 2:
        return new Wifi();
      case 3:
        return new Online();
      case 4:
        return new Nassam();
      case 5:
        return new Software();
      case 6:
       return new About();
      case 7:
       return new Contact();

      default:
        return new Text("Error");
    }
  }

  _onSelectItem(int index) {
    setState(() => _selectedDrawerIndex = index);
    Navigator.of(context).pop(); // close the drawer
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> drawerOptions = [];
    for (var i = 0; i < widget.drawerItems.length; i++) {
      var d = widget.drawerItems[i];
      drawerOptions.add(new ListTile(
        leading: new Icon(d.icon),
        title: new Text(d.title),
        selected: i == _selectedDrawerIndex,
        onTap: () => _onSelectItem(i),
      ));
    }

    return WillPopScope(
      onWillPop: () {
        if (_selectedDrawerIndex != 0) {
          setState(() {
            _selectedDrawerIndex = 0;
          });
          _getDrawerItemWidget(_selectedDrawerIndex);
        } else {
          Navigator.pop(context, true);
        }
        return;
      },
      child: Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.grey,
          title: new Text(widget.drawerItems[_selectedDrawerIndex].title),
        ),
        drawer: new Drawer(
          child: new Column(
            children: <Widget>[
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.grey),
                accountEmail: new Text("cc@justfixuae.ae"),
                accountName: new Text("Just Fix"),
                currentAccountPicture: new GestureDetector(
                  child: new CircleAvatar(
                    backgroundImage: NetworkImage('https://scontent.fisb4-1.fna.fbcdn.net/v/t31.0-8/p960x960/12890934_176403799411719_7942715781912967039_o.png?_nc_cat=111&ccb=2&_nc_sid=7aed08&_nc_ohc=HEsSy7h1lVEAX-jMhnS&_nc_ht=scontent.fisb4-1.fna&oh=b82a6afc4752d46c361ae4b3c4216d7b&oe=5FE11364'),
                  ),
                ),
              ),
              Column(children: drawerOptions)
            ],
          ),
        ),
        body: _getDrawerItemWidget(_selectedDrawerIndex),
      ),
    );
  }
}
