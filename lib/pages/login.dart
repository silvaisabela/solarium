import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:solarium/components/solarium_button.dart';
import 'package:solarium/components/solarium_input.dart';
import 'package:solarium/pages/home.dart';

const diarium = 'assets/images/diarium.svg';
const star = 'assets/images/star.svg';
const astronaut = 'assets/images/astronaut.svg';
const login = 'assets/images/login.svg';
const background = 'assets/images/background.png';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

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
                Center(
                  child: SvgPicture.asset(
                    login,
                    color: Colors.black,
                    semanticsLabel: 'A red up arrow',
                  ),
                ),
                const SizedBox(height: 40.0),
                SolariumInput(hintText: 'Usuário'),
                SolariumInput(hintText: 'Senha'),
                const Spacer(),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: SolariumButton(
                      text: 'Entrar',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Home(),
                          ),
                        );
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
