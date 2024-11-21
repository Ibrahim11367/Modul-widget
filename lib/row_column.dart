import 'package:flutter/material.dart';

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            const Text("Toko Online"),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.all(8),
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(),
                  ),
                  child: const Column(
              children: [
                  Image(image: AssetImage("assets/download.jpg")),
                  Text("Download")
                    ],
                  ),
                ),
                const Column(
              children: [
                  Image(image: AssetImage("assets/download.jpg")),
                  Text("Download")
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}