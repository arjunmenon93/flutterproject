import 'package:flutter/material.dart';

class office extends StatelessWidget {
  @override
  Widget build(BuildContext) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Image.asset(
            "assets/text.png",
            width: 90,
            height: 90,
          ),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 12, 36, 55),
          actions: [
            IconButton(
              color: Color.fromARGB(255, 92, 118, 197),
              splashColor: Colors.green,
              icon: const Icon(Icons.exit_to_app),
              onPressed: () {},
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color.fromARGB(255, 12, 36, 55),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.blue,
          selectedFontSize: 10,
          unselectedFontSize: 10,
          onTap: (value) {},
          items: const [
            BottomNavigationBarItem(
              label: "Searching ID",
              icon: Icon(Icons.account_tree),
            ),
            BottomNavigationBarItem(
              label: 'Analytics',
              icon: Icon(
                Icons.analytics,
              ),
            ),
            BottomNavigationBarItem(
              label: "My Account",
              icon: Icon(Icons.account_box),
            ),
          ],
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Center(
              child: Container(
                color: Colors.black,
                width: 350,
                height: 520,
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Card(
                    color: Color.fromARGB(255, 13, 16, 18),
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    shadowColor: Colors.blue,
                    elevation: 10,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          child: Column(
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                height: 60,
                                width: 60,
                                child: Image.asset("assets/policeman.png"),
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              Text(
                                "SEARCH ID",
                                style: TextStyle(
                                  fontSize: 20,
                                  wordSpacing: 1,
                                  color: Colors.blue,
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 60,
                              ),
                              Container(
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 35,
                                      width: 220,
                                      child: TextField(
                                        decoration: InputDecoration(
                                          hintText: "Enter the ID",
                                          hintStyle: TextStyle(
                                              letterSpacing: 1,
                                              color: Colors.blue,
                                              fontSize: 10),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              width: 0.5,
                                              color: Colors.blue,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 40,
                                    ),
                                    SizedBox(
                                      width: 100,
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              Color.fromARGB(255, 58, 35, 184),
                                        ),
                                        onPressed: () {},
                                        child: Text("SUBMIT"),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          width: 280,
                          height: 380,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 0, 5, 6),
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              width: 0.6,
                              color: Color.fromARGB(255, 3, 137, 239),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
