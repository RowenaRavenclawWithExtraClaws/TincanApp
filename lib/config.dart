// all global variables should be stored here.
String phoneNumber = '';
String canName = '';
String avatar = '';
String verificationCode = '';
bool logged = false;
String serverAddress = '192.168.1.5';
List<String> portNumbers = [
  '8009',
  '8010',
  '8011',
  '8012',
  '8013',
  '8014',
  '8015'
];
List<String> routes = [
  'getCode',
  'addUser',
  'findUserByID',
  'findUserByPhone',
  'addFriend',
  'addFriends',
  'fetchAvatars'
];
List<String> messeges = [
  'invalid phone number, try again',
  'invalid verification code, try again',
  'wrong verification code, try again',
  'your verification code will be resent shortly'
];
