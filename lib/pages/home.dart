import 'package:flutter/material.dart';
import 'package:solarium/components/solarium_button_icon.dart';
import 'package:solarium/components/solarium_report_card.dart';
import 'package:solarium/components/solarium_title.dart';
import 'package:solarium/pages/reports.dart';
import '../userReports.dart' as globals;

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
                  SolariumButtonIcon(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) => const AlertDialog(
                            title: Text('Quem somos?'),
                            content: Text(
                                'Nome: Isabela da Silva RM: 84785   Nome: Renato Lourenço RM: 84428 Turma: 3ºSIR'),
                          ),
                        );
                      },
                      icon: Icons.favorite)
                ],
              ),
              const SizedBox(height: 15),
              SizedBox(
                  child: Column(
                children: <Widget>[
                  for (var item in globals.reports)
                    Column(
                      children: [
                        ReportCard(
                          reportDate: item.date,
                          reportImg: item.img,
                          reportText: item.text,
                        ),
                        const SizedBox(height: 15)
                      ],
                    )
                ],
              )),
              const Spacer(),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Reports(),
            ),
          );
        },
        backgroundColor: Theme.of(context).colorScheme.primary,
        child: const Icon(Icons.add),
      ),
    );
  }
}
