import 'package:flutter/material.dart';

class Input_selection extends StatefulWidget {
  const Input_selection({super.key});

  @override
  State<Input_selection> createState() => _Input_selectionState();
}

class _Input_selectionState extends State<Input_selection> {
  TextEditingController nama = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      child: Column(
        children: [
          TextField(
            controller: nama,
            obscureText: false,
            onChanged: (a) {
                setState(() {});
            },
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              label: Text("Input Nama"),
            ),
          ),
          Text(nama.text),
        ],
      ),
    );
  }
}