import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: myHomePage(),
    );
  }
}

class myHomePage extends StatefulWidget {
  const myHomePage({Key? key}) : super(key: key);

  @override
  myHomePageMainState createState() => myHomePageMainState();
}

class myHomePageMainState extends State<myHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Flutter"),
        backgroundColor: Color.fromARGB(255, 255, 140, 0),
        centerTitle: true,
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
        // leading: Icon(
        //   Icons.menu,
        //   color: Colors.white,
        // ),
        actions: [
          IconButton(
            onPressed: () {
              print("clicked");
            },
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {
              print("clicked");
            },
            icon: Icon(
              Icons.account_box_outlined,
              color: Colors.white,
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: "Settings",
        )
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("click");
        },
        child: Icon(Icons.add),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            const DrawerHeader(
                child: Icon(
              Icons.people,
              size: 100,
            )),
            ListTile(
              leading: Icon(Icons.location_city),
              title: Text("Location"),
              onTap: () {
                print("nc one");
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.access_alarm),
              title: Text("Location"),
              onTap: () {
                print("nc one");
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 70.0),
                child: Image.asset(
                  "images/logo new.png",
                  height: 200,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "FlipTop",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "images/google.png",
                    height: 50,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Image.asset(
                    "images/twitter.png",
                    height: 50,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Image.asset(
                    "images/fb.png",
                    height: 50,
                  ),
                ],
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  print("you clicked");
                },
                child: const Text('Click to Continue'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 255, 183, 59),
                  foregroundColor: Colors.black,
                ),
              ),
              SizedBox(height: 20),
              OutlinedButton(
                onPressed: () {
                  print("click");
                },
                child: Text("Buy Now!"),
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  print("click");
                },
                child: Text("hi"),
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              IconButton(
                onPressed: () {
                  print("click");
                },
                icon: Icon(Icons.shop),
                style: IconButton.styleFrom(
                  foregroundColor: Color.fromARGB(255, 255, 128, 0)
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
