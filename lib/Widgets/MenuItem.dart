import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:translator_linux/model/MenuItem.dart';
import 'package:yaru_icons/widgets/yaru_icons.dart';

class MenuItems {
  static const List<MenuItem> items = [
    info,
  ];

  static const info = MenuItem(
    text: "About",
    icon: YaruIcons.information,
  );
}
