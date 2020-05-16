import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var color = Theme.of(context).primaryColor;
    return SizedBox(
      width: 120,
      child: Drawer(
        child: Column(
          children: <Widget>[
            Container(
              height: 100,
              alignment: Alignment.bottomCenter,
              child: Text(
                "Menu",
                style: TextStyle(
                  fontSize: 25,
                  color: color,
                ),
              ),
            ),
            Divider(
              height: 20,
              color: color,
            ),
            _MenuItem(
              title: "Accounts",
              color: color,
              icon: Icons.account_balance,
              onTap: () => onNavigate(context, '/accounts'),
            ),
            Divider(
              height: 20,
              color: color,
            ),
            _MenuItem(
              title: "Budget Items",
              color: color,
              icon: Icons.attach_money,
              onTap: () => onNavigate(context, '/items'),
            ),
            Divider(
              height: 20,
              color: color,
            ),
            _MenuItem(
              title: "Type",
              color: color,
              icon: Icons.widgets,
              onTap: () => onNavigate(context, '/types'),
            ),
          ],
        ),
      ),
    );
  }

  void onNavigate(BuildContext context, String uri) {
    Navigator.of(context).pop();
    Navigator.of(context).pushNamed(uri);
  }
}

class _MenuItem extends StatelessWidget {
  const _MenuItem({
    Key key,
    @required this.color,
    @required this.icon,
    @required this.title,
    @required this.onTap,
  }) : super(key: key);

  final Color color;
  final IconData icon;
  final String title;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Opacity(
        opacity: 0.6,
        child: Container(
          height: 70,
          alignment: Alignment.center,
          child: Column(
            children: <Widget>[
              Icon(
                icon,
                size: 50,
                color: color,
              ),
              Text(
                title,
                style: TextStyle(
                  fontSize: 15,
                  color: color,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
