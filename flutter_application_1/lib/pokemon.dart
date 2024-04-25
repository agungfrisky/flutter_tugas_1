import 'package:just_audio/just_audio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PokemonCard extends StatefulWidget {
  const PokemonCard({super.key});

  @override
  State<PokemonCard> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<PokemonCard> {
  String? namaChar = "Silahkan pilih karakter";

  gantiNama(String nama) {
    setState(() {
      namaChar = nama;
    });
  }

  final player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Pokemon Card",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.red,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 60.0, right: 60.0, top: 10.0),
                // height: size.height / 1, // adjust the height to your preference
                child: GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 0,
                  crossAxisSpacing: 0,
                  shrinkWrap: true,
                  children: [
                    SizedBox(
                      child: GestureDetector(
                        onTap: () async {
                          gantiNama("Pikachu");
                          await player.setAsset("asset/suara/pikachu.mp3");
                          await player.play();
                        },
                        child: Card(
                          child: Image.asset("asset/gambar/pikachu.png"),
                        ),
                      ),
                    ),
                    SizedBox(
                      child: GestureDetector(
                        onTap: () async {
                          gantiNama("Squirtle");
                          await player.setAsset("asset/suara/squirtle.mp3");
                          await player.play();
                        },
                        child: Card(
                          child: Image.asset("asset/gambar/squirtle.png"),
                        ),
                      ),
                    ),
                    SizedBox(
                      child: GestureDetector(
                        onTap: () async {
                          gantiNama("Bulbasaur");
                          await player.setAsset("asset/suara/bulbasaur.mp3");
                          await player.play();
                        },
                        child: Card(
                          child: Image.asset("asset/gambar/bulbasaur.png"),
                        ),
                      ),
                    ),
                    SizedBox(
                      child: GestureDetector(
                        onTap: () async {
                          gantiNama("Charmeleon");
                          await player.setAsset("asset/suara/charmeleon.mp3");
                          await player.play();
                        },
                        child: Card(
                          child: Image.asset("asset/gambar/charmeleon.png"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: size.height / 3.5,
                width: size.width,
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: () async {
                    gantiNama("Wooloo");
                    await player.setAsset("asset/suara/wooloo.mp3");
                    await player.play();
                  },
                  child: Card(
                    child: Image.asset("asset/gambar/wooloo.png"),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    namaChar ?? "Silahkan pilih kartu",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
