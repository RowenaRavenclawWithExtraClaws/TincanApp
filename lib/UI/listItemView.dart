import 'package:flutter/material.dart';
import 'package:ui/DataLayer/listItem.dart';
import 'dart:io';

class FriendItemView {
  final Color textUnreadDeepPurpleColor = Colors.deepPurple;
  FriendItem _friendItem;

  FriendItemView(FriendItem friendItem) {
    _friendItem = friendItem;
  }

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: ListTile(
        leading: CircleAvatar(
          radius: 30.0,
          backgroundImage: FileImage(File(_friendItem.avatarPath)),
        ),
        title: Text(
          _friendItem.friendName,
          style: TextStyle(
            fontSize: 18.0,
            color: Colors.deepPurple,
          ),
        ),
      ),
    );
  }
}
/*class ChatSummaryView extends StatelessWidget {
  final Color textUnreadDeepPurpleColor = Colors.deepPurple;

  final ChatSummaryViewModel chatSummaryViewModel;

  ChatSummaryView(this.chatSummaryViewModel);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: ListTile(
        leading: CircleAvatar(
          radius: 30.0,
          backgroundImage: ExactAssetImage('assets/images/avatar.png'),
        ),
        title: Text(
          chatSummaryViewModel.name,
          style: TextStyle(
            fontSize: 18.0,
            color: Colors.deepPurple,
          ),
        ),
        subtitle: Text(
          chatSummaryViewModel.track,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 16.0,
            color: Colors.grey,
          ),
        ),
        trailing: buildTextTime(),
      ),
    );
  }

  Widget buildTextTime() {
    return Text(
      chatSummaryViewModel.time,
      style: TextStyle(
        color: Colors.grey,
      ),
    );
  }
}*/