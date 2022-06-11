import 'dart:math';

import 'package:flutter/material.dart';
import 'package:solarium/models/Report.dart';
import 'package:solarium/pages/home.dart';
import '../components/solarium_button_icon.dart';
import '../components/solarium_button.dart';
import '../components/solarium_title.dart';
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

  Widget? image;
  String imageId = "1";
  final _random = new Random();

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
        child: SingleChildScrollView(
          child: SizedBox(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 30),
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20.0),
                      child: Row(
                        children: [
                          const SizedBox(
                            child: SolariumTitle(text: 'Adicionar Imagem'),
                          ),
                          const Spacer(),
                          SolariumButtonIcon(
                            onPressed: () {
                              setState(() {
                                imageId =
                                    (_random.nextInt(1000 - 1) + 1).toString();
                                image = ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Image.network(
                                    "https://picsum.photos/id/${imageId}/1000/600?grayscale",
                                    fit: BoxFit.fill,
                                    height: double.infinity,
                                    width: double.infinity,
                                  ),
                                );
                              });
                            },
                            icon: Icons.camera_enhance,
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.grey[500],
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: image,
                    ),
                    const SizedBox(height: 20.0),
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
                    const Spacer(),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: SolariumButton(
                        text: 'Salvar',
                        onPressed: () {
                          globals.reports.add(
                            Report(
                              date: reportDateController.text,
                              text: reportTextController.text,
                              imageId: imageId,
                            ),
                          );
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
          ),
        ),
      ),
    );
  }
}
