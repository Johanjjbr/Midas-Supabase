import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MmonedasRecord extends FirestoreRecord {
  MmonedasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "CODMONE" field.
  String? _codmone;
  String get codmone => _codmone ?? '';
  bool hasCodmone() => _codmone != null;

  // "MONEDESCRIP" field.
  String? _monedescrip;
  String get monedescrip => _monedescrip ?? '';
  bool hasMonedescrip() => _monedescrip != null;

  // "VALMONE" field.
  double? _valmone;
  double get valmone => _valmone ?? 0.0;
  bool hasValmone() => _valmone != null;

  // "FECHAULTACT" field.
  DateTime? _fechaultact;
  DateTime? get fechaultact => _fechaultact;
  bool hasFechaultact() => _fechaultact != null;

  void _initializeFields() {
    _codmone = snapshotData['CODMONE'] as String?;
    _monedescrip = snapshotData['MONEDESCRIP'] as String?;
    _valmone = castToType<double>(snapshotData['VALMONE']);
    _fechaultact = snapshotData['FECHAULTACT'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('mmonedas');

  static Stream<MmonedasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MmonedasRecord.fromSnapshot(s));

  static Future<MmonedasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MmonedasRecord.fromSnapshot(s));

  static MmonedasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MmonedasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MmonedasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MmonedasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MmonedasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MmonedasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMmonedasRecordData({
  String? codmone,
  String? monedescrip,
  double? valmone,
  DateTime? fechaultact,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'CODMONE': codmone,
      'MONEDESCRIP': monedescrip,
      'VALMONE': valmone,
      'FECHAULTACT': fechaultact,
    }.withoutNulls,
  );

  return firestoreData;
}

class MmonedasRecordDocumentEquality implements Equality<MmonedasRecord> {
  const MmonedasRecordDocumentEquality();

  @override
  bool equals(MmonedasRecord? e1, MmonedasRecord? e2) {
    return e1?.codmone == e2?.codmone &&
        e1?.monedescrip == e2?.monedescrip &&
        e1?.valmone == e2?.valmone &&
        e1?.fechaultact == e2?.fechaultact;
  }

  @override
  int hash(MmonedasRecord? e) => const ListEquality()
      .hash([e?.codmone, e?.monedescrip, e?.valmone, e?.fechaultact]);

  @override
  bool isValidKey(Object? o) => o is MmonedasRecord;
}
