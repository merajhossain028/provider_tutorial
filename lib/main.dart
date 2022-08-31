import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late int count;

  @override
  void initState() {
    // TODO: implement initState
    count = 123;
  }

  @override
  void dispose() {
    // TODO: implement dispose
    print('dispose');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print("Widget is rebuilding");
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Demo'),
        ),
        body: Center(
          child: Text(
            count.toString(),
            style: TextStyle(
              fontSize: 40,
            ),
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton(
              onPressed: () => setState(() {
                count++;
              }),
              child: Icon(Icons.add),
            ),
            SizedBox(
              width: 20,
            ),
            FloatingActionButton(
              onPressed: () => setState(() {
                count--;
              }),
              child: Icon(Icons.remove),
            ),
          ],
        ),
      ),
    );
  }
}
