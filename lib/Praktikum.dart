// ignore: file_names
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('MyApp'),
          backgroundColor: Colors.red,
          bottom: const TabBar(
            tabs: [
              Tab(text: 'BERITA TERBARU'),
              Tab(text: 'PERTANDINGAN HARI INI'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // First Tab Content (BERITA TERBARU)
            ListView(
              children: [
                Card(
                  margin: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 400, 
                        width: double.infinity,
                        child: Image.asset(
                          '8e9f68dc9178d045468e572aefae38ffe9bf117a.jpg', 
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        color: Colors.white,
                        width: double.infinity,
                        padding: const EdgeInsets.all(8.0),
                        child: const Center(
                          child: Text(
                            'Costa Mendekat Ke Palmeiras',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        color: Colors.purple,
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(vertical: 4.0),
                        child: const Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Text(
                            'Transfer',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  margin: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 100, 
                        width: 120, 
                        child: Image.asset(
                          'gerard-pique-barcelona-yellow-ca.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      const Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Pique Bilang Wasit Untungkan Madrid, Koeman Tepok Jidat',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                'Barcelona Feb 13, 2021',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            // Second Tab Content (PERTANDINGAN HARI INI)
            const Center(
              child: Text("Content for PERTANDINGAN HARI INI"),
            ),
          ],
        ),
      ),
    );
  }
}