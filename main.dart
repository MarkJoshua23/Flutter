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
  TextEditingController _StudIDControler = new TextEditingController();
  TextEditingController _CommentControler = new TextEditingController();
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              "Computer Science Department",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            TextField(
              controller: _StudIDControler,
              keyboardType: TextInputType.numberWithOptions(),
              decoration: InputDecoration(
                  labelText: "Student Number",
                  hintText: "Enter the number",
                  prefixIcon: Icon(Icons.search),
                  prefixIconColor: Colors.blue,
                  border: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.blue),
                      borderRadius: BorderRadius.circular(20))),
            ),
            SizedBox(
              height: 5,
            ),
            TextField(
              controller: _CommentControler,maxLines: 3,
              keyboardType: TextInputType.numberWithOptions(),
              decoration: InputDecoration(
                  labelText: "Comments",
                  hintText: "Enter Comments",
                  prefixIcon: Icon(Icons.comment),
                  prefixIconColor: Colors.blue,
                  border: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.blue),
                      borderRadius: BorderRadius.circular(20))),
            ),
            SizedBox(
              height: 5,
            ),
            ElevatedButton(onPressed: (){
              SnackBar snackers=SnackBar(content:Text("Student number is ${_StudIDControler.text} and comment is ${_CommentControler.text}" ) ,);
              ScaffoldMessenger.of(context).showSnackBar(snackers);
            }, child: Text("Submit"))
          ],
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
