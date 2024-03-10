import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '123',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: ':)'),
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

  void increment() {
    setState(() {
      _counter++;
      
    });
  }

      void decrement() {
    setState(() {
      _counter--;
      
    });
      }
          void zero() {
    setState(() {
      _counter = 0;
      
    });
    
  }
      
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Значение',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      
floatingActionButton: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const SizedBox(
        

      ),
      TextButton(
        onPressed: increment,
        
        child: const Text('Увеличить'),
        
      ),
      TextButton(
        onPressed: decrement,
        
        child: const Text('Уменьшить'),
        
      ),
       TextButton(
        onPressed: zero,
        
        child: const Text('Обнулить'),
        
      ),
      const SizedBox(
        height: 500,
      )
    ],
    ), 
    );

  
  }
}
  



  

