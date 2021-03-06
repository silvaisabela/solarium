import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:solarium/components/solarium_button.dart';
import 'package:solarium/components/solarium_title.dart';
import 'package:solarium/pages/login.dart';

const diarium = 'assets/images/diarium.svg';
const star = 'assets/images/star.svg';
const astronaut = 'assets/images/astronaut.svg';
const background = 'assets/images/background.png';
const rocket = 'assets/images/rocket.svg';

class Entry extends StatefulWidget {
  const Entry({Key? key}) : super(key: key);

  @override
  State<Entry> createState() => _EntryState();
}

class _EntryState extends State<Entry> {
  String imagePath = astronaut;

  @override
  void initState() {
    Timer.periodic(const Duration(seconds: 20), (timer) => {changeImage()});
    super.initState();
  }

  void changeImage() {
    setState(() {
      imagePath = imagePath == astronaut ? rocket : astronaut;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(background),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 30),
            child: Column(
              children: [
                Center(
                  child: SvgPicture.asset(
                    diarium,
                    color: Colors.black,
                    semanticsLabel: 'A red up arrow',
                  ),
                ),
                Center(
                  child: SvgPicture.asset(
                    star,
                    color: Colors.black,
                    semanticsLabel: 'A red up arrow',
                  ),
                ),
                const Spacer(),
                const SolariumTitle(
                  text:
                      'Registre cada detalhe da sua jornada espacial no Diarium',
                  size: TitleSize.large,
                ),
                const Spacer(),
                Center(
                  child: SvgPicture.asset(
                    imagePath,
                    semanticsLabel: 'A red up arrow',
                  ),
                ),
                const Spacer(),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: SolariumButton(
                    text: "Login",
                    type: ButtonType.secondary,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Login(),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
