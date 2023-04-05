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
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(40, 20, 40, 0),
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'SIGN IN TO YOUR ACCOUNT',
              style: TextStyle(
                  color: Color.fromARGB(255, 44, 44, 44),
                  fontWeight: FontWeight.w500,
                  fontSize: 20),
            ),
          ),
          Padding(padding: const EdgeInsets.fromLTRB(0, 20, 0, 0)),
          TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                filled: true,
                hintStyle: TextStyle(color: Color.fromARGB(126, 31, 31, 31)),
                hintText: "johnnythedesigner@gmail.com",
                fillColor: Color.fromARGB(179, 189, 189, 189)),
          ),
          Padding(padding: const EdgeInsets.all(10)),
          TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                filled: true,
                hintStyle: TextStyle(color: Color.fromARGB(126, 31, 31, 31)),
                hintText: "********",
                fillColor: Color.fromARGB(179, 189, 189, 189)),
          ),
          Row(
            children: [
              Padding(padding: const EdgeInsets.fromLTRB(0, 50, 0, 0)),
              Text("Keep me signed in"),
            ],
          ),
          Container(
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(color: Color.fromARGB(255, 117, 4, 223)),
            child: MaterialButton(
              onPressed: () {},
              child: Text(
                "SIGN IN",
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 15,
                ),
              ),
            ),
          ),
          Padding(padding: const EdgeInsets.fromLTRB(0, 200, 0, 0)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {},
                child: Text(
                  "Forgot your password?",
                  style: TextStyle(
                      fontSize: 18, color: Color.fromARGB(126, 31, 31, 31)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}