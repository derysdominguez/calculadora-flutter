import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int counter = 10;

  void incrementCounter() {
    setState(() {
      counter += 2;
    });
  }

  void decrementCounter() {
    setState(() {
      counter -= 2;
    });
  }

  void multiplyCounter() {
    setState(() {
      counter *= 2;
    });
  }

  void divideCounter() {
    setState(() {
      counter ~/= 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Contador:',
              style: TextStyle(fontSize: 24),
            ),
            Text(
              '$counter',
              style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          FloatingActionButton(
            onPressed: incrementCounter,
            tooltip: 'Sumar',
            child: Icon(Icons.add),
          ),
          SizedBox(height: 10),
          FloatingActionButton(
            onPressed: decrementCounter,
            tooltip: 'Restar',
            child: Icon(Icons.remove),
          ),
          SizedBox(height: 10),
          FloatingActionButton(
            onPressed: multiplyCounter,
            tooltip: 'Multiplicar',
            child: Icon(Icons.close),
          ),
          SizedBox(height: 10),
          FloatingActionButton(
            onPressed: divideCounter,
            tooltip: 'Dividir',
            child: Icon(Icons.percent),
          ),
        ],
      ),
    );
  }
}
