// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TIPOHistorialStruct extends FFFirebaseStruct {
  TIPOHistorialStruct({
    String? pedido,
    String? visita,
    String? noCompra,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _pedido = pedido,
        _visita = visita,
        _noCompra = noCompra,
        super(firestoreUtilData);

  // "PEDIDO" field.
  String? _pedido;
  String get pedido => _pedido ?? '';
  set pedido(String? val) => _pedido = val;

  bool hasPedido() => _pedido != null;

  // "VISITA" field.
  String? _visita;
  String get visita => _visita ?? '';
  set visita(String? val) => _visita = val;

  bool hasVisita() => _visita != null;

  // "NO_COMPRA" field.
  String? _noCompra;
  String get noCompra => _noCompra ?? '';
  set noCompra(String? val) => _noCompra = val;

  bool hasNoCompra() => _noCompra != null;

  static TIPOHistorialStruct fromMap(Map<String, dynamic> data) =>
      TIPOHistorialStruct(
        pedido: data['PEDIDO'] as String?,
        visita: data['VISITA'] as String?,
        noCompra: data['NO_COMPRA'] as String?,
      );

  static TIPOHistorialStruct? maybeFromMap(dynamic data) => data is Map
      ? TIPOHistorialStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'PEDIDO': _pedido,
        'VISITA': _visita,
        'NO_COMPRA': _noCompra,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'PEDIDO': serializeParam(
          _pedido,
          ParamType.String,
        ),
        'VISITA': serializeParam(
          _visita,
          ParamType.String,
        ),
        'NO_COMPRA': serializeParam(
          _noCompra,
          ParamType.String,
        ),
      }.withoutNulls;

  static TIPOHistorialStruct fromSerializableMap(Map<String, dynamic> data) =>
      TIPOHistorialStruct(
        pedido: deserializeParam(
          data['PEDIDO'],
          ParamType.String,
          false,
        ),
        visita: deserializeParam(
          data['VISITA'],
          ParamType.String,
          false,
        ),
        noCompra: deserializeParam(
          data['NO_COMPRA'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TIPOHistorialStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TIPOHistorialStruct &&
        pedido == other.pedido &&
        visita == other.visita &&
        noCompra == other.noCompra;
  }

  @override
  int get hashCode => const ListEquality().hash([pedido, visita, noCompra]);
}

TIPOHistorialStruct createTIPOHistorialStruct({
  String? pedido,
  String? visita,
  String? noCompra,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    TIPOHistorialStruct(
      pedido: pedido,
      visita: visita,
      noCompra: noCompra,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

TIPOHistorialStruct? updateTIPOHistorialStruct(
  TIPOHistorialStruct? tIPOHistorial, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    tIPOHistorial
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addTIPOHistorialStructData(
  Map<String, dynamic> firestoreData,
  TIPOHistorialStruct? tIPOHistorial,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (tIPOHistorial == null) {
    return;
  }
  if (tIPOHistorial.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && tIPOHistorial.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final tIPOHistorialData =
      getTIPOHistorialFirestoreData(tIPOHistorial, forFieldValue);
  final nestedData =
      tIPOHistorialData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = tIPOHistorial.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getTIPOHistorialFirestoreData(
  TIPOHistorialStruct? tIPOHistorial, [
  bool forFieldValue = false,
]) {
  if (tIPOHistorial == null) {
    return {};
  }
  final firestoreData = mapToFirestore(tIPOHistorial.toMap());

  // Add any Firestore field values
  tIPOHistorial.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getTIPOHistorialListFirestoreData(
  List<TIPOHistorialStruct>? tIPOHistorials,
) =>
    tIPOHistorials
        ?.map((e) => getTIPOHistorialFirestoreData(e, true))
        .toList() ??
    [];
