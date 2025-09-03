import 'package:flutter/material.dart';
import './hal2.dart';

class Halaman1 extends StatefulWidget {
const  Halaman1({super.key});

  @override
  State<Halaman1> createState() => _Halaman1State();
}

class _Halaman1State extends State<Halaman1> {
final TextEditingController dataTextField = TextEditingController();
Color selectedColor = Colors.black;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              color: selectedColor,
            ),
            const Text(
              'Halaman 1',
              style: TextStyle(fontSize: 30),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  controller: dataTextField,
                  decoration: InputDecoration(
                    labelText: 'Masukkan Text',
                    border: OutlineInputBorder(),
                  ),
                ),
                ),
              const SizedBox(height: 20),
              ElevatedButton.icon(
                onPressed:() async {
                  String data = dataTextField.text;
                  final hasil = await Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (context) =>  Halaman2(data: data,),
                      ));

                      if (hasil != null) {
                        setState(() {
                          selectedColor = hasil;
                        });
                      }
                },
                icon: const Icon(Icons.navigate_next),
                label: const Text('Ke Halaman 2',
                style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                  iconColor: Colors.white,
                ),
                )
          ],
        )
    );
  }
}