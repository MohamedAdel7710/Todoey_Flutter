import"package:flutter/material.dart";

class TestScreen extends StatelessWidget{

   @override
   Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'test'
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15)
        ),
        child: Stack(
          children: <Widget>[
            Text('ayHaga')
          ],
        ),
      ),
    );
  }
}