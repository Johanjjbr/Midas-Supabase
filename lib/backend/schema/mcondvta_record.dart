import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class McondvtaRecord extends FirestoreRecord {
  McondvtaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "CODCVTA" field.
  String? _codcvta;
  String get codcvta => _codcvta ?? '';
  bool hasCodcvta() => _codcvta != null;

  // "CVTADESCRIP" field.
  String? _cvtadescrip;
  String get cvtadescrip => _cvtadescrip ?? '';
  bool hasCvtadescrip() => _cvtadescrip != null;

  // "CODTCOBROASOC" field.
  String? _codtcobroasoc;
  String get codtcobroasoc => _codtcobroasoc ?? '';
  bool hasCodtcobroasoc() => _codtcobroasoc != null;

  // "INACTIVA" field.
  String? _inactiva;
  String get inactiva => _inactiva ?? '';
  bool hasInactiva() => _inactiva != null;

  // "FECHAULTACT" field.
  DateTime? _fechaultact;
  DateTime? get fechaultact => _fechaultact;
  bool hasFechaultact() => _fechaultact != null;

  void _initializeFields() {
    _codcvta = snapshotData['CODCVTA'] as String?;
    _cvtadescrip = snapshotData['CVTADESCRIP'] as String?;
    _codtcobroasoc = snapshotData['CODTCOBROASOC'] as String?;
    _inactiva = snapshotData['INACTIVA'] as String?;
    _fechaultact = snapshotData['FECHAULTACT'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('mcondvta');

  static Stream<McondvtaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => McondvtaRecord.fromSnapshot(s));

  static Future<McondvtaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => McondvtaRecord.fromSnapshot(s));

  static McondvtaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      McondvtaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static McondvtaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      McondvtaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'McondvtaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is McondvtaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMcondvtaRecordData({
  String? codcvta,
  String? cvtadescrip,
  String? codtcobroasoc,
  String? inactiva,
  DateTime? fechaultact,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'CODCVTA': codcvta,
      'CVTADESCRIP': cvtadescrip,
      'CODTCOBROASOC': codtcobroasoc,
      'INACTIVA': inactiva,
      'FECHAULTACT': fechaultact,
    }.withoutNulls,
  );

  return firestoreData;
}

class McondvtaRecordDocumentEquality implements Equality<McondvtaRecord> {
  const McondvtaRecordDocumentEquality();

  @override
  bool equals(McondvtaRecord? e1, McondvtaRecord? e2) {
    return e1?.codcvta == e2?.codcvta &&
        e1?.cvtadescrip == e2?.cvtadescrip &&
        e1?.codtcobroasoc == e2?.codtcobroasoc &&
        e1?.inactiva == e2?.inactiva &&
        e1?.fechaultact == e2?.fechaultact;
  }

  @override
  int hash(McondvtaRecord? e) => const ListEquality().hash([
        e?.codcvta,
        e?.cvtadescrip,
        e?.codtcobroasoc,
        e?.inactiva,
        e?.fechaultact
      ]);

  @override
  bool isValidKey(Object? o) => o is McondvtaRecord;
}
