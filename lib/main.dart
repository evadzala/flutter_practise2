import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: DemoApp2(),
  ));
}

class DemoApp2 extends StatefulWidget {
  const DemoApp2({super.key});

  @override
  State<DemoApp2> createState() => _DemoApp2State();
}

class _DemoApp2State extends State<DemoApp2> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  int count = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Header"),
          ),
          body: Container(
            margin: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  controller: emailController,
                  decoration: const InputDecoration(hintText: "Email"),
                ),
                TextField(
                  controller: passwordController,
                  decoration: const InputDecoration(hintText: "Password"),
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Page2(
                                    email: emailController.text,
                                    password: passwordController.text,
                                  )));
                    },
                    child: const Text("Login"))
              ],
            ),
          )),
    );
  }

  void onPressed() {
    count++;
    print(emailController.text + passwordController.text);
  }
}

class Page2 extends StatefulWidget {
  String email;
  String password;

  Page2({Key? key, required this.email, required this.password})
      : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Page2"),
        ),
        body: Container(
          child: Column(children: [
            Text("Email: ${widget.email}"),
            Text("Password: ${widget.password}")
          ]),
        ));
  }
}

class DemoApp extends StatelessWidget {
  const DemoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Header"),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: onPressed, child: const Text("Button2")),
            const Text(
              "data",
              textDirection: TextDirection.ltr,
            )
          ],
        )),
      ),
    );
  }

  void onPressed() {
    print("button");
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.tealAccent),
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
