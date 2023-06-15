import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Column(
          children: [

            quart1(), quart2(), quart3(), quart4()

          ],
        ));
  }
}

class quart1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Container(
        color: Colors.deepPurpleAccent,
        child: ListView.builder(
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
                width: 100,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                )),
          ),
          itemCount: 10,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }

}
class quart2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Container(
        color: Colors.greenAccent,
        child: ListView.builder(
          itemBuilder: (context, index) => ListTile(
            leading: IconButton(
              onPressed: () {},
              icon: Icon(Icons.person),
            ),
            title: Text("Name"),
            subtitle: Text("Number"),
            trailing: Icon(Icons.call),
          ),
        ),
      ),
    );
  }

}class quart3 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        color: Colors.grey.shade100,
        child: ListView.builder(
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.deepPurple.shade50),
            ),
          ),
          itemCount: 20,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }

}
class quart4 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        color: Colors.deepPurple.shade100,
        child: GridView.count(crossAxisCount: 4,crossAxisSpacing: 10, mainAxisSpacing: 10,
          children: [
            Container(color: Colors.deepPurple.shade200,),
            Container(color: Colors.deepPurple.shade200,),
            Container(color: Colors.deepPurple.shade200,),
            Container(color: Colors.deepPurple.shade200,),
            Container(color: Colors.deepPurple.shade200,),
            Container(color: Colors.deepPurple.shade200,),
            Container(color: Colors.deepPurple.shade200,),

          ],),
      ),
    );
  }

}

