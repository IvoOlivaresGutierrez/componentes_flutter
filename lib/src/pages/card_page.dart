import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cards"),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(
            height: 30.0,
          ),
          _cartTipo2()
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      // sombra
      elevation: 2.0,
      // borde
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue),
            title: Text("Titulo"),
            subtitle: Text(
                "Dolor est cillum pariatur non dolore aute irure officia non cupidatat dolor occaecat est sint."),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
            FlatButton(
              child: Text("Cancelar"),
              onPressed: () {},
            ),
            FlatButton(
              child: Text("Ok"),
              onPressed: () {},
            )
          ])
        ],
      ),
    );
  }

  Widget _cartTipo2() {
    final card = Container(
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage("https://picsum.photos/800/600"),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            fit: BoxFit.cover,
          ),

          // Image(
          //   image: NetworkImage("https://picsum.photos/800/600"),
          // ),
          Container(
              padding: EdgeInsets.all(10.0),
              child: Text("Proident ut exercitation sit sunt velit eiusmod."))
        ],
      ),
    );

    return Container(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15.0),
          child: card,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black26,
                blurRadius: 10.0,
                spreadRadius: 2.0,
                offset: Offset(0.5, 5.0))
          ],
        ));
  }
}
