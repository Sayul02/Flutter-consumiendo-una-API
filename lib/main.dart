import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Persona> _personas = [
    Persona('Jose Nabor', 'Ramirez', '20101589'),
    Persona('Pedro', 'Garcia', '20155689'),
    Persona('Luis', 'Perez', '20143625'),
    Persona('Carlos', 'Ruiz', '20164578'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green,
          child: Icon(Icons.people_alt_outlined),
          onPressed: () {
            setState(() {
              _personas.add(Persona('Sayul', 'Sant', '20187696'));
            });
          },
        ),
        body: ListView.builder(
          itemCount: _personas.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(_personas[index].name + ' ' + _personas[index].lastName),
              subtitle: Text(_personas[index].cuenta),
              leading: CircleAvatar(
                child: Text(_personas[index].name.substring(0, 1)),
              ),
              trailing: Icon(Icons.arrow_forward_ios),
            );
          },
        ),
      ),
    );
  }
}

class Persona {
  String name;
  String lastName;
  String cuenta;

  Persona(this.name, this.lastName, this.cuenta);
}
