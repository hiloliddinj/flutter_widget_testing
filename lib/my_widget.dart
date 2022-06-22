import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({
    super.key,
    required this.title,
    required this.message,
  });

  final String title;
  final String message;

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {

  String myText = 'Hello';

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(widget.message),
              Text(myText),
              FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      myText = 'World';
                    });
                  },
                  child: const Icon(Icons.abc),
              ),
            ],
          ),
        ),
      ),
    );
  }
}