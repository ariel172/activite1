import 'package:flutter/foundation.dart';
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
      home: partieIcone(),
    );
  }
}


class PageAccueil extends StatelessWidget {
  const PageAccueil({super.key});

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
        child: Image.asset('assets/images/magazineInfo.jpg',
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

class partieTitre extends StatelessWidget {
  const partieTitre({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Bienvenue au Magazine Infos",
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
          ),
          Text("Votre magazine numérique, votre source d'inspiration",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}

class partieTexe extends StatelessWidget {
  const partieTexe({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: const Text("Magazine Infos est bien plus simple magazine d'information"),
    );
  }
}

class partieIcone extends StatelessWidget {
  const partieIcone({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Icon(Icons.phone, color: Colors.pink),
                SizedBox(height: 6,),
                Text("Tel".toUpperCase(),
                  style: TextStyle(color: Colors.pink),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Icon(Icons.email, color: Colors.pink),
                SizedBox(height: 6,),
                Text("mail".toUpperCase(),
                  style: TextStyle(color: Colors.pink),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Icon(Icons.share, color: Colors.pink),
                SizedBox(height: 6,),
                Text("partage".toUpperCase(),
                  style: TextStyle(color: Colors.pink),
                )
              ],
            )
          )
        ],
      ),
    );
  }
}
