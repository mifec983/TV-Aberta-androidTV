import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  /// Para selecionar o dia da grade de programação
  String _selectedDay = '';
  String get selectedDay => _selectedDay;
  set selectedDay(String value) {
    _selectedDay = value;
  }

  bool _mostrarBar = false;
  bool get mostrarBar => _mostrarBar;
  set mostrarBar(bool value) {
    _mostrarBar = value;
  }

  String _selectedButton = 'Segunda';
  String get selectedButton => _selectedButton;
  set selectedButton(String value) {
    _selectedButton = value;
  }

  String _uploadedImageURL = '';
  String get uploadedImageURL => _uploadedImageURL;
  set uploadedImageURL(String value) {
    _uploadedImageURL = value;
  }

  String _segundaData = '';
  String get segundaData => _segundaData;
  set segundaData(String value) {
    _segundaData = value;
  }

  DateTime? _currentDate = DateTime.fromMillisecondsSinceEpoch(1743470940000);
  DateTime? get currentDate => _currentDate;
  set currentDate(DateTime? value) {
    _currentDate = value;
  }

  List<String> _weekDates = [];
  List<String> get weekDates => _weekDates;
  set weekDates(List<String> value) {
    _weekDates = value;
  }

  void addToWeekDates(String value) {
    weekDates.add(value);
  }

  void removeFromWeekDates(String value) {
    weekDates.remove(value);
  }

  void removeAtIndexFromWeekDates(int index) {
    weekDates.removeAt(index);
  }

  void updateWeekDatesAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    weekDates[index] = updateFn(_weekDates[index]);
  }

  void insertAtIndexInWeekDates(int index, String value) {
    weekDates.insert(index, value);
  }

  String _itemWeekdatesCarregado = '';
  String get itemWeekdatesCarregado => _itemWeekdatesCarregado;
  set itemWeekdatesCarregado(String value) {
    _itemWeekdatesCarregado = value;
  }
}
