import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Les widgets basiques",
      theme: ThemeData(primarySwatch: Colors.red),
      debugShowCheckedModeBanner: false,
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _Home();
  }
}

class _Home extends State<Home> {
  bool oui = false;

  @override
  Widget build(BuildContext context) {
    double largeur = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Salut"),
        leading: const Icon(Icons.account_circle),
        actions: const <Widget>[
          Icon(Icons.access_alarm),
          Icon(Icons.golf_course),
          Icon(Icons.directions_bike),
        ],
        elevation: 10.0,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Salut les codeurs",
              style: TextStyle(
                color: (oui) ? Colors.grey[900] : Colors.green,
                fontSize: 30,
                fontStyle: FontStyle.italic,
              ),
            ),
            Card(
              child: SizedBox(
                width: MediaQuery.of(context).size.width / 1.5,
                height: 200.0,
                child: Image.asset(
                  "images/chat.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            IconButton(
                icon: const Icon(Icons.delete),
                onPressed: () {
                  setState(() {
                    oui = !oui;
                  });
                }),
            RaisedButton(
              onPressed: boutonAppuye,
              child: const Text("Je suis plus hut que toi"),
              color: Colors.red,
              textColor: Colors.white,
              elevation: 7.0,
            ),
            FlatButton(
              onPressed: boutonAppuye,
              child: const Text("Appluyer moi"),
            ),
            Container(
              height: largeur / 5,
              color: Colors.red,
              margin: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Icon(
                      Icons.thumb_up,
                      color: Colors.white,
                      size: largeur / 10,
                    ),
                    Icon(
                      Icons.share,
                      color: Colors.white,
                      size: largeur / 10,
                    ),
                    Icon(
                      Icons.thumb_down,
                      color: Colors.white,
                      size: largeur / 10,
                    ),
                    Icon(
                      Icons.message,
                      color: Colors.white,
                      size: largeur / 10,
                    )
                  ]),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: boutonAppuye,
        elevation: 8.0,
        tooltip: "Changer Oui",
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  void boutonAppuye() {
    setState(() {
      oui = !oui;
    });
  }
}
