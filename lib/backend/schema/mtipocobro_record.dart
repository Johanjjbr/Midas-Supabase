import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MtipocobroRecord extends FirestoreRecord {
  MtipocobroRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "CODTCOBRO" field.
  String? _codtcobro;
  String get codtcobro => _codtcobro ?? '';
  bool hasCodtcobro() => _codtcobro != null;

  // "TCOBRODESCRIP" field.
  String? _tcobrodescrip;
  String get tcobrodescrip => _tcobrodescrip ?? '';
  bool hasTcobrodescrip() => _tcobrodescrip != null;

  // "HABILITADO" field.
  String? _habilitado;
  String get habilitado => _habilitado ?? '';
  bool hasHabilitado() => _habilitado != null;

  // "TIPO" field.
  String? _tipo;
  String get tipo => _tipo ?? '';
  bool hasTipo() => _tipo != null;

  // "FECHAULTACT" field.
  DateTime? _fechaultact;
  DateTime? get fechaultact => _fechaultact;
  bool hasFechaultact() => _fechaultact != null;

  void _initializeFields() {
    _codtcobro = snapshotData['CODTCOBRO'] as String?;
    _tcobrodescrip = snapshotData['TCOBRODESCRIP'] as String?;
    _habilitado = snapshotData['HABILITADO'] as String?;
    _tipo = snapshotData['TIPO'] as String?;
    _fechaultact = snapshotData['FECHAULTACT'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('mtipocobro');

  static Stream<MtipocobroRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MtipocobroRecord.fromSnapshot(s));

  static Future<MtipocobroRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MtipocobroRecord.fromSnapshot(s));

  static MtipocobroRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MtipocobroRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MtipocobroRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MtipocobroRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MtipocobroRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MtipocobroRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMtipocobroRecordData({
  String? codtcobro,
  String? tcobrodescrip,
  String? habilitado,
  String? tipo,
  DateTime? fechaultact,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'CODTCOBRO': codtcobro,
      'TCOBRODESCRIP': tcobrodescrip,
      'HABILITADO': habilitado,
      'TIPO': tipo,
      'FECHAULTACT': fechaultact,
    }.withoutNulls,
  );

  return firestoreData;
}

class MtipocobroRecordDocumentEquality implements Equality<MtipocobroRecord> {
  const MtipocobroRecordDocumentEquality();

  @override
  bool equals(MtipocobroRecord? e1, MtipocobroRecord? e2) {
    return e1?.codtcobro == e2?.codtcobro &&
        e1?.tcobrodescrip == e2?.tcobrodescrip &&
        e1?.habilitado == e2?.habilitado &&
        e1?.tipo == e2?.tipo &&
        e1?.fechaultact == e2?.fechaultact;
  }

  @override
  int hash(MtipocobroRecord? e) => const ListEquality().hash(
      [e?.codtcobro, e?.tcobrodescrip, e?.habilitado, e?.tipo, e?.fechaultact]);

  @override
  bool isValidKey(Object? o) => o is MtipocobroRecord;
}
