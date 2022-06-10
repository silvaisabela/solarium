import 'package:flutter/material.dart';
import 'package:solarium/components/solarium_button.dart';
import 'package:solarium/models/Report.dart';
import 'package:solarium/pages/home.dart';
import '../userReports.dart' as globals;
import '../components/solarium_input.dart';

class Reports extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Reports();
  }
}

class _Reports extends State<Reports> {
  TextEditingController reportDateController = TextEditingController();
  FocusNode reportDateFocus = FocusNode();

  TextEditingController reportTextController = TextEditingController();
  FocusNode reportTextFocus = FocusNode();

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
              SolariumInput(
                hintText: 'Dia do relatório',
                focusNode: reportDateFocus,
                userInputController: reportDateController,
              ),
              const SizedBox(height: 20.0),
              SolariumInput(
                hintText: 'Escreva algo',
                lines: 6,
                focusNode: reportTextFocus,
                userInputController: reportTextController,
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
                  onPressed: () {
                    globals.reports.add(Report(
                        date: reportDateController.text,
                        text: reportTextController.text,
                        img: globals.urlTeste));
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Home(),
                      ),
                    );
                  },
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
