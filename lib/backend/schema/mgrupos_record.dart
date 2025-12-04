import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MgruposRecord extends FirestoreRecord {
  MgruposRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "CODGRUPO" field.
  String? _codgrupo;
  String get codgrupo => _codgrupo ?? '';
  bool hasCodgrupo() => _codgrupo != null;

  // "GRUPDESC" field.
  String? _grupdesc;
  String get grupdesc => _grupdesc ?? '';
  bool hasGrupdesc() => _grupdesc != null;

  // "FECHAULTACT" field.
  DateTime? _fechaultact;
  DateTime? get fechaultact => _fechaultact;
  bool hasFechaultact() => _fechaultact != null;

  // "IMAGEGRUPO" field.
  String? _imagegrupo;
  String get imagegrupo => _imagegrupo ?? '';
  bool hasImagegrupo() => _imagegrupo != null;

  void _initializeFields() {
    _codgrupo = snapshotData['CODGRUPO'] as String?;
    _grupdesc = snapshotData['GRUPDESC'] as String?;
    _fechaultact = snapshotData['FECHAULTACT'] as DateTime?;
    _imagegrupo = snapshotData['IMAGEGRUPO'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('mgrupos');

  static Stream<MgruposRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MgruposRecord.fromSnapshot(s));

  static Future<MgruposRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MgruposRecord.fromSnapshot(s));

  static MgruposRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MgruposRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MgruposRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MgruposRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MgruposRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MgruposRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMgruposRecordData({
  String? codgrupo,
  String? grupdesc,
  DateTime? fechaultact,
  String? imagegrupo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'CODGRUPO': codgrupo,
      'GRUPDESC': grupdesc,
      'FECHAULTACT': fechaultact,
      'IMAGEGRUPO': imagegrupo,
    }.withoutNulls,
  );

  return firestoreData;
}

class MgruposRecordDocumentEquality implements Equality<MgruposRecord> {
  const MgruposRecordDocumentEquality();

  @override
  bool equals(MgruposRecord? e1, MgruposRecord? e2) {
    return e1?.codgrupo == e2?.codgrupo &&
        e1?.grupdesc == e2?.grupdesc &&
        e1?.fechaultact == e2?.fechaultact &&
        e1?.imagegrupo == e2?.imagegrupo;
  }

  @override
  int hash(MgruposRecord? e) => const ListEquality()
      .hash([e?.codgrupo, e?.grupdesc, e?.fechaultact, e?.imagegrupo]);

  @override
  bool isValidKey(Object? o) => o is MgruposRecord;
}
