import 'package:fa17_bse_020/contactus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Theme.of(context).primaryColor,
            child: Center(
              child: Column(
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.only(
                      top: 30,
                      bottom: 10,
                    ),

                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                     image: DecorationImage(
                         image: AssetImage(
                           'assets/images/splash.jpg',
                         ),
                       fit: BoxFit.fill,
                     )
                    ),
                  ),
                  Text(
                    'Muhammad Ijaz',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'malikijazbashir@gmail.com',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),

          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text(
              "Profile",
              style: TextStyle(
              fontSize: 22,
            ),),
            onTap: null,
          ),
          ListTile(
            leading: Icon(Icons.contact_mail),
            title: Text(
              "Contact Us",
              style: TextStyle(
                fontSize: 22,
              ),),
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) =>ContactPage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text(
              "Logout",
              style: TextStyle(
                fontSize: 22,
              ),),
            onTap: null,
          )
        ],
      ),
    );
  }
}
