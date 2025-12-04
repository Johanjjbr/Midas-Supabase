import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MlistacabeRecord extends FirestoreRecord {
  MlistacabeRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "CODLISTA" field.
  String? _codlista;
  String get codlista => _codlista ?? '';
  bool hasCodlista() => _codlista != null;

  // "LISTADESCRIP" field.
  String? _listadescrip;
  String get listadescrip => _listadescrip ?? '';
  bool hasListadescrip() => _listadescrip != null;

  // "OBSLISTA" field.
  String? _obslista;
  String get obslista => _obslista ?? '';
  bool hasObslista() => _obslista != null;

  // "ESTADO" field.
  String? _estado;
  String get estado => _estado ?? '';
  bool hasEstado() => _estado != null;

  // "VIGENTEDESDE" field.
  DateTime? _vigentedesde;
  DateTime? get vigentedesde => _vigentedesde;
  bool hasVigentedesde() => _vigentedesde != null;

  // "VIGENTEHASTA" field.
  DateTime? _vigentehasta;
  DateTime? get vigentehasta => _vigentehasta;
  bool hasVigentehasta() => _vigentehasta != null;

  // "FECHAULTACT" field.
  DateTime? _fechaultact;
  DateTime? get fechaultact => _fechaultact;
  bool hasFechaultact() => _fechaultact != null;

  void _initializeFields() {
    _codlista = snapshotData['CODLISTA'] as String?;
    _listadescrip = snapshotData['LISTADESCRIP'] as String?;
    _obslista = snapshotData['OBSLISTA'] as String?;
    _estado = snapshotData['ESTADO'] as String?;
    _vigentedesde = snapshotData['VIGENTEDESDE'] as DateTime?;
    _vigentehasta = snapshotData['VIGENTEHASTA'] as DateTime?;
    _fechaultact = snapshotData['FECHAULTACT'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('mlistacabe');

  static Stream<MlistacabeRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MlistacabeRecord.fromSnapshot(s));

  static Future<MlistacabeRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MlistacabeRecord.fromSnapshot(s));

  static MlistacabeRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MlistacabeRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MlistacabeRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MlistacabeRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MlistacabeRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MlistacabeRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMlistacabeRecordData({
  String? codlista,
  String? listadescrip,
  String? obslista,
  String? estado,
  DateTime? vigentedesde,
  DateTime? vigentehasta,
  DateTime? fechaultact,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'CODLISTA': codlista,
      'LISTADESCRIP': listadescrip,
      'OBSLISTA': obslista,
      'ESTADO': estado,
      'VIGENTEDESDE': vigentedesde,
      'VIGENTEHASTA': vigentehasta,
      'FECHAULTACT': fechaultact,
    }.withoutNulls,
  );

  return firestoreData;
}

class MlistacabeRecordDocumentEquality implements Equality<MlistacabeRecord> {
  const MlistacabeRecordDocumentEquality();

  @override
  bool equals(MlistacabeRecord? e1, MlistacabeRecord? e2) {
    return e1?.codlista == e2?.codlista &&
        e1?.listadescrip == e2?.listadescrip &&
        e1?.obslista == e2?.obslista &&
        e1?.estado == e2?.estado &&
        e1?.vigentedesde == e2?.vigentedesde &&
        e1?.vigentehasta == e2?.vigentehasta &&
        e1?.fechaultact == e2?.fechaultact;
  }

  @override
  int hash(MlistacabeRecord? e) => const ListEquality().hash([
        e?.codlista,
        e?.listadescrip,
        e?.obslista,
        e?.estado,
        e?.vigentedesde,
        e?.vigentehasta,
        e?.fechaultact
      ]);

  @override
  bool isValidKey(Object? o) => o is MlistacabeRecord;
}
