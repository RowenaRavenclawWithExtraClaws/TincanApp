import 'package:flutter/material.dart';
import 'package:ui/DataLayer/listItem.dart';
import 'package:ui/Logic/local.dart';
import 'package:ui/Logic/fileHandler.dart';
import 'package:ui/UI/listItemView.dart';

class UIComposer {
  static void composeSnackBar(String messege, BuildContext context) {
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text(messege),
      backgroundColor: Colors.deepPurple,
    ));
  }

  static Widget composeListItem(FriendItem friendItem, BuildContext context) {
    FriendItemView friendItemView = new FriendItemView(friendItem);
    Widget friendView = friendItemView.build(context);

    return friendView;
  }

  static Widget composeDivider() {
    return Divider(
      height: 0.0,
      indent: 95.0,
      endIndent: 10.0,
    );
  }

  static Widget composeListWidget() {
    List friendList = LocalQuery.getFriends();

    friendList = friendList
        .map((friend) async => new FriendItem(
            avatarPath: '${await FileHandler.localPath}/${friend.avatarPath}',
            friendName: friend.name))
        .toList();

    return SafeArea(
      child: ListView.separated(
        itemCount: friendList.length,
        separatorBuilder: (BuildContext context, int index) => composeDivider(),
        itemBuilder: (BuildContext context, int index) {
          return composeListItem(friendList[index], context);
        },
      ),
    );
  }
}
