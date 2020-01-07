/*
Class Name: Main                                                   <DSC DREW U/>

Class Description: Primary means of displaying information to the user,
as well as the central hub in the navigator hierarchy. Core components are:
[1]: MenuBar, displayed as the appBar,
[2]: Feed, displayed as a list of Blurbs,
[3]: ProfileMenu, accessible as a side menu from the MenuBar

Notes:

Commit History:
               - Initial Commit
                  (David Nesterov-Rappoport '22)                    | Jan 4 2020

*/

// IMPORTS ------------------------------------------------------------------ //
import 'package:dsc_viridian_forest/models/user_data/profile_menu.dart';
import 'package:flutter/material.dart';

import 'feed/user_feed.dart';
import 'views_test_files/main_test_files.dart';
// -------------------------------------------------------------------------- //

// DEBUG AND TESTING VARIABLES ---------------------------------------------- //

var test = true; // used to move between testing and live modes

// -------------------------------------------------------------------------- //

// INIT FUNCTIONS ----------------------------------------------------------- //
void main() {
  if (test) {
    runApp(Main.testConstructor());
  } else {
    runApp(Main.generalConstructor());
  }
}
// -------------------------------------------------------------------------- //

// MAIN CLASS --------------------------------------------------------------- //
class Main extends StatefulWidget {
  // Data Fields
  AppBar _menuBar; // provides access to navigation buttons and displays info
  UserFeed _feed; // displays current stream events
  ProfileMenu _profileMenu; // allows the user to access their profile

  // Constructors
  Main.testConstructor() {
    this._menuBar = testMenuBar();
    this._feed = testUserFeed();
    this._profileMenu = testProfileMenu();
  }

  Main.generalConstructor({menuBar, feed, profileMenu}) {
    this._menuBar = menuBar;
    this._feed = feed;
    this._profileMenu = profileMenu;
  }

  // Functions
  @override
  _MainPageState createState() => _MainPageState.createState(
        menuBar: _menuBar,
        feed: _feed,
        profileMenu: _profileMenu,
      );
}
// -------------------------------------------------------------------------- //

// MAIN PAGE STATE CLASS ---------------------------------------------------- //
class _MainPageState extends State<Main> {
  // Data Fields
  AppBar _menuBar;
  UserFeed _feed;
  ProfileMenu _profileMenu;

  // Constructors
  _MainPageState.createState({menuBar, feed, profileMenu}) {
    this._menuBar = menuBar;
    this._feed = feed;
    this._profileMenu = profileMenu;
  }

  // Functions

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: _menuBar,
        body: _feed.generateFeed(),
        drawer: _profileMenu.getProfile(context),
      ),
    );
  }
}
// -------------------------------------------------------------------------- //
