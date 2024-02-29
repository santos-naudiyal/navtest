import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Choose Your Profession?',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BottomNavBar(),
    );
  }
}

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;
  final List<Widget> _screens = [
    Home(),
    Fanancial(),
    Transaction(),
    Advisory(),
    Monitoring(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose Your Profession?'),
      ),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Financial Plan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Transcation',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Advisory',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Monitoring',
          ),
        ],
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      children: List.generate(15, (index) {
        return GridTile(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('assets/image$index.jpg'),
              ),
              SizedBox(height: 8),
              Text('Item $index'),
            ],
          ),
        );
      }),
    );
  }
}

class Fanancial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Container(
      padding: EdgeInsets.all(15.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/fin.jpg'), // First image
            
            
            
            Text(
              'Fidelity Investments offers Financial Planning and Advice, Retirement Plans, Wealth Management Services, Trading and Brokerage services, and a wide range of investment products including Mutual Funds, ETFs, Fixed income Bonds and CDs and much more',
              style: TextStyle(fontSize: 15.0),
            ), // Description text
            SizedBox(height: 10.0),
            // Thank You text
          ],
        ),
      ),
    );
  }
  
}

class Transaction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/mono.jpg'), // First image
            Text(
              'Translation is the communication of the meaning of a source-language text by means of an equivalent target-language text. The English language draws a terminological distinction (which does not exist in every language) between translating (a written text) and interpreting (oral or signed',
              style: TextStyle(fontSize: 15.0),
            ), // Description text
            SizedBox(height: 10.0),
            // Thank You text
          ],
        ),
      ),
    );
  }
}

class Advisory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     String currentTime = DateFormat('HH:mm:ss').format(DateTime.now());

    return Container(
      padding: EdgeInsets.all(15.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/image1.jpg'), // First image
            
            Text(
              'Thank You',
              style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold),
            ), 
            Image.asset('assets/image2.jpg'), // Second image
             SizedBox(height: 5.0),
            Text(
              'Clock Showing Image: $currentTime',
              style: TextStyle(fontSize: 15.0),
            ), // Text showing current time
            SizedBox(height: 10.0),
            Text(
              'Description showing text goes here.  It was released through TEN Music Group and Epic Records on 21 June 2019. Described as a pop and synth-pop track, it was co-written by Larsson with Noonie Bao, Ilsey Juber, Linus Wiklund and produced by the latter.',
              style: TextStyle(fontSize: 15.0),
            ), // Description text
            SizedBox(height: 10.0),
            // Thank You text
          ],
        ),
      ),
    );
  }
  
}

class Monitoring extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return Container(
      padding: EdgeInsets.all(15.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/mono.jpg'), // First image
            
            
            
            Text(
              'Look up monitoring in Wiktionary, the free dictionary. ... Monitoring (medicine), the observation of a disease, condition or one or several medical parameters over time ... Biomonitoring, of toxic chemical compounds, elements, or their metabolites, in biological substances',
              style: TextStyle(fontSize: 15.0),
            ), // Description text
            SizedBox(height: 10.0),
            // Thank You text
          ],
        ),
      ),
    );
  }
}


// Define Screen2, Screen3, Screen4, Screen5 in a similar manner
