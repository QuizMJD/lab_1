import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class Calculate extends StatefulWidget {
  const Calculate({super.key});

  @override
  State<Calculate> createState() => _CalculateState();
}

class _CalculateState extends State<Calculate> {
  final controllerA = TextEditingController();
  final controllerB = TextEditingController();
  final _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Login",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Tinh Toan"),
        ), body: Padding(padding: EdgeInsets.all(10),
                child: Form(
                  key: _key,
                  child:  Column(
                    crossAxisAlignment:  CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 100,
                        alignment: Alignment.center,
                        color: Colors.amberAccent,
                        child: const Text(
                          "Tinh toan",
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
), ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: controllerA,
                        decoration: InputDecoration(
                          labelText: "Nhap A",
                          border: const OutlineInputBorder(),
                          hintText: "So A",
                          suffixIcon: const Icon(Icons.numbers), 
                        ),
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          controller: controllerB,

                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          decoration: InputDecoration(
                            labelText: "Nhap B",
                            border: const OutlineInputBorder(),
                            hintText: "So B",
                            suffixIcon: const Icon(Icons.numbers)),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  var rs;
                                  if (controllerA.text != '' &&
                                      controllerB.text != '') {
                                        rs = double.parse(controllerA.text) + double.parse(controllerB.text);
                                      } else {
                                        rs = 'Vui long nhap lai A B';
                                      }
                                      showDialog(
                                        context: context, 
                                        builder: (context){
                                          return AlertDialog(
                                            content: Text(rs.toString()),
                                          );
});                                  },
                                child: Text('Cong')),
                                const SizedBox(
                                  width: 10,
                                ), ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor: 
                                            MaterialStateProperty.all(Colors.red)),
                                  onPressed: () {
                                    controllerA.text = '';
                                    controllerB.text = '';
                              },
                              child: Text('Huy')),
                            ],
                          )
                    ]), ),
        )));
  }
}

