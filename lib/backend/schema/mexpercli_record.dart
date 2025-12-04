import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MexpercliRecord extends FirestoreRecord {
  MexpercliRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "CODIGOCLIENTE" field.
  int? _codigocliente;
  int get codigocliente => _codigocliente ?? 0;
  bool hasCodigocliente() => _codigocliente != null;

  // "CODIGOPERCEPCION" field.
  int? _codigopercepcion;
  int get codigopercepcion => _codigopercepcion ?? 0;
  bool hasCodigopercepcion() => _codigopercepcion != null;

  // "NROEXENCION" field.
  int? _nroexencion;
  int get nroexencion => _nroexencion ?? 0;
  bool hasNroexencion() => _nroexencion != null;

  // "FECHAEXENCION" field.
  int? _fechaexencion;
  int get fechaexencion => _fechaexencion ?? 0;
  bool hasFechaexencion() => _fechaexencion != null;

  // "PORCREDUCCION" field.
  double? _porcreduccion;
  double get porcreduccion => _porcreduccion ?? 0.0;
  bool hasPorcreduccion() => _porcreduccion != null;

  // "FECHAULTACT" field.
  DateTime? _fechaultact;
  DateTime? get fechaultact => _fechaultact;
  bool hasFechaultact() => _fechaultact != null;

  // "PORCENTAJE_A_PERCIBIR" field.
  double? _porcentajeAPercibir;
  double get porcentajeAPercibir => _porcentajeAPercibir ?? 0.0;
  bool hasPorcentajeAPercibir() => _porcentajeAPercibir != null;

  // "MOTIVODEEXENCION" field.
  int? _motivodeexencion;
  int get motivodeexencion => _motivodeexencion ?? 0;
  bool hasMotivodeexencion() => _motivodeexencion != null;

  // "DESCCLI" field.
  String? _desccli;
  String get desccli => _desccli ?? '';
  bool hasDesccli() => _desccli != null;

  // "HORAULTACT" field.
  DateTime? _horaultact;
  DateTime? get horaultact => _horaultact;
  bool hasHoraultact() => _horaultact != null;

  void _initializeFields() {
    _codigocliente = castToType<int>(snapshotData['CODIGOCLIENTE']);
    _codigopercepcion = castToType<int>(snapshotData['CODIGOPERCEPCION']);
    _nroexencion = castToType<int>(snapshotData['NROEXENCION']);
    _fechaexencion = castToType<int>(snapshotData['FECHAEXENCION']);
    _porcreduccion = castToType<double>(snapshotData['PORCREDUCCION']);
    _fechaultact = snapshotData['FECHAULTACT'] as DateTime?;
    _porcentajeAPercibir =
        castToType<double>(snapshotData['PORCENTAJE_A_PERCIBIR']);
    _motivodeexencion = castToType<int>(snapshotData['MOTIVODEEXENCION']);
    _desccli = snapshotData['DESCCLI'] as String?;
    _horaultact = snapshotData['HORAULTACT'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('mexpercli');

  static Stream<MexpercliRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MexpercliRecord.fromSnapshot(s));

  static Future<MexpercliRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MexpercliRecord.fromSnapshot(s));

  static MexpercliRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MexpercliRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MexpercliRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MexpercliRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MexpercliRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MexpercliRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMexpercliRecordData({
  int? codigocliente,
  int? codigopercepcion,
  int? nroexencion,
  int? fechaexencion,
  double? porcreduccion,
  DateTime? fechaultact,
  double? porcentajeAPercibir,
  int? motivodeexencion,
  String? desccli,
  DateTime? horaultact,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'CODIGOCLIENTE': codigocliente,
      'CODIGOPERCEPCION': codigopercepcion,
      'NROEXENCION': nroexencion,
      'FECHAEXENCION': fechaexencion,
      'PORCREDUCCION': porcreduccion,
      'FECHAULTACT': fechaultact,
      'PORCENTAJE_A_PERCIBIR': porcentajeAPercibir,
      'MOTIVODEEXENCION': motivodeexencion,
      'DESCCLI': desccli,
      'HORAULTACT': horaultact,
    }.withoutNulls,
  );

  return firestoreData;
}

class MexpercliRecordDocumentEquality implements Equality<MexpercliRecord> {
  const MexpercliRecordDocumentEquality();

  @override
  bool equals(MexpercliRecord? e1, MexpercliRecord? e2) {
    return e1?.codigocliente == e2?.codigocliente &&
        e1?.codigopercepcion == e2?.codigopercepcion &&
        e1?.nroexencion == e2?.nroexencion &&
        e1?.fechaexencion == e2?.fechaexencion &&
        e1?.porcreduccion == e2?.porcreduccion &&
        e1?.fechaultact == e2?.fechaultact &&
        e1?.porcentajeAPercibir == e2?.porcentajeAPercibir &&
        e1?.motivodeexencion == e2?.motivodeexencion &&
        e1?.desccli == e2?.desccli &&
        e1?.horaultact == e2?.horaultact;
  }

  @override
  int hash(MexpercliRecord? e) => const ListEquality().hash([
        e?.codigocliente,
        e?.codigopercepcion,
        e?.nroexencion,
        e?.fechaexencion,
        e?.porcreduccion,
        e?.fechaultact,
        e?.porcentajeAPercibir,
        e?.motivodeexencion,
        e?.desccli,
        e?.horaultact
      ]);

  @override
  bool isValidKey(Object? o) => o is MexpercliRecord;
}
