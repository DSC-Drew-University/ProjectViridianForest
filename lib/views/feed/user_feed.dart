/*
Class Name: User Feed                                              <DSC DREW U/>

Class Description: Handles the logic behind generating a feed of blurbs as a
                   function of a particular user.

Notes:

Commit History:
                - Initial Commmit
                    (David Nesterov-Rappoport '22)                  | Jan 7 2020

*/

// IMPORTS ------------------------------------------------------------------ //
import 'package:dsc_viridian_forest/models/blurb.dart';
import 'package:dsc_viridian_forest/models/user_data/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// -------------------------------------------------------------------------- //

// User Feed ---------------------------------------------------------------- //
class UserFeed{

  User user; // the feed is generated as a function of the User class
  bool test; // used to move between testing and live modes

  UserFeed.generalConstructor({User user}){
    this.user = user;
    this.test = false;
  }

  UserFeed.testConstructor({List<Blurb> testBlurbs}){
    this.user = null;
    this.test = true;
  }

  Column generateFeed(){

    var feed = new Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: this.getBlurbs(this.user),
    );


    return feed;
  }

  List<Blurb> getBlurbs(User user){
    if(this.test){
      return testBlurbs();
    }
    else{
      // TODO: Properly Generate the Blurbs
      return new List<Blurb>();
    }

  }

  List<Blurb> testBlurbs(){

    List<Blurb> testBlurbs = new List<Blurb>();

    // TODO: return a list of testing blurbs

    return testBlurbs;
  }
}

// -------------------------------------------------------------------------- //