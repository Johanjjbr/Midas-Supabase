import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MmarcasRecord extends FirestoreRecord {
  MmarcasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "CODMARCA" field.
  String? _codmarca;
  String get codmarca => _codmarca ?? '';
  bool hasCodmarca() => _codmarca != null;

  // "DESCRIPMARCA" field.
  String? _descripmarca;
  String get descripmarca => _descripmarca ?? '';
  bool hasDescripmarca() => _descripmarca != null;

  // "FECHAULTACT" field.
  DateTime? _fechaultact;
  DateTime? get fechaultact => _fechaultact;
  bool hasFechaultact() => _fechaultact != null;

  void _initializeFields() {
    _codmarca = snapshotData['CODMARCA'] as String?;
    _descripmarca = snapshotData['DESCRIPMARCA'] as String?;
    _fechaultact = snapshotData['FECHAULTACT'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('mmarcas');

  static Stream<MmarcasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MmarcasRecord.fromSnapshot(s));

  static Future<MmarcasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MmarcasRecord.fromSnapshot(s));

  static MmarcasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MmarcasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MmarcasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MmarcasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MmarcasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MmarcasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMmarcasRecordData({
  String? codmarca,
  String? descripmarca,
  DateTime? fechaultact,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'CODMARCA': codmarca,
      'DESCRIPMARCA': descripmarca,
      'FECHAULTACT': fechaultact,
    }.withoutNulls,
  );

  return firestoreData;
}

class MmarcasRecordDocumentEquality implements Equality<MmarcasRecord> {
  const MmarcasRecordDocumentEquality();

  @override
  bool equals(MmarcasRecord? e1, MmarcasRecord? e2) {
    return e1?.codmarca == e2?.codmarca &&
        e1?.descripmarca == e2?.descripmarca &&
        e1?.fechaultact == e2?.fechaultact;
  }

  @override
  int hash(MmarcasRecord? e) =>
      const ListEquality().hash([e?.codmarca, e?.descripmarca, e?.fechaultact]);

  @override
  bool isValidKey(Object? o) => o is MmarcasRecord;
}
