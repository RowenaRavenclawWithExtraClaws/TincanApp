import 'dart:io';

class StreamSummaryItem {
  final String avatarPath;
  final String userName;
  final DateTime streamedDate;
  final String trackName;

  StreamSummaryItem(
      {this.avatarPath, this.userName, this.streamedDate, this.trackName});
}

class FriendItem {
  final File avatar;
  final String friendName;

  FriendItem({this.avatar, this.friendName});
}
