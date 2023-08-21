import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meu primeiro app', 
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Hello-World - Homepage'),     
       
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {      
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        titleTextStyle: const TextStyle(color: Colors.white,
        fontSize: 25),
        title: Text(widget.title)        
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Pressione o botão no canto inferior direito para contabilizar os clicks:',
              style: TextStyle(color: Colors.green, fontSize: 17),
              textAlign: TextAlign.center,
                            
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium, 
            ),
            Text('Quantidade de clicks', 
            style: TextStyle(color: Colors.blue, fontSize: 14) ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
        hoverColor: Colors.lightGreen,
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
