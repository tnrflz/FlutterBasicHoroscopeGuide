import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: true,
      theme: ThemeData(primarySwatch: Colors.cyan),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Taner",
            style: TextStyle(color: Colors.amber, fontSize: 30),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  color: Colors.orange.shade100,
                  child: Text(
                    ("D"),
                    style: TextStyle(fontSize: 54.0),
                  ),
                ),
                Container(
                  color: Colors.orange.shade200,
                  child: Text(
                    "A",
                    style: TextStyle(fontSize: 54.0),
                  ),
                ),
                Container(
                  color: Colors.orange.shade300,
                  child: Text(
                    "R",
                    style: TextStyle(fontSize: 54.0),
                  ),
                ),
                Container(
                  color: Colors.orange.shade400,
                  child: Text(
                    "T",
                    style: TextStyle(fontSize: 54.0),
                  ),
                ),
              ],
            ),
            Container(
              color: Colors.orange.shade200,
              child: Text(
                ("E"),
                style: TextStyle(fontSize: 54.0),
              ),
            ),
            Container(
              color: Colors.orange.shade300,
              child: Text(
                "R",
                style: TextStyle(fontSize: 54.0),
              ),
            ),
            Container(
              color: Colors.orange.shade400,
              child: Text(
                "S",
                style: TextStyle(fontSize: 54.0),
              ),
            ),
            Container(
              color: Colors.orange.shade500,
              child: Text(
                "L",
                style: TextStyle(fontSize: 54.0),
              ),
            ),
            Container(
              color: Colors.orange.shade600,
              child: Text(
                "E",
                style: TextStyle(fontSize: 54.0),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(2),
              color: Colors.red.shade700,
              child: Text(
                "R",
                style: TextStyle(fontSize: 24.0),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(2),
              color: Colors.red.shade800,
              child: Text(
                "İ",
                style: TextStyle(fontSize: 24.0),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
