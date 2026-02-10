import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Volume value
  int _volume = 0;

  // Selected dropdown value
  String selectedItem = 'Red';

  // List used to keep item
  final List<String> colors = ['Red', 'Blue', 'Green', 'Yellow'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Icon & Dropdown Demo')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // ICON BUTTON
            IconButton(
              icon: const Icon(Icons.volume_up),
              tooltip: 'Increase volume',
              onPressed: () {
                setState(() {
                  _volume += 1;
                });
              },
            ),

            // VOLUME TEXT
            Text('Volume: $_volume', style: const TextStyle(fontSize: 18)),

            const SizedBox(height: 20),

            // DROPDOWN
            DropdownButton<String>(
              value: selectedItem,
              items: colors.map((color) {
                return DropdownMenuItem<String>(
                  value: color,
                  child: Text(color),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedItem = value!;
                });
              },
            ),

            const SizedBox(height: 20),

            // DISPLAY SELECTED VALUE
            Text(
              'Selected Color: $selectedItem',
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
