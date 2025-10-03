import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class Counter {
  int value = 0;
  void increment() {
    value++;
  }

  void decrement() {
    value--;
  }

  void reset() {
    value = 0;
  }
}

class _MyAppState extends State<MyApp> {
  final Counter counter = Counter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Counter App')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        counter.decrement();
                      });
                    },
                    child: Text('-'),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      '${counter.value}',
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        counter.increment();
                      });
                    },
                    child: Text('+'),
                  ),
                ],
              ),
              SizedBox(height: 20),
              OutlinedButton(
                onPressed: () {
                  setState(() {
                    counter.reset();
                  });
                },
                child: Text('Reset'),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              counter.increment();
            });
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
