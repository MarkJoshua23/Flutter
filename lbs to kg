import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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

// ignore: camel_case_types
class myHomePage extends StatefulWidget {
  const myHomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MainStatemyHomePage createState() => _MainStatemyHomePage();
}

class _MainStatemyHomePage extends State<myHomePage> {
  TextEditingController _lbs = new TextEditingController();

  double kg = 0;
  double disp = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("UNIT CONVERTER"),
        backgroundColor: Color.fromARGB(218, 93, 1, 1),
        titleTextStyle: const TextStyle(
          color: Colors.white,
        ),

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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                "From POUNDS (lbs) to KILOGRAMS (kg)",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: _lbs,
                // keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "Value in Pounds (lbs)",
                    hintText: "From",
                    suffixText: "lbs",
                    prefixIcon: Icon(Icons.numbers),
                    prefixIconColor: Colors.green,
                    border: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.blue),
                        borderRadius: BorderRadius.circular(20))),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    double lbs = double.parse(_lbs.text);

                    setState(() {
                      kg = lbs / 2.20462;
                      disp = double.parse(kg.toStringAsFixed(4));
                    });

                    
                  },
                  child: Text(
                    "Convert",
                    style: TextStyle(fontSize: 30, color: Colors.green),
                  )),
              SizedBox(
                height: 20,
              ),
              Text(
                "${disp} kg",
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 200,
              ),
              Text(
                "DEVELOPED BY:",
                style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    color: Colors.green),
              ),
              Image.asset(
                "assets/images/tarcelo.png",
                width: 100,
              ),
              Text("Mark Joshua Tarcelo"),
            ],
          ),
        ),
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

      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              child: Image.asset("assets/images/logo.png", width: 300),
            ),
            ListTile(
              leading: const Icon(Icons.subject_outlined),
              title: const Text("Courses offered"),
              onTap: () {
                print("You clicked the course offered menu");
                Navigator.pop(context);
              },
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
    );
  }
}
