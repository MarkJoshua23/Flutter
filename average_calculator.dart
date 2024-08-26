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
  TextEditingController _lName = new TextEditingController();
  TextEditingController _fName = new TextEditingController();
  TextEditingController _Prelim = new TextEditingController();
  TextEditingController _Midterm = new TextEditingController();
  TextEditingController _SemiFinal = new TextEditingController();
  TextEditingController _Final = new TextEditingController();

  double _sum = 0;
  double _ave = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset('assets/images/logo.png', width: 30),
            const SizedBox(width: 10),
            const Text(
                "Manuel S. Enverga University \nFoundation Candelaria, Inc."),
          ],
        ),
        backgroundColor: Color.fromARGB(218, 93, 1, 1),
        centerTitle: true,
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 10,
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
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                "Computer Science Department",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: _lName,
                // keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "Last Name",
                    // hintText: "Enter the number",
                    prefixIcon: Icon(Icons.arrow_circle_right_outlined),
                    prefixIconColor: Colors.green,
                    border: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.blue),
                        borderRadius: BorderRadius.circular(20))),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: _fName,
                // keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "First Name",
                    // hintText: "Enter Comments",
                    prefixIcon: Icon(Icons.arrow_circle_right_outlined),
                    prefixIconColor: Colors.green,
                    border: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.blue),
                        borderRadius: BorderRadius.circular(20))),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: _Prelim,
                // keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "Prelim Grade",
                    // hintText: "Enter Comments",
                    prefixIcon: Icon(Icons.arrow_circle_right_outlined),
                    prefixIconColor: Colors.green,
                    border: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.blue),
                        borderRadius: BorderRadius.circular(20))),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: _Midterm,
                // keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "Midterm Grade",
                    // hintText: "Enter Comments",
                    prefixIcon: Icon(Icons.arrow_circle_right_outlined),
                    prefixIconColor: Colors.green,
                    border: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.blue),
                        borderRadius: BorderRadius.circular(20))),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: _SemiFinal,
                // keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "Semifinal Grade",
                    // hintText: "Enter Comments",
                    prefixIcon: Icon(Icons.arrow_circle_right_outlined),
                    prefixIconColor: Colors.green,
                    border: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.blue),
                        borderRadius: BorderRadius.circular(20))),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: _Final,
                // keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "Final Grade",
                    // hintText: "Enter Comments",
                    prefixIcon: Icon(Icons.arrow_circle_right_outlined),
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
                    double num1 = double.parse(_Prelim.text);
                    double num2 = double.parse(_Midterm.text);
                    double num3 = double.parse(_SemiFinal.text);
                    double num4 = double.parse(_Final.text);
                    String lname = _lName.text;
                    String fname = _fName.text;
                    setState(() {
                      _sum = num1 + num2 + num3 + num4;
                      _ave = (_sum / 4) as double;
                    });

                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text("Answer"),
                          content:
                              Text("${lname}, ${fname} average is ${_ave}"),
                          actions: [
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text("Close")),
                          ],
                        );
                      },
                    );
                  },
                  child: Text("Compute the Average")),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    "assets/images/tarcelo.png",
                    width: 100,
                  ),
                  Image.asset(
                    "assets/images/ian.png",
                    width: 100,
                  ),
                  Image.asset(
                    "assets/images/luigi.png",
                    width: 100,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Joshua Tarcelo"),
                  Text("Ian Abarquez"),
                  Text("Luigi Montalban"),
                ],
              )
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("You clicked the floating action button!");
        },
        child: const Icon(Icons.add),
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
