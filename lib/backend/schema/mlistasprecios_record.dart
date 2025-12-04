import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MlistaspreciosRecord extends FirestoreRecord {
  MlistaspreciosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "CODLISTA" field.
  String? _codlista;
  String get codlista => _codlista ?? '';
  bool hasCodlista() => _codlista != null;

  // "CODARTI" field.
  String? _codarti;
  String get codarti => _codarti ?? '';
  bool hasCodarti() => _codarti != null;

  // "DESCRIPART" field.
  String? _descripart;
  String get descripart => _descripart ?? '';
  bool hasDescripart() => _descripart != null;

  // "FECHAULTACT" field.
  DateTime? _fechaultact;
  DateTime? get fechaultact => _fechaultact;
  bool hasFechaultact() => _fechaultact != null;

  // "IMPORTE" field.
  double? _importe;
  double get importe => _importe ?? 0.0;
  bool hasImporte() => _importe != null;

  // "IVA" field.
  double? _iva;
  double get iva => _iva ?? 0.0;
  bool hasIva() => _iva != null;

  void _initializeFields() {
    _codlista = snapshotData['CODLISTA'] as String?;
    _codarti = snapshotData['CODARTI'] as String?;
    _descripart = snapshotData['DESCRIPART'] as String?;
    _fechaultact = snapshotData['FECHAULTACT'] as DateTime?;
    _importe = castToType<double>(snapshotData['IMPORTE']);
    _iva = castToType<double>(snapshotData['IVA']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('mlistasprecios');

  static Stream<MlistaspreciosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MlistaspreciosRecord.fromSnapshot(s));

  static Future<MlistaspreciosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MlistaspreciosRecord.fromSnapshot(s));

  static MlistaspreciosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MlistaspreciosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MlistaspreciosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MlistaspreciosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MlistaspreciosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MlistaspreciosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMlistaspreciosRecordData({
  String? codlista,
  String? codarti,
  String? descripart,
  DateTime? fechaultact,
  double? importe,
  double? iva,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'CODLISTA': codlista,
      'CODARTI': codarti,
      'DESCRIPART': descripart,
      'FECHAULTACT': fechaultact,
      'IMPORTE': importe,
      'IVA': iva,
    }.withoutNulls,
  );

  return firestoreData;
}

class MlistaspreciosRecordDocumentEquality
    implements Equality<MlistaspreciosRecord> {
  const MlistaspreciosRecordDocumentEquality();

  @override
  bool equals(MlistaspreciosRecord? e1, MlistaspreciosRecord? e2) {
    return e1?.codlista == e2?.codlista &&
        e1?.codarti == e2?.codarti &&
        e1?.descripart == e2?.descripart &&
        e1?.fechaultact == e2?.fechaultact &&
        e1?.importe == e2?.importe &&
        e1?.iva == e2?.iva;
  }

  @override
  int hash(MlistaspreciosRecord? e) => const ListEquality().hash([
        e?.codlista,
        e?.codarti,
        e?.descripart,
        e?.fechaultact,
        e?.importe,
        e?.iva
      ]);

  @override
  bool isValidKey(Object? o) => o is MlistaspreciosRecord;
}
