import 'package:ui/src/models/chatSummaryModel.dart';

class Chats {
  final List<ChatSummaryViewModel> chatSummaryViewModels = [
    ChatSummaryViewModel(
      avatar:
          'https://www.centennialanimalhospital.com/wp-content/uploads/sites/45/2018/01/dogsmile.jpg',
      name: 'Eem',
      track: "Valentine's Day - Linkin Park",
      time: '11:35',
    ),
    ChatSummaryViewModel(
      avatar:
          'https://images-production.freetls.fastly.net/uploads/posts/teaser_image/171208/cats-with-flat-faces.jpg',
      name: 'Ahmed',
      track: 'Turn On - RW Smith',
      time: 'YESTERDAY',
    ),
    ChatSummaryViewModel(
      avatar:
          'https://images-na.ssl-images-amazon.com/images/I/51JJGcU6xGL._SL1000_.jpg',
      name: 'Mama',
      track: "Kol 7aga bet'ady - Cairokee",
      time: 'FRIDAY',
    ),
  ];
}
