import 'package:flutter/material.dart';
import 'package:solarium/components/solarium_button.dart';

import '../components/solarium_input.dart';

class Report extends StatelessWidget {
  const Report({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text("Novo Relatório"),
        backgroundColor: Theme.of(context).colorScheme.surface,
        foregroundColor: Theme.of(context).colorScheme.primary,
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 30),
          child: Column(
            children: [
              const SolariumInput(hintText: 'Dia do relatório'),
              const SizedBox(height: 20.0),
              const SolariumInput(
                hintText: 'Escreva algo',
                lines: 6,
              ),
              const SizedBox(height: 20.0),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: SolariumButton(
                  text: 'Adicionar Foto',
                  onPressed: () {},
                ),
              ),
              const Spacer(),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: SolariumButton(
                  text: 'Salvar',
                  onPressed: () {},
                  type: ButtonType.secondary,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
