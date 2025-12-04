import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import 'backend/supabase/supabase.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _listaPedido = prefs
              .getStringList('ff_listaPedido')
              ?.map((x) {
                try {
                  return CartItemStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _listaPedido;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  double _precioDef = 0.0;
  double get precioDef => _precioDef;
  set precioDef(double value) {
    _precioDef = value;
  }

  int _CODIGO = 0;
  int get CODIGO => _CODIGO;
  set CODIGO(int value) {
    _CODIGO = value;
  }

  DocumentReference? _mvendedores;
  DocumentReference? get mvendedores => _mvendedores;
  set mvendedores(DocumentReference? value) {
    _mvendedores = value;
  }

  String _Nombre = '';
  String get Nombre => _Nombre;
  set Nombre(String value) {
    _Nombre = value;
  }

  DocumentReference? _DEPOSITORef;
  DocumentReference? get DEPOSITORef => _DEPOSITORef;
  set DEPOSITORef(DocumentReference? value) {
    _DEPOSITORef = value;
  }

  String _deposito = '9';
  String get deposito => _deposito;
  set deposito(String value) {
    _deposito = value;
  }

  List<CartItemStruct> _listaPedido = [];
  List<CartItemStruct> get listaPedido => _listaPedido;
  set listaPedido(List<CartItemStruct> value) {
    _listaPedido = value;
    prefs.setStringList(
        'ff_listaPedido', value.map((x) => x.serialize()).toList());
  }

  void addToListaPedido(CartItemStruct value) {
    listaPedido.add(value);
    prefs.setStringList(
        'ff_listaPedido', _listaPedido.map((x) => x.serialize()).toList());
  }

  void removeFromListaPedido(CartItemStruct value) {
    listaPedido.remove(value);
    prefs.setStringList(
        'ff_listaPedido', _listaPedido.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromListaPedido(int index) {
    listaPedido.removeAt(index);
    prefs.setStringList(
        'ff_listaPedido', _listaPedido.map((x) => x.serialize()).toList());
  }

  void updateListaPedidoAtIndex(
    int index,
    CartItemStruct Function(CartItemStruct) updateFn,
  ) {
    listaPedido[index] = updateFn(_listaPedido[index]);
    prefs.setStringList(
        'ff_listaPedido', _listaPedido.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInListaPedido(int index, CartItemStruct value) {
    listaPedido.insert(index, value);
    prefs.setStringList(
        'ff_listaPedido', _listaPedido.map((x) => x.serialize()).toList());
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
