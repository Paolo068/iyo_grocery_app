import 'package:flutter/material.dart';

class Utils {
  static screen(BuildContext context) => MediaQuery.of(context).size;
  static getKbdHeight(BuildContext context) => MediaQuery.of(context).viewInsets.bottom;
}
