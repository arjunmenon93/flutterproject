import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class youth extends StatefulWidget {
  final name;
  youth({required this.name});
  @override
  State<youth> createState() => _youthState();
}

class _youthState extends State<youth> {
  done() async {
    CollectionReference collection2 =
        FirebaseFirestore.instance.collection('fines');
    QuerySnapshot hello =
        await collection2.where('regno', isEqualTo: widget.name).get();
  }

  @override
  Widget build(BuildContext) {
    return SafeArea(
        child: Scaffold(
      body: StreamBuilder(
        stream: FirebaseFirestore.instance
            .collection('vh')
            .where('regno', isEqualTo: widget.name)
            .snapshots(),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.docs.length,
              itemBuilder: (context, index) {
                final DocumentSnapshot orginal = snapshot.data.docs[index];

                return StreamBuilder(
                  stream: FirebaseFirestore.instance
                      .collection('fines')
                      .where('regno', isEqualTo: widget.name)
                      .snapshots(),
                  builder: (context, AsyncSnapshot snapshot) {
                    if (snapshot.hasData) {
                      return ListView.builder(
                        itemCount: snapshot.data!.docs.length,
                        itemBuilder: (context, index) {
                          final DocumentSnapshot fine =
                              snapshot.data.docs[index];
                          return SizedBox(
                            child: Column(
                              children: [
                                Text(orginal['ownername']),
                                Text(fine['offence']),
                              ],
                            ),
                          );
                        },
                      );
                    }
                    return SizedBox(
                      child: Column(
                        children: [
                          Text(orginal['ownername']),
                          Text(orginal['regno']),
                        ],
                      ),
                    );
                  },
                );
              },
            );
          }
          return Container(
            child: Text("sorryy"),
          );
        },
      ),
    ));
  }
}
