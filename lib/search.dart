import 'package:flutter/material.dart';

class details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
      body: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Stack(
            children: [
              Center(
                child: Container(
                  child: SizedBox(
                    width: 200,
                    height: 40,
                    child: TextField(
                      decoration: InputDecoration(
                        label: Text("username"),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  width: 400,
                  height: 200,
                  color: Color.fromARGB(255, 221, 227, 232),
                ),
              ),
              Text(
                "Enter vehicle reg number",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20,
                  letterSpacing: 1,
                  wordSpacing: 2,
                ),
              )
            ],
          ),
          Container(
            width: 400,
            height: 200,
            child: Center(
              child: Container(
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
                width: 400,
                height: 200,
                color: Colors.blue,
              ),
            ),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 239, 8, 8),
            ),
          ),
        ],
      ),
    ));
  }
}
