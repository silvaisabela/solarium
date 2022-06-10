import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:solarium/components/solarium_button.dart';
import 'package:solarium/components/solarium_title.dart';

const diarium = 'assets/images/diarium.svg';
const star = 'assets/images/star.svg';
const astronaut = 'assets/images/astronaut.svg';
const background = 'assets/images/background.png';

class Entry extends StatelessWidget {
  const Entry({Key? key}) : super(key: key);

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
                    astronaut,
                    semanticsLabel: 'A red up arrow',
                  ),
                ),
                const Spacer(),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: SolariumButton(
                    text: "Login",
                    type: ButtonType.secondary,
                    onPressed: () {},
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
