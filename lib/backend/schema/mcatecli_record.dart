import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class McatecliRecord extends FirestoreRecord {
  McatecliRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "CODCATE" field.
  String? _codcate;
  String get codcate => _codcate ?? '';
  bool hasCodcate() => _codcate != null;

  // "DESCRIPCION" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "FECHAULTACT" field.
  DateTime? _fechaultact;
  DateTime? get fechaultact => _fechaultact;
  bool hasFechaultact() => _fechaultact != null;

  void _initializeFields() {
    _codcate = snapshotData['CODCATE'] as String?;
    _descripcion = snapshotData['DESCRIPCION'] as String?;
    _fechaultact = snapshotData['FECHAULTACT'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('mcatecli');

  static Stream<McatecliRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => McatecliRecord.fromSnapshot(s));

  static Future<McatecliRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => McatecliRecord.fromSnapshot(s));

  static McatecliRecord fromSnapshot(DocumentSnapshot snapshot) =>
      McatecliRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static McatecliRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      McatecliRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'McatecliRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is McatecliRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMcatecliRecordData({
  String? codcate,
  String? descripcion,
  DateTime? fechaultact,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'CODCATE': codcate,
      'DESCRIPCION': descripcion,
      'FECHAULTACT': fechaultact,
    }.withoutNulls,
  );

  return firestoreData;
}

class McatecliRecordDocumentEquality implements Equality<McatecliRecord> {
  const McatecliRecordDocumentEquality();

  @override
  bool equals(McatecliRecord? e1, McatecliRecord? e2) {
    return e1?.codcate == e2?.codcate &&
        e1?.descripcion == e2?.descripcion &&
        e1?.fechaultact == e2?.fechaultact;
  }

  @override
  int hash(McatecliRecord? e) =>
      const ListEquality().hash([e?.codcate, e?.descripcion, e?.fechaultact]);

  @override
  bool isValidKey(Object? o) => o is McatecliRecord;
}
