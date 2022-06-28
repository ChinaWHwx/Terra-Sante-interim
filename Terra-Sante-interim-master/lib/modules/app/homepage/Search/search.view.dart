import 'package:flutter/material.dart';
import 'package:flutter_application_1/modules/app/homepage/Search/search.controller.dart';
import 'package:flutter_application_1/shared/widgets/Animation/FadeAnimation.dart';
import 'package:get/get.dart';

class SearchView extends GetView<SearchController> {
  const SearchView({Key? key}) : super(key: key);
  get top => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 300,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/background.png'),
                    fit: BoxFit.fill),
              ),
              child: Container(
                decoration: BoxDecoration(
                    gradient:
                        LinearGradient(begin: Alignment.bottomRight, colors: [
                  Colors.black.withOpacity(.8),
                  Colors.black.withOpacity(.2),
                ])),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    const FadeAnimation(
                        1,
                        Text(
                          "Ce que vous souhaitez trouver ?",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        )),
                    const SizedBox(
                      height: 30,
                    ),
                    FadeAnimation(
                        1.3,
                        Container(
                          padding: const EdgeInsets.symmetric(vertical: 3),
                          margin: const EdgeInsets.symmetric(horizontal: 40),
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white,
                          ),
                          child: const TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: Colors.grey,
                                ),
                                hintStyle:
                                    TextStyle(color: Colors.grey, fontSize: 15),
                                hintText:
                                    "Explorer selon le temps, les régions..."),
                          ),
                        )),
                    const SizedBox(
                      height: 30,
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  FadeAnimation(
                      1,
                      Text(
                        "Par le temps",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[800],
                            fontSize: 20),
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  FadeAnimation(
                      1.4,
                      SizedBox(
                        height: 200,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            makeItem(
                                image: 'assets/images/matin.jpg',
                                title: 'matin'),
                            makeItem(
                                image: 'assets/images/après-midi.jpg',
                                title: 'après-midi'),
                            makeItem(
                                image: 'assets/images/soir.jpg', title: 'soir'),
                            makeItem(
                                image: 'assets/images/minuiut.jpg',
                                title: 'minuiut')
                          ],
                        ),
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  FadeAnimation(
                      1,
                      Text(
                        "Par les régions",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[800],
                            fontSize: 20),
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  FadeAnimation(
                      1.4,
                      SizedBox(
                        height: 200,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            makeItem(
                                image: 'assets/images/Hauts-de-France.png',
                                title: 'Hauts-de-France'),
                            makeItem(
                                image: 'assets/images/ile_de_france.png',
                                title: 'île-de-France'),
                            makeItem(
                                image: 'assets/images/Grande-Est.png',
                                title: 'Grande-Est'),
                            makeItem(
                                image: "assets/images/Nouvelle-Aquitaine.jpg",
                                title: "Nouvelle-Aquitaine"),
                            makeItem(
                                image:
                                    'assets/images/Auvergne-Rhônes-Alpes.png',
                                title: 'Auvergne-Rhônes-Alpes'),
                            makeItem(
                                image:
                                    "assets/images/Provence-Alpes-Côte d'Azur.png",
                                title: "Provence-Alpes-Côte d'Azur"),
                            makeItem(
                                image:
                                    "assets/images/Bourgogne-Franche-Comté.jpg",
                                title: "Bourgogne-Franche-Comté"),
                            makeItem(
                                image: "assets/images/Bretagne.jpg",
                                title: "Bretagne"),
                            makeItem(
                                image: "assets/images/Centre_Val_de_loire.jpg",
                                title: "Centre Val de loire"),
                            makeItem(
                                image: "assets/images/Occitanie.jpg",
                                title: "Occitanie"),
                            makeItem(
                                image: "assets/images/Normandie.png",
                                title: "Normandie"),
                            makeItem(
                                image: "assets/images/Pays de la Loire.jpg",
                                title: "Pays de la Loire"),
                            makeItem(
                                image: "assets/images/Corse.jpg",
                                title: "Corse"),
                          ],
                        ),
                      )),
                  const SizedBox(
                    height: 80,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget makeItem({image, title}) {
    return AspectRatio(
      aspectRatio: 1 / 1,
      child: Container(
        margin: const EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image:
                DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
                Colors.black.withOpacity(.8),
                Colors.black.withOpacity(.2),
              ])),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              title,
              style: const TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
