import 'package:flutter/material.dart';
import 'package:flutter_application_1/search.dart';
import 'package:flutter_application_1/table.dart';
import 'package:flutter_application_1/test.dart';

class up extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      drawer: Drawer(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(15), bottomRight: Radius.circular(15)),
        ),
        backgroundColor: Color.fromARGB(255, 12, 36, 55),
        child: ListView(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                  "https://static-koimoi.akamaized.net/wp-content/new-galleries/2022/09/dulquer-salmaan-reacts-to-nasty-comments-about-himself-says-its-really-harsh-001.jpg"),
            ),
            SizedBox(
              height: 15,
            ),
            Center(
              child: Text(
                "Dulqar salman",
                style: TextStyle(
                    color: Colors.white, letterSpacing: 2, wordSpacing: 2),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                "ID:MV3521458",
                style: TextStyle(
                    color: Colors.white, letterSpacing: 1, wordSpacing: 2),
              ),
            ),
            Divider(
              color: Colors.indigo,
            ),
            SizedBox(
              height: 50,
            ),
            ListTile(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => tab()));
              },
              title: Text(
                "RTO",
                style: TextStyle(
                  color: Color.fromARGB(255, 12, 133, 232),
                  letterSpacing: 2,
                ),
              ),
              subtitle: Text(
                "Information about District subcodes",
                style: TextStyle(
                  color: Colors.lightBlue,
                  letterSpacing: 1,
                  fontSize: 10,
                ),
              ),
              leading: Icon(
                Icons.home,
                color: Color.fromARGB(255, 12, 133, 232),
              ),
            ),
            ListTile(
              title: Text(
                "INFO",
                style: TextStyle(
                  color: Color.fromARGB(255, 12, 133, 232),
                  letterSpacing: 2,
                ),
              ),
              leading: Icon(
                Icons.perm_device_information,
                color: Color.fromARGB(255, 12, 133, 232),
              ),
              subtitle: Text(
                "Information about RTO office",
                style: TextStyle(
                    color: Colors.lightBlue, fontSize: 10, letterSpacing: 1),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              title: Text(
                "About",
                style: TextStyle(
                  color: Color.fromARGB(255, 12, 133, 232),
                  letterSpacing: 2,
                ),
              ),
              leading: Icon(
                Icons.help,
                color: Color.fromARGB(255, 12, 133, 232),
              ),
            )
          ],
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 80,
          ),
          Center(
            child: Image.asset(
              "assets/new.png",
              width: 200,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Stack(
            children: [
              Container(
                width: 270,
                height: 150,
                decoration: BoxDecoration(
                    color: Colors.black,
                    border: Border.all(
                      width: 0.5,
                      color: Colors.blue,
                    ),
                    borderRadius: BorderRadius.circular(10)),
              ),
              Positioned(
                top: 10,
                left: 20,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(115, 22, 20, 20),
                  ),
                  onPressed: () {},
                  child: Image.asset(
                    "assets/fine.png",
                    width: 40,
                    height: 43,
                  ),
                ),
              ),
              Positioned(
                  top: 60,
                  left: 50,
                  child: Text(
                    "Fine",
                    style: TextStyle(
                        color: Colors.blue, fontSize: 8, letterSpacing: 1),
                  )),
              Positioned(
                top: 10,
                right: 20,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(115, 22, 20, 20),
                  ),
                  onPressed: () {},
                  child: Image.asset(
                    "assets/searchh.png",
                    width: 40,
                    height: 43,
                  ),
                ),
              ),
              Positioned(
                left: 105,
                top: 90,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(115, 22, 20, 20),
                  ),
                  onPressed: () {},
                  child: Image.asset(
                    "assets/police.png",
                    width: 40,
                    height: 43,
                  ),
                ),
              )
            ],
          )
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
            label: "Home",
            icon: Icon(Icons.home),
          ),
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
    );
  }
}
