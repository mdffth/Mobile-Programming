import 'package:flutter/material.dart';
import 'main.dart';

class counterApp extends StatefulWidget {
  const counterApp({super.key});

  @override
  State<counterApp> createState() => _counterApp();
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

class _counterApp extends State<counterApp> {
  final Counter counter = Counter();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text(
                'Menu Drawer',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Profile'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyApp()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.calculate),
              title: const Text('Counter App'),
              onTap: () {
                Navigator.pop(context);
                Navigator.of(
                  context,
                ).push(MaterialPageRoute(builder: (context) => counterApp()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
