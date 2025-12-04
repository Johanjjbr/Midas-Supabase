import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// Nota de pedidos
class MnotapedcabRecord extends FirestoreRecord {
  MnotapedcabRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "NOTAPEDID" field.
  String? _notapedid;
  String get notapedid => _notapedid ?? '';
  bool hasNotapedid() => _notapedid != null;

  // "NUMPEDIDO" field.
  int? _numpedido;
  int get numpedido => _numpedido ?? 0;
  bool hasNumpedido() => _numpedido != null;

  // "FINICIO" field.
  DateTime? _finicio;
  DateTime? get finicio => _finicio;
  bool hasFinicio() => _finicio != null;

  // "HINICIO" field.
  DateTime? _hinicio;
  DateTime? get hinicio => _hinicio;
  bool hasHinicio() => _hinicio != null;

  // "FFIN" field.
  DateTime? _ffin;
  DateTime? get ffin => _ffin;
  bool hasFfin() => _ffin != null;

  // "HFIN" field.
  DateTime? _hfin;
  DateTime? get hfin => _hfin;
  bool hasHfin() => _hfin != null;

  // "FENTREGA" field.
  DateTime? _fentrega;
  DateTime? get fentrega => _fentrega;
  bool hasFentrega() => _fentrega != null;

  // "CODVEND" field.
  int? _codvend;
  int get codvend => _codvend ?? 0;
  bool hasCodvend() => _codvend != null;

  // "CODCVTA" field.
  String? _codcvta;
  String get codcvta => _codcvta ?? '';
  bool hasCodcvta() => _codcvta != null;

  // "TOTAL" field.
  double? _total;
  double get total => _total ?? 0.0;
  bool hasTotal() => _total != null;

  // "NETO" field.
  double? _neto;
  double get neto => _neto ?? 0.0;
  bool hasNeto() => _neto != null;

  // "ITEMS" field.
  int? _items;
  int get items => _items ?? 0;
  bool hasItems() => _items != null;

  // "BONIFICACION" field.
  double? _bonificacion;
  double get bonificacion => _bonificacion ?? 0.0;
  bool hasBonificacion() => _bonificacion != null;

  // "OBSERVACIONES" field.
  String? _observaciones;
  String get observaciones => _observaciones ?? '';
  bool hasObservaciones() => _observaciones != null;

  // "MTSRECNO" field.
  String? _mtsrecno;
  String get mtsrecno => _mtsrecno ?? '';
  bool hasMtsrecno() => _mtsrecno != null;

  // "LATITUD" field.
  double? _latitud;
  double get latitud => _latitud ?? 0.0;
  bool hasLatitud() => _latitud != null;

  // "LONGITUD" field.
  double? _longitud;
  double get longitud => _longitud ?? 0.0;
  bool hasLongitud() => _longitud != null;

  // "COORDENADAS" field.
  LatLng? _coordenadas;
  LatLng? get coordenadas => _coordenadas;
  bool hasCoordenadas() => _coordenadas != null;

  // "CODCLIRef" field.
  DocumentReference? _cODCLIRef;
  DocumentReference? get cODCLIRef => _cODCLIRef;
  bool hasCODCLIRef() => _cODCLIRef != null;

  // "CODCLI" field.
  String? _codcli;
  String get codcli => _codcli ?? '';
  bool hasCodcli() => _codcli != null;

  void _initializeFields() {
    _notapedid = snapshotData['NOTAPEDID'] as String?;
    _numpedido = castToType<int>(snapshotData['NUMPEDIDO']);
    _finicio = snapshotData['FINICIO'] as DateTime?;
    _hinicio = snapshotData['HINICIO'] as DateTime?;
    _ffin = snapshotData['FFIN'] as DateTime?;
    _hfin = snapshotData['HFIN'] as DateTime?;
    _fentrega = snapshotData['FENTREGA'] as DateTime?;
    _codvend = castToType<int>(snapshotData['CODVEND']);
    _codcvta = snapshotData['CODCVTA'] as String?;
    _total = castToType<double>(snapshotData['TOTAL']);
    _neto = castToType<double>(snapshotData['NETO']);
    _items = castToType<int>(snapshotData['ITEMS']);
    _bonificacion = castToType<double>(snapshotData['BONIFICACION']);
    _observaciones = snapshotData['OBSERVACIONES'] as String?;
    _mtsrecno = snapshotData['MTSRECNO'] as String?;
    _latitud = castToType<double>(snapshotData['LATITUD']);
    _longitud = castToType<double>(snapshotData['LONGITUD']);
    _coordenadas = snapshotData['COORDENADAS'] as LatLng?;
    _cODCLIRef = snapshotData['CODCLIRef'] as DocumentReference?;
    _codcli = snapshotData['CODCLI'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('mnotapedcab');

  static Stream<MnotapedcabRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MnotapedcabRecord.fromSnapshot(s));

  static Future<MnotapedcabRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MnotapedcabRecord.fromSnapshot(s));

  static MnotapedcabRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MnotapedcabRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MnotapedcabRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MnotapedcabRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MnotapedcabRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MnotapedcabRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMnotapedcabRecordData({
  String? notapedid,
  int? numpedido,
  DateTime? finicio,
  DateTime? hinicio,
  DateTime? ffin,
  DateTime? hfin,
  DateTime? fentrega,
  int? codvend,
  String? codcvta,
  double? total,
  double? neto,
  int? items,
  double? bonificacion,
  String? observaciones,
  String? mtsrecno,
  double? latitud,
  double? longitud,
  LatLng? coordenadas,
  DocumentReference? cODCLIRef,
  String? codcli,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'NOTAPEDID': notapedid,
      'NUMPEDIDO': numpedido,
      'FINICIO': finicio,
      'HINICIO': hinicio,
      'FFIN': ffin,
      'HFIN': hfin,
      'FENTREGA': fentrega,
      'CODVEND': codvend,
      'CODCVTA': codcvta,
      'TOTAL': total,
      'NETO': neto,
      'ITEMS': items,
      'BONIFICACION': bonificacion,
      'OBSERVACIONES': observaciones,
      'MTSRECNO': mtsrecno,
      'LATITUD': latitud,
      'LONGITUD': longitud,
      'COORDENADAS': coordenadas,
      'CODCLIRef': cODCLIRef,
      'CODCLI': codcli,
    }.withoutNulls,
  );

  return firestoreData;
}

class MnotapedcabRecordDocumentEquality implements Equality<MnotapedcabRecord> {
  const MnotapedcabRecordDocumentEquality();

  @override
  bool equals(MnotapedcabRecord? e1, MnotapedcabRecord? e2) {
    return e1?.notapedid == e2?.notapedid &&
        e1?.numpedido == e2?.numpedido &&
        e1?.finicio == e2?.finicio &&
        e1?.hinicio == e2?.hinicio &&
        e1?.ffin == e2?.ffin &&
        e1?.hfin == e2?.hfin &&
        e1?.fentrega == e2?.fentrega &&
        e1?.codvend == e2?.codvend &&
        e1?.codcvta == e2?.codcvta &&
        e1?.total == e2?.total &&
        e1?.neto == e2?.neto &&
        e1?.items == e2?.items &&
        e1?.bonificacion == e2?.bonificacion &&
        e1?.observaciones == e2?.observaciones &&
        e1?.mtsrecno == e2?.mtsrecno &&
        e1?.latitud == e2?.latitud &&
        e1?.longitud == e2?.longitud &&
        e1?.coordenadas == e2?.coordenadas &&
        e1?.cODCLIRef == e2?.cODCLIRef &&
        e1?.codcli == e2?.codcli;
  }

  @override
  int hash(MnotapedcabRecord? e) => const ListEquality().hash([
        e?.notapedid,
        e?.numpedido,
        e?.finicio,
        e?.hinicio,
        e?.ffin,
        e?.hfin,
        e?.fentrega,
        e?.codvend,
        e?.codcvta,
        e?.total,
        e?.neto,
        e?.items,
        e?.bonificacion,
        e?.observaciones,
        e?.mtsrecno,
        e?.latitud,
        e?.longitud,
        e?.coordenadas,
        e?.cODCLIRef,
        e?.codcli
      ]);

  @override
  bool isValidKey(Object? o) => o is MnotapedcabRecord;
}
