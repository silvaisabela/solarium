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
          padding: const EdgeInsets.only(top: 50, left: 30, right: 30),
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
                    icon: Icons.favorite,
                  )
                ],
              ),
              const SizedBox(height: 15),
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  itemCount: globals.reports.length,
                  itemBuilder: (BuildContext context, int index) {
                    var item = globals.reports[index];
                    return Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: ReportCard(
                        reportDate: item.date,
                        reportText: item.text,
                        reportImg:
                            "https://picsum.photos/id/${item.imageId}/1000/600?grayscale",
                      ),
                    );
                  },
                ),
              ),
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
