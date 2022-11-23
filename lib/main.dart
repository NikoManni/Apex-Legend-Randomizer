import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Legend Randomizer',
      theme: ThemeData(
        primarySwatch: Colors.red,
        scaffoldBackgroundColor: Color.fromARGB(238, 249, 243, 235),
      ),
      home: const MyHomePage(title: 'Legend Randomizer'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String legendName = 'Nothing! Click the Apex Logo below for a Legend';
  Random random = Random();
  int _randomNumber = 0;
  String imagePath = 'assets/images';

  void _randomLegend() {
    setState(
      () {
        _randomNumber = random.nextInt(21);
        if (_randomNumber == 1) {
          legendName = 'Ash';
          imagePath = 'assets/images/ash.jpg';
        }
        if (_randomNumber == 2) {
          legendName = 'Bangalore';
          imagePath = 'assets/images/bangalore.jpg';
        }
        if (_randomNumber == 3) {
          legendName = 'Bloodhound';
          imagePath = 'assets/images/bloodhound.jpg';
        }
        if (_randomNumber == 4) {
          legendName = 'Caustic';
          imagePath = 'assets/images/caustic.jpg';
        }
        if (_randomNumber == 5) {
          legendName = 'Crypto';
          imagePath = 'assets/images/crypto.jpg';
        }
        if (_randomNumber == 6) {
          legendName = 'Fuse';
          imagePath = 'assets/images/fuse.jpg';
        }
        if (_randomNumber == 7) {
          legendName = 'Gibraltar';
          imagePath = 'assets/images/gibraltar.jpg';
        }
        if (_randomNumber == 8) {
          legendName = 'Horizon';
          imagePath = 'assets/images/horizon.jpg';
        }
        if (_randomNumber == 9) {
          legendName = 'Lifeline';
          imagePath = 'assets/images/lifeline.jpg';
        }
        if (_randomNumber == 10) {
          legendName = 'Loba';
          imagePath = 'assets/images/loba.jpg';
        }
        if (_randomNumber == 11) {
          legendName = 'Mad Maggie';
          imagePath = 'assets/images/madmaggie.jpg';
        }
        if (_randomNumber == 12) {
          legendName = 'Mirage';
          imagePath = 'assets/images/mirage.jpg';
        }
        if (_randomNumber == 13) {
          legendName = 'Octane';
          imagePath = 'assets/images/octane.jpg';
        }
        if (_randomNumber == 14) {
          legendName = 'Pathfinder';
          imagePath = 'assets/images/pathfinder.jpg';
        }
        if (_randomNumber == 15) {
          legendName = 'Rampart';
          imagePath = 'assets/images/rampart.jpg';
        }
        if (_randomNumber == 16) {
          legendName = 'Revenant';
          imagePath = 'assets/images/revenant.jpg';
        }
        if (_randomNumber == 17) {
          legendName = 'Seer';
          imagePath = 'assets/images/seer.jpg';
        }
        if (_randomNumber == 18) {
          legendName = 'Valkyrie';
          imagePath = 'assets/images/valkyrie.jpg';
        }
        if (_randomNumber == 19) {
          legendName = 'Wattson';
          imagePath = 'assets/images/wattson.jpg';
        }
        if (_randomNumber == 20) {
          legendName = 'Wraith';
          imagePath = 'assets/images/wraith.jpg';
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Text("You got $legendName!",
                  style: Theme.of(context).textTheme.headlineMedium),
            ),
            Image.asset(imagePath),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: TextSelectionToolbarTextButton(
                onPressed: _randomLegend,
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Image.asset('assets/images/apex.png'),
              ),
            ),
            const Text('Click the logo to randomize again!'),
          ],
        ),
      ),
      drawer: Drawer(
        backgroundColor: Color.fromARGB(238, 249, 243, 235),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.rectangle,
              ),
              child: Text("Select Legend Type:"),
            ),
            ListTile(
              leading: const Icon(Icons.data_saver_on),
              title: const Text('Support Legends'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.compass_calibration_rounded),
              title: const Text('Recon Legends'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.bolt),
              title: const Text('Offensive Legends'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.add_moderator),
              title: const Text('Defensive Legends'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
