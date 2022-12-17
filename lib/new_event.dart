import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
class NewEventScreen extends StatefulWidget {
  const NewEventScreen({Key? key}) : super(key: key);

  @override
  State<NewEventScreen> createState() => _NewEventScreenState();
}

class _NewEventScreenState extends State<NewEventScreen> {
  final TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent.shade700,
        title: const Text('New Event'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 0),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(50),
                color: Colors.deepPurpleAccent.shade700,
              ),
              child: TextField(
                style: TextStyle(
                  color: Colors.white
                ),
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  icon: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.event , color: Colors.white,size: 20),
                  ),
                  labelText: 'Event',
                  labelStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
                keyboardType: TextInputType.multiline,
                minLines: 1,
                maxLines: 4,
                controller: _textEditingController,
              ),
            ),
          ),

          Builder(
            builder: (context) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                child: ElevatedButton(onPressed: () {
                  String newEventText = _textEditingController.text;
                  Navigator.pop(context, newEventText);
                },style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey.shade400,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                    minimumSize: Size.fromHeight(40),
                ),
                    child: const Text('ADD')),
              );
            }
          ),
        ],
      ),
    );
  }
}
