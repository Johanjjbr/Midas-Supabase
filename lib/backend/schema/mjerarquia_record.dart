import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MjerarquiaRecord extends FirestoreRecord {
  MjerarquiaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "CODIGOPADRE" field.
  int? _codigopadre;
  int get codigopadre => _codigopadre ?? 0;
  bool hasCodigopadre() => _codigopadre != null;

  // "NIVEL" field.
  int? _nivel;
  int get nivel => _nivel ?? 0;
  bool hasNivel() => _nivel != null;

  // "CODIGOHIJO" field.
  int? _codigohijo;
  int get codigohijo => _codigohijo ?? 0;
  bool hasCodigohijo() => _codigohijo != null;

  // "FECHAULTACT" field.
  DateTime? _fechaultact;
  DateTime? get fechaultact => _fechaultact;
  bool hasFechaultact() => _fechaultact != null;

  void _initializeFields() {
    _codigopadre = castToType<int>(snapshotData['CODIGOPADRE']);
    _nivel = castToType<int>(snapshotData['NIVEL']);
    _codigohijo = castToType<int>(snapshotData['CODIGOHIJO']);
    _fechaultact = snapshotData['FECHAULTACT'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('mjerarquia');

  static Stream<MjerarquiaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MjerarquiaRecord.fromSnapshot(s));

  static Future<MjerarquiaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MjerarquiaRecord.fromSnapshot(s));

  static MjerarquiaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MjerarquiaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MjerarquiaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MjerarquiaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MjerarquiaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MjerarquiaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMjerarquiaRecordData({
  int? codigopadre,
  int? nivel,
  int? codigohijo,
  DateTime? fechaultact,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'CODIGOPADRE': codigopadre,
      'NIVEL': nivel,
      'CODIGOHIJO': codigohijo,
      'FECHAULTACT': fechaultact,
    }.withoutNulls,
  );

  return firestoreData;
}

class MjerarquiaRecordDocumentEquality implements Equality<MjerarquiaRecord> {
  const MjerarquiaRecordDocumentEquality();

  @override
  bool equals(MjerarquiaRecord? e1, MjerarquiaRecord? e2) {
    return e1?.codigopadre == e2?.codigopadre &&
        e1?.nivel == e2?.nivel &&
        e1?.codigohijo == e2?.codigohijo &&
        e1?.fechaultact == e2?.fechaultact;
  }

  @override
  int hash(MjerarquiaRecord? e) => const ListEquality()
      .hash([e?.codigopadre, e?.nivel, e?.codigohijo, e?.fechaultact]);

  @override
  bool isValidKey(Object? o) => o is MjerarquiaRecord;
}
