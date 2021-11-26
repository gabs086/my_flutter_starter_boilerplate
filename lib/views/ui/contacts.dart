import 'package:daily_covid_report_app/views/widgets/app_drawer.dart';
import 'package:flutter/material.dart';

class Contacts extends StatefulWidget {
  const Contacts({Key? key}) : super(key: key);

  @override
  _ContactsState createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: const AppDrawer(),
      appBar: AppBar(
        title: const Text("Contacts"),
      ),
      body: const Center(
        child: Text('Contacts Page'),
      ),
    );
  }
}
