import 'package:contacts_service/contacts_service.dart';
import 'package:permission_handler/permission_handler.dart';
import 'dart:convert';

class GetPhoneList {
  static Future<String> getPhoneList() async {
    await Permission.contacts.request();

    List<Contact> contactList =
        (await ContactsService.getContacts(withThumbnails: false)).toList();

    List<String> phoneList = [];

    contactList.forEach((item) {
      if (item.phones.toList().isNotEmpty) {
        phoneList.add(item.phones
            .toList()[0]
            .value
            .replaceAll(new RegExp(r"\s+\b|\b\s"), ""));
      }
    });

    return jsonEncode(phoneList);
  }
}
