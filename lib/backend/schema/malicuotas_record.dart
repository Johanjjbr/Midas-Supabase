import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MalicuotasRecord extends FirestoreRecord {
  MalicuotasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "CODALIC" field.
  String? _codalic;
  String get codalic => _codalic ?? '';
  bool hasCodalic() => _codalic != null;

  // "ALICDESC" field.
  String? _alicdesc;
  String get alicdesc => _alicdesc ?? '';
  bool hasAlicdesc() => _alicdesc != null;

  // "RESPTRIB" field.
  String? _resptrib;
  String get resptrib => _resptrib ?? '';
  bool hasResptrib() => _resptrib != null;

  // "DESCRTRIB" field.
  String? _descrtrib;
  String get descrtrib => _descrtrib ?? '';
  bool hasDescrtrib() => _descrtrib != null;

  // "IVA1" field.
  double? _iva1;
  double get iva1 => _iva1 ?? 0.0;
  bool hasIva1() => _iva1 != null;

  // "IVA2" field.
  double? _iva2;
  double get iva2 => _iva2 ?? 0.0;
  bool hasIva2() => _iva2 != null;

  void _initializeFields() {
    _codalic = snapshotData['CODALIC'] as String?;
    _alicdesc = snapshotData['ALICDESC'] as String?;
    _resptrib = snapshotData['RESPTRIB'] as String?;
    _descrtrib = snapshotData['DESCRTRIB'] as String?;
    _iva1 = castToType<double>(snapshotData['IVA1']);
    _iva2 = castToType<double>(snapshotData['IVA2']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('malicuotas');

  static Stream<MalicuotasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MalicuotasRecord.fromSnapshot(s));

  static Future<MalicuotasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MalicuotasRecord.fromSnapshot(s));

  static MalicuotasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MalicuotasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MalicuotasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MalicuotasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MalicuotasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MalicuotasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMalicuotasRecordData({
  String? codalic,
  String? alicdesc,
  String? resptrib,
  String? descrtrib,
  double? iva1,
  double? iva2,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'CODALIC': codalic,
      'ALICDESC': alicdesc,
      'RESPTRIB': resptrib,
      'DESCRTRIB': descrtrib,
      'IVA1': iva1,
      'IVA2': iva2,
    }.withoutNulls,
  );

  return firestoreData;
}

class MalicuotasRecordDocumentEquality implements Equality<MalicuotasRecord> {
  const MalicuotasRecordDocumentEquality();

  @override
  bool equals(MalicuotasRecord? e1, MalicuotasRecord? e2) {
    return e1?.codalic == e2?.codalic &&
        e1?.alicdesc == e2?.alicdesc &&
        e1?.resptrib == e2?.resptrib &&
        e1?.descrtrib == e2?.descrtrib &&
        e1?.iva1 == e2?.iva1 &&
        e1?.iva2 == e2?.iva2;
  }

  @override
  int hash(MalicuotasRecord? e) => const ListEquality().hash(
      [e?.codalic, e?.alicdesc, e?.resptrib, e?.descrtrib, e?.iva1, e?.iva2]);

  @override
  bool isValidKey(Object? o) => o is MalicuotasRecord;
}
