import 'package:flutter/material.dart';

import 'new_event.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<String> _list = ['Event 1'];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurple[200],
        appBar: AppBar(
          title: Text('Event Schedular'),
          backgroundColor: Colors.deepPurpleAccent.shade700,
        ),
        body: ListView.builder(
            itemCount: _list.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.all(15.0),
              child: ListTile(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5),),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(_list[index]),
                  ],
                ),
                tileColor: Colors.white,
              ),
            )),


        floatingActionButton: Builder(
          builder: (context) {
            return FloatingActionButton(
              backgroundColor: Colors.deepPurpleAccent.shade700,
              onPressed: () async{
                String newEvent = await Navigator.push(context, MaterialPageRoute(builder: (context) => NewEventScreen()));
                setState(() {
                  _list.add(newEvent);
                });
              },
              child: Icon(Icons.add),
            );
          }
        ),
      ),
    );
  }
}
