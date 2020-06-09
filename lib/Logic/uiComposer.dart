import 'package:flutter/material.dart';
import 'package:ui/DataLayer/listItem.dart';
import 'package:ui/Logic/local.dart';
import 'dart:io';
import 'package:ui/UI/listItemView.dart';
import 'package:ui/config.dart' as globals;

class UIComposer {
  static void composeSnackBar(String messege, BuildContext context) {
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text(messege),
      backgroundColor: Colors.deepPurple,
    ));
  }

  static Widget composeFriendListItem(
      FriendItem friendItem, BuildContext context) {
    FriendItemView friendItemView = new FriendItemView(friendItem);
    Widget friendView = friendItemView.build(context);

    return friendView;
  }

  static Widget composeTrackListItem(
      TrackItem trackItem, BuildContext context) {
    TrackItemView trackItemView = new TrackItemView(trackItem);
    Widget trackView = trackItemView.build(context);

    return trackView;
  }

  static Widget composeDivider() {
    return Divider(
      height: 0.0,
      indent: 95.0,
      endIndent: 10.0,
    );
  }

  static Widget composeFriendListWidget() {
    List friendList = LocalQuery.getFriends();
    FriendItem friendItem;
    List friendItemList = [];

    friendList.forEach((friend) {
      friendItem = new FriendItem(
          avatar: File(
              '/data/user/0/com.example.ui/app_flutter/${friend.avatarPath}'),
          friendName: friend.name);

      friendItemList.add(friendItem);
    });

    return SafeArea(
      child: ListView.separated(
        itemCount: friendList.length,
        separatorBuilder: (BuildContext context, int index) => composeDivider(),
        itemBuilder: (BuildContext context, int index) {
          return composeFriendListItem(friendItemList[index], context);
        },
      ),
    );
  }

  static Widget composeTrackListWidget() {
    List<TrackItem> trackList = globals.audio.getTrackItemList();

    return SafeArea(
      child: ListView.separated(
        itemCount: trackList.length,
        separatorBuilder: (BuildContext context, int index) => composeDivider(),
        itemBuilder: (BuildContext context, int index) {
          return composeTrackListItem(trackList[index], context);
        },
      ),
    );
  }
}
