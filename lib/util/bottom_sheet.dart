import 'package:flutter/material.dart';

class BottomSheetWidget extends StatelessWidget {
   BottomSheetWidget({Key? key}) : super(key: key);

//use that custom function here
  String newTaskTitle = "";

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1500,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10),
              ),
              height: 5,
              width: 50,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Add new restaurant',
              style: TextStyle(fontSize: 20),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Restaurant Name',
                ),
                onChanged: (newText) {
                  newTaskTitle = newText;
                },
              ),
            ),
            ElevatedButton(
                child: const Text('Add'),
                onPressed: () => {Navigator.pop(context, newTaskTitle)})
          ],
        ),
      ),
    );
  }
}

void callBack(BuildContext context) {}
