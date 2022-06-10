import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:solarium/components/solarium_button_icon.dart';
import 'package:solarium/components/solarium_title.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 30),
          child: Column(
            children: [
              Row(
                children: [
                  const SizedBox(
                    width: 200.0,
                    child: SolariumTitle(text: 'Bem vindo ao seu Diarium'),
                  ),
                  const Spacer(),
                  SolariumButtonIcon(onPressed: () {}, icon: Icons.favorite)
                ],
              ),
              const Spacer(),
              const SizedBox(
                width: 250.0,
                child: Text('Você ainda não registrou nenhum relatório :(',
                    textAlign: TextAlign.center),
              ),
              const Spacer()
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        backgroundColor: Theme.of(context).colorScheme.primary,
        child: const Icon(Icons.add),
      ),
    );
  }
}
