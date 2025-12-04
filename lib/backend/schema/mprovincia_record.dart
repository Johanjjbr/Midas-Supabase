import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MprovinciaRecord extends FirestoreRecord {
  MprovinciaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "CODPCIA" field.
  String? _codpcia;
  String get codpcia => _codpcia ?? '';
  bool hasCodpcia() => _codpcia != null;

  // "NOMPCIA" field.
  String? _nompcia;
  String get nompcia => _nompcia ?? '';
  bool hasNompcia() => _nompcia != null;

  // "FECHAULTACT" field.
  DateTime? _fechaultact;
  DateTime? get fechaultact => _fechaultact;
  bool hasFechaultact() => _fechaultact != null;

  void _initializeFields() {
    _codpcia = snapshotData['CODPCIA'] as String?;
    _nompcia = snapshotData['NOMPCIA'] as String?;
    _fechaultact = snapshotData['FECHAULTACT'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('mprovincia');

  static Stream<MprovinciaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MprovinciaRecord.fromSnapshot(s));

  static Future<MprovinciaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MprovinciaRecord.fromSnapshot(s));

  static MprovinciaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MprovinciaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MprovinciaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MprovinciaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MprovinciaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MprovinciaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMprovinciaRecordData({
  String? codpcia,
  String? nompcia,
  DateTime? fechaultact,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'CODPCIA': codpcia,
      'NOMPCIA': nompcia,
      'FECHAULTACT': fechaultact,
    }.withoutNulls,
  );

  return firestoreData;
}

class MprovinciaRecordDocumentEquality implements Equality<MprovinciaRecord> {
  const MprovinciaRecordDocumentEquality();

  @override
  bool equals(MprovinciaRecord? e1, MprovinciaRecord? e2) {
    return e1?.codpcia == e2?.codpcia &&
        e1?.nompcia == e2?.nompcia &&
        e1?.fechaultact == e2?.fechaultact;
  }

  @override
  int hash(MprovinciaRecord? e) =>
      const ListEquality().hash([e?.codpcia, e?.nompcia, e?.fechaultact]);

  @override
  bool isValidKey(Object? o) => o is MprovinciaRecord;
}
