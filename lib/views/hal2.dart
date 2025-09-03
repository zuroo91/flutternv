import 'package:flutter/material.dart';

class Halaman2 extends StatelessWidget {
  const Halaman2({super.key, required this.data});
  final String data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman 2'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Halaman 2',
            style: TextStyle(fontSize: 30),
            ),
            SizedBox(height: 20),

            Text('teks: $data',
            style: TextStyle(fontSize: 20),
            ),
           
           SizedBox(height: 20),
           SizedBox(
            height: 200,
            child: ListView(
              children: [
                ListTile(
                  leading: CircleAvatar(backgroundColor: Colors.pink),
                  title: Text('Pink'),
                  onTap: () => Navigator.pop(context, Colors.pink),
                ),
                ListTile(
                  leading: CircleAvatar(backgroundColor: Colors.blue),
                  title: Text('Hijau'),
                  onTap: () => Navigator.pop(context, Colors.blue),
                ),
                ListTile(
                  leading: CircleAvatar(backgroundColor: Colors.purple),
                  title: Text('Ungu'),
                  onTap: () => Navigator.pop(context, Colors.purple),
                )
              ],
            )
           )
          ],
        ),
      ),
    );
  }
}