import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  SliderPage({Key key}) : super(key: key);

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlider = 100.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sliders 800*1000"),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[_crearSlider(), Expanded(child: _crearImagen())],
        ),
      ),
    );
  }

  Widget _crearSlider() {
    return Slider(
      activeColor: Colors.indigoAccent,
      label: "Tamaño de la imagen",
      // divisions: 20,
      value: _valorSlider,
      min: 10,
      max: 400,
      onChanged: (newValue) {
        setState(() {
          _valorSlider = newValue;
        });
      },
    );
  }

  Widget _crearImagen() {
    return Image(
        image: NetworkImage("https://picsum.photos/800/1000"),
        width: _valorSlider,
        fit: BoxFit.contain);
  }
}
