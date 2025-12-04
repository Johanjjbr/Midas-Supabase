import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MsqlTemp3Record extends FirestoreRecord {
  MsqlTemp3Record._(
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
      FirebaseFirestore.instance.collection('msql_temp3');

  static Stream<MsqlTemp3Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MsqlTemp3Record.fromSnapshot(s));

  static Future<MsqlTemp3Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MsqlTemp3Record.fromSnapshot(s));

  static MsqlTemp3Record fromSnapshot(DocumentSnapshot snapshot) =>
      MsqlTemp3Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MsqlTemp3Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MsqlTemp3Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MsqlTemp3Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MsqlTemp3Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMsqlTemp3RecordData({
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

class MsqlTemp3RecordDocumentEquality implements Equality<MsqlTemp3Record> {
  const MsqlTemp3RecordDocumentEquality();

  @override
  bool equals(MsqlTemp3Record? e1, MsqlTemp3Record? e2) {
    return e1?.c1 == e2?.c1 && e1?.c2 == e2?.c2 && e1?.c3 == e2?.c3;
  }

  @override
  int hash(MsqlTemp3Record? e) =>
      const ListEquality().hash([e?.c1, e?.c2, e?.c3]);

  @override
  bool isValidKey(Object? o) => o is MsqlTemp3Record;
}
