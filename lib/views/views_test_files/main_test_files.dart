/*
Class Name: Main Test Files                                        <DSC DREW U/>

Class Description: Holds test widgets for testing the main class

Notes:

Commit History:
                - Initial Commmit
                    (David Nesterov-Rappoport '22)                 | Jan 7 2020

*/
// IMPORTS ------------------------------------------------------------------ //
import 'package:dsc_viridian_forest/models/user_data/profile_menu.dart';
import 'package:dsc_viridian_forest/views/feed/user_feed.dart';
import 'package:flutter/material.dart';
// -------------------------------------------------------------------------- //

// Test Menu Bar ------------------------------------------------------------ //
AppBar testMenuBar() {

  Builder _profileButton = Builder(
    builder: (BuildContext context) {
      return IconButton(
        icon: const Icon(Icons.assignment_ind),
        onPressed: () { Scaffold.of(context).openDrawer(); },
        tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
      );
    },
  );

  IconButton _createEventButton = IconButton(
    icon: Icon(Icons.add),
    tooltip: "Create Event",
    onPressed: () {
      // TODO: Create Event
    },
  );

  return new AppBar(
    title: Text("Viridian Forest"),
    leading: _profileButton,
    actions: <Widget>[
      _createEventButton,
    ],
    backgroundColor: Colors.green,
  );
}
// -------------------------------------------------------------------------- //

// Test User Feed ----------------------------------------------------------- //
UserFeed testUserFeed() {
  return new UserFeed.testConstructor();
}
// -------------------------------------------------------------------------- //

// Test Profile Menu -------------------------------------------------------- //
ProfileMenu testProfileMenu() {
  return new ProfileMenu();
}
// -------------------------------------------------------------------------- //