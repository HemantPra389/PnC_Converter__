import 'package:flutter/material.dart';
import 'package:pnc_converter/conversion.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String permutation = Conversion.n.toString();
  String combination = Conversion.r.toString();
  bool mybtn = false;

  @override
  Widget build(BuildContext context) {
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
                            prefixIcon: Icon(Icons.exposure_plus_1),
                            labelStyle: TextStyle(fontSize: 16)),
                        maxLength: 15,
                        keyboardType: TextInputType.number,
                        onChanged: (value) {
                          if (value.isEmpty) {
                            Conversion.n = 1;
                          } else {
                            Conversion.n = double.parse(value);
                          }
                        },
                      ),
                    ),
                    SizedBox(
                      width: 170,
                      child: TextFormField(
                        decoration: const InputDecoration(
                            labelText: 'Enter r',
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.exposure_plus_1),
                            labelStyle: TextStyle(fontSize: 16)),
                        maxLength: 15,
                        keyboardType: TextInputType.number,
                        onChanged: (value) {
                          if (value.isEmpty) {
                            Conversion.r = 1;
                          } else {
                            Conversion.r = double.parse(value);
                          }
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 150,
                  width: 340,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Flexible(
                        child: Text(
                          permutation,
                          style: const TextStyle(
                            fontSize: 26,
                            fontFamily: 'SSPB',
                            color: Colors.blueGrey,
                          ),
                        ),
                      ),
                      Flexible(
                        child: Text(
                          combination,
                          style: const TextStyle(
                            fontSize: 26,
                            fontFamily: 'SSPB',
                            color: Colors.blueGrey,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      mybtn = !mybtn;
                      permutation = Conversion.find_permutation(
                          Conversion.n, Conversion.r);
                      combination = Conversion.find_combination(
                          Conversion.n, Conversion.r);
                    });
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
      ),
    );
  }
}
