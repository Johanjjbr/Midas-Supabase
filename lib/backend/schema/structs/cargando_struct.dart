// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CargandoStruct extends FFFirebaseStruct {
  CargandoStruct({
    String? articulos,
    String? rutas,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _articulos = articulos,
        _rutas = rutas,
        super(firestoreUtilData);

  // "Articulos" field.
  String? _articulos;
  String get articulos => _articulos ?? '';
  set articulos(String? val) => _articulos = val;

  bool hasArticulos() => _articulos != null;

  // "Rutas" field.
  String? _rutas;
  String get rutas => _rutas ?? '';
  set rutas(String? val) => _rutas = val;

  bool hasRutas() => _rutas != null;

  static CargandoStruct fromMap(Map<String, dynamic> data) => CargandoStruct(
        articulos: data['Articulos'] as String?,
        rutas: data['Rutas'] as String?,
      );

  static CargandoStruct? maybeFromMap(dynamic data) =>
      data is Map ? CargandoStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'Articulos': _articulos,
        'Rutas': _rutas,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Articulos': serializeParam(
          _articulos,
          ParamType.String,
        ),
        'Rutas': serializeParam(
          _rutas,
          ParamType.String,
        ),
      }.withoutNulls;

  static CargandoStruct fromSerializableMap(Map<String, dynamic> data) =>
      CargandoStruct(
        articulos: deserializeParam(
          data['Articulos'],
          ParamType.String,
          false,
        ),
        rutas: deserializeParam(
          data['Rutas'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CargandoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CargandoStruct &&
        articulos == other.articulos &&
        rutas == other.rutas;
  }

  @override
  int get hashCode => const ListEquality().hash([articulos, rutas]);
}

CargandoStruct createCargandoStruct({
  String? articulos,
  String? rutas,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CargandoStruct(
      articulos: articulos,
      rutas: rutas,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CargandoStruct? updateCargandoStruct(
  CargandoStruct? cargando, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    cargando
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCargandoStructData(
  Map<String, dynamic> firestoreData,
  CargandoStruct? cargando,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (cargando == null) {
    return;
  }
  if (cargando.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && cargando.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final cargandoData = getCargandoFirestoreData(cargando, forFieldValue);
  final nestedData = cargandoData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = cargando.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCargandoFirestoreData(
  CargandoStruct? cargando, [
  bool forFieldValue = false,
]) {
  if (cargando == null) {
    return {};
  }
  final firestoreData = mapToFirestore(cargando.toMap());

  // Add any Firestore field values
  cargando.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCargandoListFirestoreData(
  List<CargandoStruct>? cargandos,
) =>
    cargandos?.map((e) => getCargandoFirestoreData(e, true)).toList() ?? [];
