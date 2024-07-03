import 'package:app/pg2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: myHomePage(),
    );
  }
}

//stateful widget
// ignore: camel_case_types
class myHomePage extends StatefulWidget {
  const myHomePage({super.key});
  @override
  // ignore: library_private_types_in_public_api
  _myHomePageMainState createState() => _myHomePageMainState();
}

// ignore: camel_case_types
class _myHomePageMainState extends State<myHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("YouTube"),
        backgroundColor: Colors.red[900],
        centerTitle: true,
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 30.00),
        //leading: const Icon(Icons.smart_display, color: Colors.white),
        actions: [
          IconButton(
              onPressed: () {
                print("You clicked the home button");
              },
              icon: const Icon(Icons.home),
              color: Colors.white),
          IconButton(
              onPressed: () {
                print("You clicked the account button");
              },
              icon: const Icon(Icons.account_circle_outlined),
              color: Colors.white),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Settings"),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("You clicked the floating action button!");
        },
        child: const Icon(Icons.add),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            const DrawerHeader(
              child: Icon(
                Icons.smart_display,
                size: 100,
              ),
            ),
            ListTile(
              leading: const Icon(Icons.add_location_alt_rounded),
              title: const Text("Location"),
              onTap: () {
                print("You clicked the location menu");
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.add_a_photo_outlined),
              title: const Text("Camera"),
              onTap: () {
                print("You clicked the camera menu");
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.phone_in_talk_rounded),
              title: const Text("Contact Us"),
              onTap: () {
                print("You clicked the contact us menu");
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
              Image.asset(
                "assets/images/1.jpg",
                width: 300,
                height: 300,
              ),
              const Text(
                "Bird",
                style: TextStyle(color: Colors.blue, fontSize: 30),
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      print("nc");
                    },
                    child: Image.asset(
                      "assets/images/google.png",
                      width: 50,
                      height: 50,
                    ),
                    onDoubleTap: () {
                      print("double");
                    },
                    onLongPress: () {
                      print("long");
                    },
                  ),
                  Image.asset(
                    "assets/images/twitter.png",
                    width: 50,
                    height: 50,
                  ),
                  Image.asset(
                    "assets/images/fb.png",
                    width: 50,
                    height: 50,
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              ElevatedButton(
                onPressed: () {
                  SnackBar snackdemo = SnackBar(
                    content: Text(
                      "ncnc",
                      style: TextStyle(color: Colors.yellow),
                    ),
                    duration: Duration(seconds: 3),
                    action: SnackBarAction(
                      label: "Undo",
                      onPressed: () {
                        print("ncnc");
                      },
                    ),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackdemo);
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    // shape: BeveledRectangleBorder(
                    //   borderRadius: BorderRadius.circular(5),
                    // ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    )),
                child: const Text("Elevated Button"),
              ),
              const SizedBox(
                height: 10,
              ),
              OutlinedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("Saving..."),
                        content: Text("Successfully Saved"),
                        actions: [
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text("OK")),
                        ],
                      );
                    },
                  );
                },
                child: const Text("Outlined Button"),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return Pg2();
                  }));
                },
                child: const Text("Text Button"),
              ),
              IconButton(
                onPressed: () {
                  print("you clicked the iconbutton");
                },
                icon: const Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 50,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
