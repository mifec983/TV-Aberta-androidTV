// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Imports other custom actions
// Imports custom functions

List<String> generateWeekDates(DateTime currentDate) {
  int diaAtual = currentDate.weekday; // Segunda-feira = 1, Domingo = 7.
  List<String> dias = [];

  List<String> nomesDosDias = [
    "Segunda",
    "Terça",
    "Quarta",
    "Quinta",
    "Sexta",
    "Sabado",
    "Domingo"
  ];

  for (int i = 0; i < 7; i++) {
    DateTime dia = currentDate
        .subtract(Duration(days: diaAtual - 1))
        .add(Duration(days: i));

    dias.add("${dia.day}/${dia.month}");

    // Aqui comparamos o dia gerado com o dia atual:
    if (dia.day == currentDate.day &&
        dia.month == currentDate.month &&
        dia.year == currentDate.year) {
      FFAppState().selectedDay =
          nomesDosDias[i]; // Define: "Segunda", "Terça", etc.
    }
  }

  return dias;
}
