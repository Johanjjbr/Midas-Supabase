import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MmstockRecord extends FirestoreRecord {
  MmstockRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "CODARTI" field.
  String? _codarti;
  String get codarti => _codarti ?? '';
  bool hasCodarti() => _codarti != null;

  // "CODDEPO" field.
  String? _coddepo;
  String get coddepo => _coddepo ?? '';
  bool hasCoddepo() => _coddepo != null;

  // "CANTSTOCK" field.
  double? _cantstock;
  double get cantstock => _cantstock ?? 0.0;
  bool hasCantstock() => _cantstock != null;

  // "FECHAULTACT" field.
  DateTime? _fechaultact;
  DateTime? get fechaultact => _fechaultact;
  bool hasFechaultact() => _fechaultact != null;

  // "CODARTICULOS" field.
  DocumentReference? _codarticulos;
  DocumentReference? get codarticulos => _codarticulos;
  bool hasCodarticulos() => _codarticulos != null;

  void _initializeFields() {
    _codarti = snapshotData['CODARTI'] as String?;
    _coddepo = snapshotData['CODDEPO'] as String?;
    _cantstock = castToType<double>(snapshotData['CANTSTOCK']);
    _fechaultact = snapshotData['FECHAULTACT'] as DateTime?;
    _codarticulos = snapshotData['CODARTICULOS'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('mmstock');

  static Stream<MmstockRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MmstockRecord.fromSnapshot(s));

  static Future<MmstockRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MmstockRecord.fromSnapshot(s));

  static MmstockRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MmstockRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MmstockRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MmstockRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MmstockRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MmstockRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMmstockRecordData({
  String? codarti,
  String? coddepo,
  double? cantstock,
  DateTime? fechaultact,
  DocumentReference? codarticulos,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'CODARTI': codarti,
      'CODDEPO': coddepo,
      'CANTSTOCK': cantstock,
      'FECHAULTACT': fechaultact,
      'CODARTICULOS': codarticulos,
    }.withoutNulls,
  );

  return firestoreData;
}

class MmstockRecordDocumentEquality implements Equality<MmstockRecord> {
  const MmstockRecordDocumentEquality();

  @override
  bool equals(MmstockRecord? e1, MmstockRecord? e2) {
    return e1?.codarti == e2?.codarti &&
        e1?.coddepo == e2?.coddepo &&
        e1?.cantstock == e2?.cantstock &&
        e1?.fechaultact == e2?.fechaultact &&
        e1?.codarticulos == e2?.codarticulos;
  }

  @override
  int hash(MmstockRecord? e) => const ListEquality().hash(
      [e?.codarti, e?.coddepo, e?.cantstock, e?.fechaultact, e?.codarticulos]);

  @override
  bool isValidKey(Object? o) => o is MmstockRecord;
}
