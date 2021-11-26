import 'package:daily_covid_report_app/views/widgets/app_drawer.dart';
import 'package:flutter/material.dart';

class Events extends StatefulWidget {
  const Events({Key? key}) : super(key: key);

  @override
  _EventsState createState() => _EventsState();
}

class _EventsState extends State<Events> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: const AppDrawer(),
      appBar: AppBar(
        title: const Text("Events"),
      ),
      body: const Center(
        child: Text('Events Page'),
      ),
    );
  }
}
