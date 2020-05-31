class StreamSummaryItem {
  final String avatarPath;
  final String userName;
  final DateTime streamedDate;
  final String trackName;

  StreamSummaryItem(
      {this.avatarPath, this.userName, this.streamedDate, this.trackName});
}

class FriendItem {
  final String avatarPath;
  final String friendName;

  FriendItem({this.avatarPath, this.friendName});
}
