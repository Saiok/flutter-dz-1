import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int? _counterValue;

  @override
  void initState() {
    _counterValue = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo,
        appBar: AppBar(
          title: const Text('Counter'),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Tap "-" to decrement',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  const SizedBox(height: 5,),
                  Container(
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                              onPressed: increase,
                              icon: const Icon(
                                Icons.add,
                                color: Colors.black,
                              )),
                          Text(
                            '${_counterValue!}',
                            style: const TextStyle(fontSize: 20),
                          ),
                          IconButton(
                              onPressed: decrease,
                              icon: const Icon(
                                Icons.remove,
                                color: Colors.black,
                              )),
                        ],
                      )),
                  const SizedBox(height: 5,),
                  const Text(
                    'Tap "+" to increment',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ],
              )),
        ),
      ),
    );
  }

  void increase() {
    setState(() {
      _counterValue = _counterValue! + 1;
    });
  }

  void decrease() {
    setState(() {
      _counterValue = _counterValue! - 1;
    });
  }
}
