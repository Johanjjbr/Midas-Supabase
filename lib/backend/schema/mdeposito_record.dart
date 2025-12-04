import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MdepositoRecord extends FirestoreRecord {
  MdepositoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "CODDEPO" field.
  String? _coddepo;
  String get coddepo => _coddepo ?? '';
  bool hasCoddepo() => _coddepo != null;

  // "DEPODESCRIP" field.
  String? _depodescrip;
  String get depodescrip => _depodescrip ?? '';
  bool hasDepodescrip() => _depodescrip != null;

  // "PREFIJO" field.
  String? _prefijo;
  String get prefijo => _prefijo ?? '';
  bool hasPrefijo() => _prefijo != null;

  // "FECHAULTACT" field.
  DateTime? _fechaultact;
  DateTime? get fechaultact => _fechaultact;
  bool hasFechaultact() => _fechaultact != null;

  // "CODDEPOTCODDEPOZ" field.
  DateTime? _coddepotcoddepoz;
  DateTime? get coddepotcoddepoz => _coddepotcoddepoz;
  bool hasCoddepotcoddepoz() => _coddepotcoddepoz != null;

  void _initializeFields() {
    _coddepo = snapshotData['CODDEPO'] as String?;
    _depodescrip = snapshotData['DEPODESCRIP'] as String?;
    _prefijo = snapshotData['PREFIJO'] as String?;
    _fechaultact = snapshotData['FECHAULTACT'] as DateTime?;
    _coddepotcoddepoz = snapshotData['CODDEPOTCODDEPOZ'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('mdeposito');

  static Stream<MdepositoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MdepositoRecord.fromSnapshot(s));

  static Future<MdepositoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MdepositoRecord.fromSnapshot(s));

  static MdepositoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MdepositoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MdepositoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MdepositoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MdepositoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MdepositoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMdepositoRecordData({
  String? coddepo,
  String? depodescrip,
  String? prefijo,
  DateTime? fechaultact,
  DateTime? coddepotcoddepoz,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'CODDEPO': coddepo,
      'DEPODESCRIP': depodescrip,
      'PREFIJO': prefijo,
      'FECHAULTACT': fechaultact,
      'CODDEPOTCODDEPOZ': coddepotcoddepoz,
    }.withoutNulls,
  );

  return firestoreData;
}

class MdepositoRecordDocumentEquality implements Equality<MdepositoRecord> {
  const MdepositoRecordDocumentEquality();

  @override
  bool equals(MdepositoRecord? e1, MdepositoRecord? e2) {
    return e1?.coddepo == e2?.coddepo &&
        e1?.depodescrip == e2?.depodescrip &&
        e1?.prefijo == e2?.prefijo &&
        e1?.fechaultact == e2?.fechaultact &&
        e1?.coddepotcoddepoz == e2?.coddepotcoddepoz;
  }

  @override
  int hash(MdepositoRecord? e) => const ListEquality().hash([
        e?.coddepo,
        e?.depodescrip,
        e?.prefijo,
        e?.fechaultact,
        e?.coddepotcoddepoz
      ]);

  @override
  bool isValidKey(Object? o) => o is MdepositoRecord;
}
