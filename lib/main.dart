import 'package:flutter/material.dart';

// Пример StatelessWidget
class MyTextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Привет, мир!',
      style: TextStyle(fontSize: 20.0),
    );
  }
}

// Пример StatefulWidget
class MyCounterWidget extends StatefulWidget {
  @override
  _MyCounterWidgetState createState() => _MyCounterWidgetState();
}

class _MyCounterWidgetState extends State<MyCounterWidget> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Счётчик: $_counter',
          style: TextStyle(fontSize: 20.0),
        ),
        SizedBox(height: 20.0),
        ElevatedButton(
          onPressed: _incrementCounter,
          child: Text('Увеличить'),
        ),
      ],
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Пример виджетов Flutter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            MyTextWidget(), // Используем StatelessWidget
            SizedBox(height: 50.0),
            MyCounterWidget(), // Используем StatefulWidget
          ],
        ),
      ),
    ),
  ));
}
