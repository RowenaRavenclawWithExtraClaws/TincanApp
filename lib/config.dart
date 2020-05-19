// all global variables should be stored here.
String phoneNumber = '';
String canName = '';
String avatar = '';
String verificationCode = '';
bool logged = false;
String serverAddress = '192.168.1.2';
List<String> portNumbers = ['8000', '8001', '8002', '8003'];
List<String> routes = ['getCode', 'addCan', 'findCan', 'fetchCans'];
List<String> messeges = [
  'invalid phone number, try again',
  'invalid verification code, try again',
  'wrong verification code, try again',
  'your verification code will be resent shortly'
];
