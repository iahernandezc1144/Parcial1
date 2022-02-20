import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Parcial',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Parcial 1 Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/image.jpg'),
                      fit: BoxFit.cover)),
              child: Column(
                children: [
                  Center(
                    child: Icon(
                      Icons.accessibility,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                  Center(
                    child: Text(
                      'Ingrese sus Datos',
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.green,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Center(
                    child: campoCarnet('Carnet', Icons.card_travel),
                  ),
                  Center(
                    child: campoCarnet('Nombre', Icons.people),
                  ),
                  Center(
                    child: campoCarnet('Apellidos', Icons.people),
                  ),
                  Center(
                    child: campoAddress('Dirección', Icons.map_sharp),
                  ),
                  Center(
                    child: campoPassword('Contraseña', Icons.lock),
                  ),
                  Center(
                    child: campoPassword('Repetir contraseña', Icons.lock),
                  ),
                  Center(
                    child: campoCarnet('Correo', Icons.mail),
                  ),
                  // ignore: deprecated_member_use
                  FlatButton(
                      color: Colors.blueAccent,
                      padding:
                          EdgeInsets.symmetric(horizontal: 150, vertical: 10),
                      onPressed: () {},
                      child: Text(
                        'Guardar',
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      )),
                  SizedBox(height: 20),
                  // ignore: deprecated_member_use
                  FlatButton(
                      color: Colors.greenAccent,
                      padding:
                          EdgeInsets.symmetric(horizontal: 150, vertical: 10),
                      onPressed: () {},
                      child: Text(
                        'Cancelar',
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ))
                ],
              ),
            ),
          ],
        ));
  }

  Widget campoCarnet(hint, iconString) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: TextField(
        decoration: InputDecoration(
            hintText: hint,
            fillColor: Colors.white,
            filled: false,
            prefixIcon: Icon(iconString)),
      ),
    );
  }

  Widget campoPassword(hint, iconString) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
            hintText: hint,
            fillColor: Colors.white,
            filled: false,
            prefixIcon: Icon(iconString)),
      ),
    );
  }

  Widget campoAddress(hint, iconString) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: TextField(
        keyboardType: TextInputType.multiline,
        maxLines: null,
        decoration: InputDecoration(
            hintText: hint,
            fillColor: Colors.white,
            filled: false,
            prefixIcon: Icon(iconString)),
      ),
    );
  }
}
