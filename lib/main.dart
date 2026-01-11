import 'package:flutter/material.dart';

void main() {
  runApp(const MonAppli());
}
class MonAppli extends StatelessWidget {
  const MonAppli({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Magazine",
      debugShowCheckedModeBanner: false,
      home: PageAccueil(),
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
    body:SingleChildScrollView(
      child: const Column(
        children: [
          Image(image: AssetImage("assets/images/magazineInfo.jpg")
          ),
          PartieTitre(),
          PartieTexe(),
          PartieIcone(),
          PartieRubrique()
        ],
      ),
    )
   // floatingActionButton: FloatingActionButton(
      // onPressed: (){
     //   ScaffoldMessenger.of(context).showSnackBar(
     //     const SnackBar(
    //          content: Text("Tu as cliqué dessus"),
     //     )
    //    );
    //  },
     // backgroundColor: Colors.pink,
    //  child: const Text(
    //    "Click",
      //  style: TextStyle(color: Colors.white),
     // ),
    //),
    );
  }
}

class PartieTitre extends StatelessWidget {
  const PartieTitre({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Bienvenue au Magazine Infos",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w800,
          ),
          ),
          Text("Votre magazine numérique, votre source d'inspiration",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}

class PartieTexe extends StatelessWidget {
  const PartieTexe({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: const Text(
          "Magazine Infos est bien plus simple magazine d'information."
              "C'est votre passerelle vers le monde"
      ),
    );
  }
}

class PartieIcone extends StatelessWidget {
  const PartieIcone({super.key});

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
                SizedBox(height: 5,),
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
                SizedBox(height: 5,),
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
                SizedBox(height: 5,),
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

class PartieRubrique extends StatelessWidget {
  const PartieRubrique({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset("assets/images/design.jpg"),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset("assets/images/presse.jpg"),
          )
        ],
      ),
    );
  }
}
