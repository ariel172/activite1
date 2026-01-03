import 'package:flutter/material.dart';

void main() {
  runApp(const MonAppli());
}
class MonAppli extends StatelessWidget {
  const MonAppli({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Magazine",
      debugShowCheckedModeBanner: false,
      home: pageAccueil(),
    );
  }
}


class pageAccueil extends StatelessWidget {
  const pageAccueil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Magazine infos",
          style: TextStyle(
            color: Colors.white
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.pink,
        actions: <Widget>[
          IconButton(
              onPressed: (){},
              icon: const Icon(Icons.search),
              color: Colors.white,
          )
        ],
        leading: IconButton(
          icon: const Icon(Icons.menu),
          color: Colors.white,
          onPressed: () {},
        ),
      ),
    body: Center(
        child: Image.asset('assets/images/imageMaison.png',
          fit: BoxFit.cover
        ),
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: (){
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
              content: Text("Tu as cliqué dessus"),
          )
        );
      },
      backgroundColor: Colors.pink,
      child: const Text(
        "Click",
        style: TextStyle(color: Colors.white),
      ),
    ),
    );
  }
}

