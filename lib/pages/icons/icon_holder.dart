import 'dart:wasm';

import 'package:flutter/material.dart';
import 'package:money_tracker/pages/icons/icons_page.dart';

typedef Void OnIconChange(IconData iconData);

class IconHolder extends StatelessWidget {
  const IconHolder({
    Key key,
    @required this.newIcon,
    @required this.onIconChange,
  }) : super(key: key);

  final IconData newIcon;
  final OnIconChange onIconChange;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        var iconData = await Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => IconsPage(),
          ),
        );
        onIconChange(iconData);
      },
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          border: Border.all(
            width: 3,
            color: Colors.grey,
          ),
        ),
        child: Icon(
          newIcon == null ? Icons.add : newIcon,
          size: 24,
          color: Colors.blueGrey,
        ),
      ),
    );
  }
}
