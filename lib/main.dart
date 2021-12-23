import 'package:flutter/material.dart';
import 'package:pnc_converter/conversion.dart';
import 'dart:ui';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    double permutation = 0;
    double combination = 0;

    double n = 0;
    double r = 0;
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "PnC Converter",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: SizedBox(
          height: 400,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13.0, vertical: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    SizedBox(
                      width: 170,
                      child: TextFormField(
                        decoration: const InputDecoration(
                            labelText: 'Enter n',
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.person),
                            labelStyle: TextStyle(fontSize: 16)),
                        maxLength: 15,
                        keyboardType: TextInputType.number,
                        onChanged: (value) {
                          n = double.parse(value);
                        },
                      ),
                    ),
                    SizedBox(
                      width: 170,
                      child: TextFormField(
                        decoration: const InputDecoration(
                            labelText: 'Enter r',
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.person),
                            labelStyle: TextStyle(fontSize: 16)),
                        maxLength: 15,
                        keyboardType: TextInputType.number,
                        onChanged: (value) {
                          r = double.parse(value);
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Permutation is: $n',
                        style: const TextStyle(
                          fontSize: 30,
                          fontFamily: 'SSPB',
                          color: Colors.blueGrey,
                        ),
                      ),
                      Text(
                        "Combination is: $combination",
                        style: const TextStyle(
                          fontSize: 30,
                          fontFamily: 'SSPB',
                          color: Colors.blueGrey,
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState() {
                      combination = Conversion.find_combination(n, r);
                      permutation = Conversion.find_permutation(n, r);
                    }
                  },
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 17, vertical: 11),
                    child: Text(
                      "Click Me",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        drawer: const Drawer(),
      ),
    );
  }
}
