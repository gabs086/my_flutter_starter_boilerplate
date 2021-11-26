import 'package:daily_covid_report_app/views/widgets/app_drawer.dart';
import 'package:flutter/material.dart';

class Notes extends StatefulWidget {
  const Notes({Key? key}) : super(key: key);

  @override
  _NotesState createState() => _NotesState();
}

class _NotesState extends State<Notes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: const AppDrawer(),
      appBar: AppBar(
        title: const Text("Notes"),
      ),
      body: const Center(
        child: Text('Notes Page'),
      ),
    );
  }
}
