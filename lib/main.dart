import 'package:flutter/material.dart';

// how to add an Icon, how to add multiple images seamlessly, SizedBox, ListView, Overflow
void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: true,
          title: Text('ListView'),
          backgroundColor: Colors.blueGrey,
        ),
        body: Pictures(),
      ),
    ),
  );
}

// A widget is either stateful or stateless. If a widget can change—when a user interacts with it, for example—it's stateful. A stateless widget never changes. Icon , IconButton , and Text are examples of stateless widgets.
class Pictures extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Center(
          child: Icon(
            Icons.add_a_photo,
            color: Colors.deepOrange,
            size: 50.0,
          ),
        ),
        Center(
          child: Text(
            'Haikyuu Gallery!!',
            style: TextStyle(
                fontSize: 40.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic),
          ),
        ),
        Image.asset(
          'images/h1.jpg',
          width: 600,
          height: 400,
          fit: BoxFit.cover,
        ),
        SizedBox(height: 10.0),
        Image.asset(
          'images/h2.jpg',
          width: 600,
          height: 400,
          fit: BoxFit.cover,
        ),
        SizedBox(height: 10.0),
        Image.asset(
          'images/h3.jpg',
          width: 600,
          height: 400,
          fit: BoxFit.cover,
        ),
        SizedBox(height: 10.0),
        Image.asset(
          'images/h4.jpg',
          width: 600,
          height: 400,
          fit: BoxFit.cover,
        ),
      ],
    );
  }
}
