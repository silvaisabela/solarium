import 'package:flutter/cupertino.dart';

class ReportCard extends StatelessWidget {
  final String reportDate;
  final String reportImg;
  final String reportText;

  ReportCard(
      {required this.reportDate,
      required this.reportImg,
      required this.reportText});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border:
                    Border.all(color: Color.fromARGB(255, 0, 0, 0), width: 2)),
            child: Column(children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                height: 50,
                width: 400,
                decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                            color: Color.fromARGB(255, 0, 0, 0), width: 2))),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(reportDate,
                      style: const TextStyle(fontWeight: FontWeight.bold)),
                ),
              ),
              SizedBox(
                child: Image.network(
                  reportImg,
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(reportText),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 15)),
            ])));
  }
}
