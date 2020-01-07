import 'package:flutter/material.dart';

class ProfileMenu{
  Drawer getProfile(BuildContext context){
    return new Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text("Profile Picture and user name go here"),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            title: Text('Item 1'),
            onTap: (){
              // TODO: Add functionality
            },
          ),
          ListTile(
            title: Text('Item 2'),
            onTap: (){
              // TODO: Add functionality
            },
          )
        ],
      )
    );
  }
}