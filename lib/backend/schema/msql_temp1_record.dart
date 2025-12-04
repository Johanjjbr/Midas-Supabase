import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MsqlTemp1Record extends FirestoreRecord {
  MsqlTemp1Record._(
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

  void _initializeFields() {
    _c1 = snapshotData['C1'] as String?;
    _c2 = snapshotData['C2'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('msql_temp1');

  static Stream<MsqlTemp1Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MsqlTemp1Record.fromSnapshot(s));

  static Future<MsqlTemp1Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MsqlTemp1Record.fromSnapshot(s));

  static MsqlTemp1Record fromSnapshot(DocumentSnapshot snapshot) =>
      MsqlTemp1Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MsqlTemp1Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MsqlTemp1Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MsqlTemp1Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MsqlTemp1Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMsqlTemp1RecordData({
  String? c1,
  String? c2,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'C1': c1,
      'C2': c2,
    }.withoutNulls,
  );

  return firestoreData;
}

class MsqlTemp1RecordDocumentEquality implements Equality<MsqlTemp1Record> {
  const MsqlTemp1RecordDocumentEquality();

  @override
  bool equals(MsqlTemp1Record? e1, MsqlTemp1Record? e2) {
    return e1?.c1 == e2?.c1 && e1?.c2 == e2?.c2;
  }

  @override
  int hash(MsqlTemp1Record? e) => const ListEquality().hash([e?.c1, e?.c2]);

  @override
  bool isValidKey(Object? o) => o is MsqlTemp1Record;
}
