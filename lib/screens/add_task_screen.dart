import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          children: [
            Text(
              'ADD TASK',
              style: TextStyle(
                fontSize: 30,
                color: Colors.lightBlueAccent,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
            ),
            TextButton(
              child: Text(
                'ADD',
                style: TextStyle(
                  color: Colors.lightBlueAccent,
                ),
              ),
              //style: TextButton.styleFrom(
              //primary: Colors.lightBlueAccent,
              //),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
