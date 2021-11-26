import 'package:daily_covid_report_app/utils/routes.dart';
import 'package:daily_covid_report_app/views/ui/contacts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: BoxDecoration(color: Colors.teal.shade100),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            _createHeader(),
            _createDrawerItem(
              icon: Icons.contacts,
              text: 'Contacts',
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Routes.contacts));
              },
            ),
            _createDrawerItem(
              icon: Icons.event,
              text: 'Events',
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Routes.events));
              },
            ),
            _createDrawerItem(
              icon: Icons.note,
              text: 'Notes',
              onTap: () => {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Routes.notes))
              },
            ),
            const Divider(),
            _createDrawerItem(icon: Icons.collections_bookmark, text: 'Steps'),
            _createDrawerItem(icon: Icons.face, text: 'Authors'),
            _createDrawerItem(
                icon: Icons.account_box, text: 'Flutter Documentation'),
            _createDrawerItem(icon: Icons.stars, text: 'Useful Links'),
            const Divider(),
            _createDrawerItem(icon: Icons.bug_report, text: 'Report an issue'),
            ListTile(
              title: const Text('0.0.1'),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}

Widget _createHeader() {
  return DrawerHeader(
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage('assets/images/drawer_header_background.png'),
        ),
      ),
      child: Stack(children: const <Widget>[
        Positioned(
            bottom: 12.0,
            left: 16.0,
            child: Text("Daily Covid 19 Report",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500))),
      ]));
}

Widget _createDrawerItem(
    {IconData? icon, String? text, GestureTapCallback? onTap}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(icon),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(text!),
        )
      ],
    ),
    onTap: onTap,
  );
}
