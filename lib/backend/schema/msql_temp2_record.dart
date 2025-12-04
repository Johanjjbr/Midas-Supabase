import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MsqlTemp2Record extends FirestoreRecord {
  MsqlTemp2Record._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "C1" field.
  String? _c1;
  String get c1 => _c1 ?? '';
  bool hasC1() => _c1 != null;

  // "C2" field.
  String? _c2;
  String get c2 => _c2 ?? '';
  bool hasC2() => _c2 != null;

  // "C3" field.
  String? _c3;
  String get c3 => _c3 ?? '';
  bool hasC3() => _c3 != null;

  void _initializeFields() {
    _c1 = snapshotData['C1'] as String?;
    _c2 = snapshotData['C2'] as String?;
    _c3 = snapshotData['C3'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('msql_temp2');

  static Stream<MsqlTemp2Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MsqlTemp2Record.fromSnapshot(s));

  static Future<MsqlTemp2Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MsqlTemp2Record.fromSnapshot(s));

  static MsqlTemp2Record fromSnapshot(DocumentSnapshot snapshot) =>
      MsqlTemp2Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MsqlTemp2Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MsqlTemp2Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MsqlTemp2Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MsqlTemp2Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMsqlTemp2RecordData({
  String? c1,
  String? c2,
  String? c3,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'C1': c1,
      'C2': c2,
      'C3': c3,
    }.withoutNulls,
  );

  return firestoreData;
}

class MsqlTemp2RecordDocumentEquality implements Equality<MsqlTemp2Record> {
  const MsqlTemp2RecordDocumentEquality();

  @override
  bool equals(MsqlTemp2Record? e1, MsqlTemp2Record? e2) {
    return e1?.c1 == e2?.c1 && e1?.c2 == e2?.c2 && e1?.c3 == e2?.c3;
  }

  @override
  int hash(MsqlTemp2Record? e) =>
      const ListEquality().hash([e?.c1, e?.c2, e?.c3]);

  @override
  bool isValidKey(Object? o) => o is MsqlTemp2Record;
}
