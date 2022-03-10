import 'package:belajar3/pages/page_2.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  String message = "Ini Pesan 1";
  List<Widget> widgets = [];
  int counter = 1;

  // _MyAppState() {
  //   //widgets.add(Text("Data 1"));
  //   for (int i = 0; i < 20; i++) {
  //     widgets.add(Text(
  //       "Data ke-" + i.toString(),
  //       style: const TextStyle(fontSize: 30),
  //     ));
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Perpustakaan',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Bersama kita pusing bersama"),
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              tooltip: 'Search',
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text("Search Button"),
                ));
              },
            )
          ],
        ),
        body: Center(
          child: ListView(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    child: const Text("next page"),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SecondPage()),
                      );
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(message),
                  ElevatedButton(
                    child: const Text("Press Here"),
                    onPressed: () {
                      setState(() {
                        message = "Ini Pesan 2";
                      });
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    child: const Text("Tambah Data"),
                    onPressed: () {
                      setState(() {
                        widgets.add(Text(
                          "Data ke-" + counter.toString(),
                          style: const TextStyle(
                              fontSize: 20, fontFamily: "SFPro"),
                        ));
                        counter++;
                      });
                    },
                  ),
                  ElevatedButton(
                    child: const Text("Hapus Data"),
                    onPressed: () {
                      setState(() {
                        widgets.removeLast();
                        counter--;
                      });
                    },
                  ),
                ],
              ),
              Column(
                children: widgets,
              )
            ],
          ),
        ),
      ),
    );
  }
}
