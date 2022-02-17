import 'package:flutter/material.dart';
import 'package:mycard/aboutpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Card App',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String message = " ";
  Color themeColor = Colors.red;
  Image imageBack =Image.asset("assets/love.jpg");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.info),
            onPressed: (){
            Navigator.push(context,MaterialPageRoute(builder: (context){
              return const AboutPage();
              }
            ),
            );
            }
          ),
        ],
        leading: IconButton(
          icon:const Icon(Icons.menu),
          onPressed: () { 

           },
        ),
        backgroundColor: Colors.blueGrey,
        shadowColor: Colors.black,
        title:const Center(
          child: (
            Text(
            "Card Viewer",
            style: TextStyle(color: Colors.white),
            
          )),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 500,
              height: 300,
              color: themeColor,
              child: Center(
                  child: Text(
                message,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontStyle: FontStyle.italic,
                    fontFamily: 'Normal'),
              )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              maxLength: 50,
              onChanged: (String newValue) {
                setState(() {
                  message = newValue;
                });
              },
            
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Your Message",
                helperText: "You can enter your message in this feild",
                prefixIcon: Icon(Icons.edit),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        setState(() {
                          themeColor = Colors.blue;
                        });
                      },
                      child: const CircleAvatar(
                        backgroundColor: Colors.blue,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          themeColor = Colors.red;
                        });
                      },
                      child: const CircleAvatar(
                        backgroundColor: Colors.red,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          themeColor = Colors.green;
                        });
                      },
                      child: const CircleAvatar(
                        backgroundColor: Colors.green,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          themeColor = Colors.orange;
                        });
                      },
                      child: const CircleAvatar(
                        backgroundColor: Colors.orange,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          themeColor = Colors.deepPurple;
                        });
                      },
                      child: const CircleAvatar(
                        backgroundColor: Colors.deepPurple,
                      ),
                    ), 
                  ],
                ),
              ),
            ),
          ),
              
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              child: const Text('Save'),
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  primary: Colors.blueGrey,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  textStyle: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.normal)),
            ),
          ),
        ],
      ),
    );
  }
}
