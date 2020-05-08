import 'package:flutter/material.dart';

class Navigate {
  static navigateTo(BuildContext context, StatelessWidget page) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) => page,
      ),
    );
  }
}
